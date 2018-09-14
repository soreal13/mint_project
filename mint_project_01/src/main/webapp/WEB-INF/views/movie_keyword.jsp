<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT!! : 영화검색</title>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
	.tlqkf{
/* 	opacity:0.7; */
	position:relative;
	width: 1600px;
	margin-left:auto;
	margin-right:auto;
	text-align: center;
/* 	margin-left:800px; */
/* 	margin-top: 100px; */
/* 	margin-right: auto; */
    
	}
	.tlqkf:after{
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
	.searchbox{
	text-align: center;
	width: 1000px;
	height: 500px;
	padding-top:120px;
	margin-left:auto;
	margin-right: auto;
	}
	.genre_box{
	font-family:"mint_catefont"; 
	font-size: 50px;
	}
	.searchbox p{
	text-align:center;
	cursor: pointer;
	}
	.genre_box p{
	font-size:40px;
	}
</style>

</head>
<body>
<%@include file="header.jsp"%>
<div class="tlqkf">
<div class="searchbox">

<div  class="search_box">
	<div class="genre_box"> 
	<img src="resources/img/11111.png" alt="neon" width="700px"><br/><br/>
   <a href="movie_search.do?search=액션&desc=basic">액션</a>
   <a href="movie_search.do?search=코미디&desc=basic">코미디</a>
   <a href="movie_search.do?search=범죄&desc=basic">범죄</a>
   <a href="movie_search.do?search=다큐&desc=basic">다큐멘터리</a>
   <a href="movie_search.do?search=드라마&desc=basic">드라마</a>
   <a href="movie_search.do?search=가족&desc=basic">가족</a>
   <a href="movie_search.do?search=판타지&desc=basic">판타지</a>
   <a href="movie_search.do?search=느와르&desc=basic">느와르</a>
   <a href="movie_search.do?search=공포&desc=basic">공포</a>
   <a href="movie_search.do?search=뮤지컬&desc=basic">뮤지컬</a><br>
   <a href="movie_search.do?search=미스테리&desc=basic">미스테리</a>
   <a href="movie_search.do?search=로맨스&desc=basic">로맨스</a>
   <a href="movie_search.do?search=공상과학&desc=basic">공상과학</a>
   <a href="movie_search.do?search=스포츠&desc=basic">스포츠</a>
   <a href="movie_search.do?search=스릴러&desc=basic">스릴러</a>
   <a href="movie_search.do?search=전쟁&desc=basic">전쟁</a>
   <a href="movie_search.do?search=애니메이션&desc=basic">애니메이션</a>
   <a href="movie_search.do?search=어린이&desc=basic">어린이</a>
   <a href="movie_search.do?search=사극&desc=basic">사극</a><br>
   <a href="movie_search.do?search=로맨스코미디&desc=basic">로맨스코미디</a>
   <a href="movie_search.do?search=하이틴&desc=basic">하이틴</a>
   <a href="movie_search.do?search=재난&desc=basic">재난</a>
   <a href="movie_search.do?search=무협&desc=basic">무협</a>
   <a href="movie_search.do?search=서부&desc=basic">서부</a>
   <a href="movie_search.do?search=미남&desc=basic">미남</a>
   <a href="movie_search.do?search=토끼&desc=basic">토끼</a>
   <a href="movie_search.do?search=자동차&desc=basic">자동차</a>
   <br/>
   <br/>
   <a href="movie_search.do?search=해외영화&desc=basic">해외영화</a>
   <a href="movie_search.do?search=국내영화&desc=basic">국내영화</a>
	</div>

</div>

<br><br>
</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>