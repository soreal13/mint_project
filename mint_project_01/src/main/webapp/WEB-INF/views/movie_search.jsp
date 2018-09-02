<%@page import="com.mint.project.dtos.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	List<MovieDto> smlist=(List<MovieDto>)request.getAttribute("smlist");
%>
<body>
<h2> 검색어 : <%=%> </h2>
<div class="dropdown_box">
	<select>
		<option value="1">최신 순으로 보기</option>
		<option value="2">별점 순으로 보기</option>
		<option value="3">즐겨찾기 순으로 보기</option>
	</select>
</div>
<div class="answer_box">
<%
	for(int i=0;i<smlist.size();i++){
		MovieDto mdto=smlist.get(i);
	if(i<13){
%>
	<div class="answer_detail">
		<a href=""><img src=<%=mdto.getMimg()%>></a>
		<a href=""><%=mdto.getMtitle()%></a>
	</div>
	
<%
	} else if(i==13){
		%>
		<button>눌러서 12개 더 보기</button>
		<%
	}
	}
%>
</div>
</body>
</html>