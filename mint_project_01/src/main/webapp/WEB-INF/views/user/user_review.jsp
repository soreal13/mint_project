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
      

      
//       function allSel(allEle) {
//          var chks=document.getElementsByName("chk");
//           for(var i=0; i < chks.length; i++) {
//              chks[i].checked = allEle;
//           }
//        }

	function allsel(bool){ 
		$("input[name=chk]").prop("checked",bool);
	}

  	$(function(){
		//ajax처리
		$("table td>a").hover(function(){
			//			a	  td	  td      td
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
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="즐겨찾기 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
</table>

<!-- 객체생성과 마찬가지 -->
<div id="container">
<h1>한줄평 모아보기</h1>
<form action="delReview.do" method="POST">
<input type="hidden" value="rseq=${ldto.rdto.rseq}">
	<table class="table table-striped">
		<col width="100px" />
      <col width="400px" />
      <col width="500px" />
      <col width="100px" />
		<tr>
			<th>삭제<input type="checkbox" id="all" onclick="allSel(this.checked)"/></th>
         <th>제목</th>
         <th>한줄평 내용</th>
         <th>작성일</th>
		</tr>
<!-- 		ifelse기능을하는 choose -> choose, when, otherwise가 한 세트 -->
		<c:choose>
			<c:when test="${empty lists}">
				<tr><td colspan="4">---작성된 글이 없습니다.---</td></tr>
			</c:when>
			<c:otherwise>
<!-- 			위의 when을 만족하지 않으면 실행되는 otherwise(otherwise안에 when을 다시 사용할 수 있음) -->
<!-- 처음과 끝값 입력 없이 자동으로 구해서 반복 -->
				<c:forEach var = "ldto" items="${lists}">
					<tr>
<!-- 					value안에 출력한 멤버필드의 이름입력 -->
						<td><input type="checkbox" name="chk" value="${ldto.rdto.rseq}"/></td>
<!-- 						글번호 출력 -->
						<td>${ldto.mdto.mtitle}</td>
						<c:choose>
							<c:when test="${ldto.rdto.rdelflag=='Y'}">
								<td class="delboard">---삭제된 글입니다.---</td>
							</c:when>
							<c:otherwise>
								<td>
									<a>
										${ldto.rdto.rcontent}
									</a>
								</td>
							</c:otherwise>
						</c:choose>
						 <td>${ldto.rdto.rdate}</td>
					</tr>
				</c:forEach>				
			</c:otherwise>
		</c:choose>
		<tr>
         <td colspan="4">

            <input type="submit" class="btn btn-danger" value="선택삭제"/>
         </td>
         
      </tr>
	</table>



<!--    <table class="table table-striped" border="2"> -->
<%--       <col width="100px" /> --%>
<%--       <col width="400px" /> --%>
<%--       <col width="500px" /> --%>
<%--       <col width="100px" /> --%>
<!--       <tr> -->
<!--          <th>삭제<input type="checkbox" id="all" onclick="allSel(this.checked)"/></th> -->
<!--          <th>제목</th> -->
<!--          <th>한줄평 내용</th> -->
<!--          <th>작성일</th> -->
<!--       </tr> -->
<%--       <c:choose> --%>
<%--          <c:when test="${empty lists}"> --%>
<!--             <tr><td colspan="10">---작성된 글이 없습니다.---</td></tr> -->
<%--          </c:when> --%>
<%--          <c:otherwise> --%>
<%--             <c:forEach var = "ldto" items="${lists}"> --%>
<!--                <tr> -->
<%--                   <td><input type="checkbox" name="chk" value="${ldto.rdto.ruseq}"/></td> --%>
<%--                   <td>${ldto.mdto.mtitle}</td> --%>
<%--                   <c:choose> --%>
<%-- 							<c:when test="${ldto.rdto.rdelflag=='Y'}"> --%>
<!-- 								<td class="delboard">---삭제된 글입니다.---</td> -->
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 									 <td>${ldto.rdto.rcontent}</td> --%>
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
<%--                   <td>${ldto.rdto.rdate}</td> --%>
<!--                </tr> -->
<%--             </c:forEach>             --%>
<%--          </c:otherwise> --%>
<%--       </c:choose> --%>
<!--       <tr> -->
<!--          <td colspan="10"> -->
      
<!--             <input type="button" onclick="check_all()" value="모두선택"/> -->
<!--             <input type='button' onclick='uncheck_all();' value='모두 해제' /> -->
<!--             <input type="submit" class="btn btn-danger" value="선택삭제"/> -->
<!--          </td> -->
         
<!--       </tr> -->
<!--    </table> -->
   </form>
</div>
</body>
</html>