<%@page import="com.mint.project.dtos.UserDto"%>
<%@page import="com.mint.project.dtos.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.net.URLDecoder"%>
 
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }

 a{text-decoration: none;
 color: #595959;}
 #keywords{
   margin: auto;
   text-align: center;
   font-family: 'mint_catefont' !important;
   font-size: 20pt;
   margin-right: auto;
   margin-left: auto;
   font-color :  #595959;
   
   }
</style>
</head>
<body>
<%@include file="header.jsp"%>
<br/><br/>
 <div class="genre_category">
    <a id="keywords" href="movie_search.do?search=액션">액션</a>  
    <a id="keywords" href="movie_search.do?search=코미디">코미디</a>  
    <a id="keywords" href="movie_search.do?search=범죄">범죄</a>  
    <a id="keywords" href="movie_search.do?search=다큐">다큐멘터리</a>  
    <a id="keywords" href="movie_search.do?search=드라마">드라마</a>  
    <a id="keywords" href="movie_search.do?search=가족">가족</a>  
    <a id="keywords" href="movie_search.do?search=판타지">판타지</a>  
    <a id="keywords" href="movie_search.do?search=느와르">느와르</a>  
    <a id="keywords" href="movie_search.do?search=공포">공포</a>  
    <a id="keywords" href="movie_search.do?search=뮤지컬">뮤지컬</a><br>  
    <a id="keywords" href="movie_search.do?search=미스테리">미스테리</a>  
    <a id="keywords" href="movie_search.do?search=로맨스">로맨스</a>  
    <a id="keywords" href="movie_search.do?search=SF">공상과학</a>  
    <a id="keywords" href="movie_search.do?search=스포츠">스포츠</a>  
    <a id="keywords" href="movie_search.do?search=스릴러">스릴러</a>  
    <a id="keywords" href="movie_search.do?search=전쟁">전쟁</a>  
    <a id="keywords" href="movie_search.do?search=애니메이션">애니메이션</a>  
    <a id="keywords" href="movie_search.do?search=어린이">어린이</a>  
    <a id="keywords" href="movie_search.do?search=사극">사극</a><br>  
    <a id="keywords" href="movie_search.do?search=로코">로맨스코미디</a>  
    <a id="keywords" href="movie_search.do?search=하이틴">하이틴</a>  
    <a id="keywords" href="movie_search.do?search=재난">재난</a>  
    <a id="keywords" href="movie_search.do?search=무협">무협</a>  
    <a id="keywords" href="movie_search.do?search=서부">서부</a>  
    <a id="keywords" href="movie_search.do?search=미남">미남</a>  
    <a id="keywords" href="movie_search.do?search=토끼">토끼</a>  
    <a id="keywords" href="movie_search.do?search=자동차">자동차</a>  
    <a id="keywords" href="movie_search.do?search=해외영화">해외영화</a>  
    <a id="keywords" href="movie_search.do?search=국내영화">국내영화</a>  
   
 </div> 



   

</body>
</html>