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
      

      
      function allSel(allEle) {
         var chks=document.getElementsByName("chk");
          for(var i=0; i < chks.length; i++) {
             chks[i].checked = allEle;
          }
       }


</script>
<style type="text/css">
   input[type=checkbox]{width: 15px; height: 15px;}
   textarea[name=testAjax] {
   position: fixed;
   left: 50px; top: 800px;
   border-radius: 10px;
}

.container{
       position:relative;
       width: 1600px;
       height:1600px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       margin-bottom: auto;
       padding-top: 100px;
       font-size: 20px;
       margin: auto;
       border: 1px solid red;
       font-size: 20px;
       }
       
 .container:after{
              content: "";
              background-color:#595959;
              display: block;
              width: 1600px;
              height: 100%;
              position: absolute;
              left: 0px;
              top:0px;
              opacity:0.7;
              z-index: -1;
       }
       
       #reviewform{
       	text-align: center;
       }
       
       table{
        margin: auto;
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
       <input type="button" value="메인으로" onclick="location.href='usermain_user.do?useq=${ldto.useq}'">
     </td>
   </tr>
 </table>


<!-- 객체생성과 마찬가지 -->
<div class="container">
<h1>한줄평 모아보기</h1>
<br/><br/><br/><br/>
<form id="reviewform" action="delReview.do" method="POST">
	<table class="table table-striped" style="text-align: center;" border="1">
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

            <input style="text-align: left;" type="submit" class="btn btn-danger" value="선택삭제"/>
         </td>
         
      </tr>
	</table>
   </form>
</div>
</body>
</html>