<%@page import="com.mint.project.dtos.ReviewDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	h2{
	
	text-align: center;
	 display: box;
   margin-right: auto;
   margin-left: auto;
	}
	
	table{
		text-align: center;
	 display: box;
   margin-right: auto;
   margin-left: auto;
	}
</style>
</head>
<%@include file="../header.jsp"%>
<body>
<!-- 민지코드 -->
<%
	List<ReviewDto> rlist=(List<ReviewDto>)request.getAttribute("rlist");
%>
<h2>한줄평 관리</h2>
<table border="1">
	<tr>
		<th>영화</th>
		<th>아이디</th>
		<th>한줄평</th>
		<th>날짜</th>
		<th>[삭제]</th>
	</tr>
	<%
	 for(int i=0;i<rlist.size();i++){
		 ReviewDto rdto=rlist.get(i);
	      
	%>
	<tr>
		<td>
			<%=rdto.getRmseq()%>
		</td>
		<td>
			<%=rdto.getRuseq()%>
		</td>
		<td> 
			<%=rdto.getRcontent()%>
		</td>
		<td>
			<%=rdto.getRdate()%>
		</td>
		<td>
		<%
		 if(rdto.getRdelflag().equals("N")){
		%>
			<input type="button" value="강퇴" onclick="location.href='admin_deluser.do?useq='<%=rdto.getRseq()%>">
			<%
		 } else {
			 
			 %>
			 이미 삭제된 리뷰입니다.
			 <%
			%>
		</td>
	</tr>
	<%
	    	  
	      }
	 }
	%>
</table>
</body>
</html>