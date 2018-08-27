<%@page import="com.mint.project.dtos.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>(영화이름) 페이지</title>
</head>
<%
	List<MovieDto> mlist=(List<MovieDto>)request.getAttribute("mlist");
%>
<body>
<div class="movieimg">영화포스터</div>
<div class="movieinfo">
<h3>영화제목</h3>
<h5>감독</h5>
<h5>출연진</h5>
<div class="summary_box">줄거리줄거리줄거리</div>
<div class="iconbox"><img src="url퍼가기"><img src="즐겨찾기"><img src=""></div>
<h3>장르키워드</h3>
</div>
<%

// 	만약에 로그인 아이디가 애드민이라면

%>
<button>수정</button><button>md픽선정</button>
<%
%>
<div class="starpoint_box">
<h3>별점주기</h3>
</div>
<div class="review_box">
<h3>한줄평 작성하기</h3>
</div>
<div class="reviewview_box">
<h3>한줄평 보기</h3></div>

<div class="recommend_box"></div>
</body>
</html>