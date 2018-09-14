<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT!! : 에러페이지</title>
</head>
<body>
<%
	String msg=(String)request.getAttribute("msg");
%>

<h3>에러</h3>
<h5><%=msg%></h5>
</body>
</html>