<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<title>MINT!!</title>
</head>
<body>
<%@include file="header.jsp"%>


<hr/>

<br/><br/>
<h3>홍익 테스트</h3>
<a href="login.do">클릭</a>
<br/><br/>

<hr/>

<br/><br/>
<h3>소진 테스트</h3>
<a href="taste_init.do">취향창 가기</a>
<br/><br/>
<hr/>
<br/><br/>


<br/><br/>
<h3>민지 테스트</h3>
<a href="movie_info.do?mseq=64&useq=100">무비_인포</a>

<a href="movie_search.do">무비_서치</a>

<a href="admin_main.do">관리자 메인 페이지</a>

<img src="resources/img/M_like2.png">
<br/><br/>


<%@include file="footer.jsp"%>
</body>
</html>