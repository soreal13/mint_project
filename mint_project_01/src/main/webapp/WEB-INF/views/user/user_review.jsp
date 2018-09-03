<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글목록보기</title>
<script type="text/javascript">
   
   //여러글 삭제시 체크박스 유효값 처리 (체크가 하나라도 되어 있어야 삭제 실행)\
   $(function(){
      //ajax처리
      $("table td>a").hover(function(){
         //         a     td     td      td
         var seq=$(this).parent().prev().prev().text();
         $.ajax({
            url:"contentAjax.do",
            data:"seq="+seq,
            dataType:"json",
            type:"post",
            success:function(obj){
               var dto=obj["dto"];
               $("textarea[name=testAjax]").val(dto["content"]);
            },
            error:function(){
               alert("서버통신실패!!");
            }
         });
      },function(){
         $("textarea[name=testAjax]").val("");
      });
      
      
      $("#container > form").submit(function(){
         var bool=false;
         
         $("input[name=chk]").each(function(){
            if($(this).prop("checked")){
               bool=true;
               return;
            }
         });//each:chk인 체크박스가 모두 체크안되어 있는지 여부
         
         if(!bool){
            alert("최소하나이상 체크해주세요.");
         }
         return bool;
      });//submit
      
   //삭제된 글에 해당하는 체크박스 비활성화
   $(".delboard").each(function(){
      //핵심탐색기법: tree탐색 --> 부모의 자식에 형제에 자식의 엘리먼트를 구하는
      $(this).parent("tr").children().eq(0).find("input").attr("disabled","disabled");
      });   
      //답변형을 위한 속성 refer, step, depth, delflag를 감추는 기능
      $("#container > h1> small").click(function(){
         $("th").slice(6,10).toggle();
         $("tr").each(function(){
            $(this).children("td").slice(6,10).toggle();
         });
      });
   });
   
   

   //전체선택 체크박스 기능
   function allsel(bool){ 
      $("input[name=chk]").prop("checked",bool);
   }
</script>
<style type="text/css">
   input[type=checkbox]{width: 15px; height: 15px;}
   textarea[name=testAjax] {
   position: fixed;
   left: 50px; top: 800px;
   border-radius: 10px;
}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<!-- 객체생성과 마찬가지 -->
<div id="container">
<h1>한줄평 모아보기</h1>
<form action="delRiview.do" method="post">

   <table class="table table-striped" border="2">
      <col width="100px" />
      <col width="400px" />
      <col width="500px" />
      <col width="100px" />
      <col width="100px" />
      <tr>
         <th>삭제<input type="checkbox" name="all" onclick="allSel(this.checked)"/></th>
         <th>제목</th>
         <th>한줄평 내용</th>
         <th>작성일</th>
         <th>공감</th>
      </tr>
<!--       ifelse기능을하는 choose -> choose, when, otherwise가 한 세트 -->
      <c:choose>
         <c:when test="${empty lists}">
            <tr><td colspan="10">---작성된 글이 없습니다.---</td></tr>
         </c:when>
         <c:otherwise>
<!--          위의 when을 만족하지 않으면 실행되는 otherwise(otherwise안에 when을 다시 사용할 수 있음) -->
<!-- 처음과 끝값 입력 없이 자동으로 구해서 반복 -->
            <c:forEach var = "ldto" items="${lists}">
               <tr>
                  <td><input type="checkbox" name="chk" value="${ldto.useq}"/></td>
                  <td>${mdto.mtitle}</td>
                  <td>${rdto.rcontent}</td>
                  <c:choose>
                     <c:when test="${rdto.rdelflag=='Y'}">
                        <td class="delboard">---삭제된 글입니다.---</td>
                     </c:when>
                  </c:choose>
                  <td>${rdto.rdate}</td>
                  <td>${rdto.rup}</td>

               </tr>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
      <tr>
         <td colspan="10">

            <input type="submit" class="btn btn-danger" value="선택삭제"/>
         </td>
         
      </tr>
   </table>
</form>
</div>
</body>
</html>