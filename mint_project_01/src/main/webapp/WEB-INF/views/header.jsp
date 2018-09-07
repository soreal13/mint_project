<%@page import="com.mint.project.dtos.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>
<%
 
    request.setCharacterEncoding("UTF-8");
 
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mint header</title>
<style type="text/css">

   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/DXMobrRExtraBold-KSCpc-EUC-H.ttf") format("truetype");       }
   .logo{
   text-align: center;
   }

 .genre_category{
   margin: auto;
   text-align: center;
   font-family: 'mint_catefont' !important;
   margin-right: auto;
   margin-left: auto;
   }
   .logo img{
   margin: auto;
   width: 250px;
   height: auto;
   display: box;
   margin-right: auto;
   margin-left: auto;
   }
   .btn_box{
   text-align: right;
   margin-right:70px;
   }
   .btn_box img{
      width: 50px;
   height: auto;
   }
   
   .login{
   float: right;
   }
  
   body{
   font-family: 'mint_bodyfont';
   
   }
   a{
   text-decoration:none;
   color: black;
   
   }
   a:hover{
   color:#99cccc;
   }
</style>
<script type="text/javascript">
function keyword_check(){
     if(document.search_form.serach.value==''){ //검색어가 없을 경우  
     alert('검색어를 입력하세요'); //경고창 띄움 
     document.search_form.serach.focus(); //다시 검색창으로 돌아감 
     return false; 
     }
     else return true;
    }
</script>

</head>
<body>
<!-- 민지코드 -->
   
<div class="logo">
   <img id="logo" alt="" src="resources/img/MINTlogo2.png" onclick="location.href='index.jsp'" />
</div><br>

<div class="genre_category">
   <a href="movie_search.do?search=액션">액션</a>
   <a href="movie_search.do?search=코미디">코미디</a>
   <a href="movie_search.do?search=범죄">범죄</a>
   <a href="movie_search.do?search=다큐">다큐멘터리</a>
   <a href="movie_search.do?search=드라마">드라마</a>
   <a href="movie_search.do?search=가족">가족</a>
   <a href="movie_search.do?search=판타지">판타지</a>
   <a href="movie_search.do?search=느와르">느와르</a>
   <a href="movie_search.do?search=공포">공포</a>
   <a href="movie_search.do?search=뮤지컬">뮤지컬</a><br>
   <a href="movie_search.do?search=미스테리">미스테리</a>
   <a href="movie_search.do?search=로맨스">로맨스</a>
   <a href="movie_search.do?search=SF">공상과학</a>
   <a href="movie_search.do?search=스포츠">스포츠</a>
   <a href="movie_search.do?search=스릴러">스릴러</a>
   <a href="movie_search.do?search=전쟁">전쟁</a>
   <a href="movie_search.do?search=애니메이션">애니메이션</a>
   <a href="movie_search.do?search=어린이">어린이</a>
   <a href="movie_search.do?search=사극">사극</a><br>
   <a href="movie_search.do?search=로코">로맨스코미디</a>
   <a href="movie_search.do?search=하이틴">하이틴</a>
   <a href="movie_search.do?search=재난">재난</a>
   <a href="movie_search.do?search=무협">무협</a>
   <a href="movie_search.do?search=서부">서부</a>
   <a href="movie_search.do?search=미남">미남</a>
   <a href="movie_search.do?search=토끼">토끼</a>
   <a href="movie_search.do?search=자동차">자동차</a>
   <a href="movie_search.do?search=해외영화">해외영화</a>
   <a href="movie_search.do?search=국내영화">국내영화</a>
   
</div>
<div class="btn_box">

      <img alt="loginimg" src="resources/img/logout.png" onclick="location.href='login.do'">


<div class="searchbox">
<form name="search_form" align="right" method = "post"  
action ="movie_search.do" onsubmit="return keyword_check()">
<!-- align : 정렬 , style : 스타일 정보 포함 (margin : 여백 설정) , method : 전달 방식 ,  
action : submit 시 이동 경로 ,onsubmit : submit 클릭시 호출 조건 (true 일 때 action으로 넘어감 )-->
<td>
  <input type="text" name="search"> 
</td>
<td>
<input type="submit" value="검색">
</td>  
</form>
</div>
</div>
</body>
</html>
