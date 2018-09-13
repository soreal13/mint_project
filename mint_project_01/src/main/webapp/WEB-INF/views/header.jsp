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
<link rel="icon" href="resources/img/MINTlogo2.png">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mint header</title>
<style type="text/css">

   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
   *{
   margin: 0px;
   }
   .mainmenu{
   float: left;

   width: 700px;
   height: 500px;

   }
   .logo{
   width: 500px;
   height: 480px;
   margin-left: 700px; 
   position: absolute;
   }
    .logo img{ 
/*     text-align: center;  */
     margin:170px 40px;  
/*    border:1px solid white; */
/*    margin-top:150px; */
     width: 400px; 
/*     display: box;  */
/*     margin-top: 150px; */
/*     margin-right: auto;  */
/*     margin-left: auto;  */
/*     float: none; */
    cursor:pointer;
    } 
  
     .search_h img{
     width: 280px; 
   }
   
   .login_h img{
     width: 220px; 
   } 
 
   .myinfo_h img{
     width: 280px; 
   }
   
   .logout_h img{
    width: 260px; 
   }
   
   .mainmenu div{text-align: center;
      margin-top: 60px;
   }
   .play_h img{
     width: 200px; 
   }
    .keyword_h img{
     width: 360px; 
   }
   .keyword_h:hover img:last-child{
    display:inline-block; 
   }
   .about_h img{
     width: 270px; 
   } 
  .about_h img:last-child, .play_h img:last-child, .login_h img:last-child, .myinfo_h img:last-child,.logout_h img:last-child, .keyword_h img:last-child, .search_h img:last-child{
    display:none;
   }
   .about_h:hover img:first-child, .play_h:hover img:first-child, .login_h:hover img:first-child,.myinfo_h:hover img:first-child,.logout_h:hover img:first-child,  .keyword_h:hover img:first-child, .search_h:hover img:first-child{
    display:none;
   }
   .about_h:hover img:last-child, .play_h:hover img:last-child,.login_h:hover img:last-child,.myinfo_h:hover img:last-child,.logout_h:hover img:last-child, .search_h:hover img:last-child{
   display:inline-block;
   }
    .btn_box div{text-align: center;
      margin-top: 60px;
   }
    .btn_box{
/*    text-align: right; */
/*    margin-right:70px; */
/*    clear: both; */
   float:right;
    width: 700px;
   height: 500px;
/*    height: 480px; */

   }

   
   .login{
   float: right;
   }
 
   body{
   font-family: 'mint_bodyfont';
   color:  #e0e0e0 !important;
   }
   
   a{
  color: #e0e0e0;
  text-decoration: none;
   }
   a:hover{
   color:#96ffd4;
   text-decoration: none;
   }
   .header {
   background-image:url("resources/img/bricks1.jpg");
   height:510px;
   width: 1900px;
/*    clear: both; */
/*    overflow: auto; */
   position: relative;
   }
   .header:after {
   content: ""; clear: both;
}
   body{
   background-image: url("resources/img/bricks1.jpg");
   }
   
</style>
<script type="text/javascript">

</script>

</head>
<body>
<%
   UserDto ldto=(UserDto)session.getAttribute("ldto");
%>
<!-- 민지코드 -->
<div class="header">


<div class="mainmenu">
   <div class="play_h">
      <img alt="" src="resources/img/PLAY1.png" onclick="location.href='index.do'" />
      <img alt="" src="resources/img/PLAY2.png" onclick="location.href='index.do'" />
   </div>
    <div class="keyword_h">
       <img alt="" src="resources/img/KEYWORD1.png" onclick="location.href='genresearch.do'" />
       <img alt="" src="resources/img/KEYWORD2.png" onclick="location.href='genresearch.do'" />
    </div>
    <div class="about_h">
        <img alt="" src="resources/img/ABOUT1.png" onclick="location.href='mintci.do'" />
        <img alt="" src="resources/img/ABOUT2.png" onclick="location.href='mintci.do'" />
    </div>
</div>

<div class="logo">
   <img id="logo" alt="" src="resources/img/LOGO1.png" onclick="location.href='index.jsp'" />
</div>

<!-- <div class="genre_category"> -->
<!--    <a href="movie_search.do?search=액션">액션</a> -->
<!--    <a href="movie_search.do?search=코미디">코미디</a> -->
<!--    <a href="movie_search.do?search=범죄">범죄</a> -->
<!--    <a href="movie_search.do?search=다큐">다큐멘터리</a> -->
<!--    <a href="movie_search.do?search=드라마">드라마</a> -->
<!--    <a href="movie_search.do?search=가족">가족</a> -->
<!--    <a href="movie_search.do?search=판타지">판타지</a> -->
<!--    <a href="movie_search.do?search=느와르">느와르</a> -->
<!--    <a href="movie_search.do?search=공포">공포</a> -->
<!--    <a href="movie_search.do?search=뮤지컬">뮤지컬</a><br> -->
<!--    <a href="movie_search.do?search=미스테리">미스테리</a> -->
<!--    <a href="movie_search.do?search=로맨스">로맨스</a> -->
<!--    <a href="movie_search.do?search=SF">공상과학</a> -->
<!--    <a href="movie_search.do?search=스포츠">스포츠</a> -->
<!--    <a href="movie_search.do?search=스릴러">스릴러</a> -->
<!--    <a href="movie_search.do?search=전쟁">전쟁</a> -->
<!--    <a href="movie_search.do?search=애니메이션">애니메이션</a> -->
<!--    <a href="movie_search.do?search=어린이">어린이</a> -->
<!--    <a href="movie_search.do?search=사극">사극</a><br> -->
<!--    <a href="movie_search.do?search=로코">로맨스코미디</a> -->
<!--    <a href="movie_search.do?search=하이틴">하이틴</a> -->
<!--    <a href="movie_search.do?search=재난">재난</a> -->
<!--    <a href="movie_search.do?search=무협">무협</a> -->
<!--    <a href="movie_search.do?search=서부">서부</a> -->
<!--    <a href="movie_search.do?search=미남">미남</a> -->
<!--    <a href="movie_search.do?search=토끼">토끼</a> -->
<!--    <a href="movie_search.do?search=자동차">자동차</a> -->
<!--    <a href="movie_search.do?search=해외영화">해외영화</a> -->
<!--    <a href="movie_search.do?search=국내영화">국내영화</a> -->
   
<!-- </div> -->
<div class="btn_box">
    <div class="search_h">
       <img alt="" src="resources/img/SEARCH1.png" onclick="location.href='search.do'" />
        <img alt="" src="resources/img/SEARCH2.png" onclick="location.href='search.do'" />
    </div>
   <%
   if(ldto==null){
      %>
      <div class="login_h">
         <img alt="loginimg" src="resources/img/LOGIN1.png" onclick="location.href='login.do'">
         <img alt="loginimg" src="resources/img/LOGIN2.png" onclick="location.href='login.do'"> 
      </div>
     
      <%
   } else if(ldto!=null){
   %>
         <div class="myinfo_h">
            <img alt="loginimg" src="resources/img/LOGOUT1.png" onclick="location.href='logout.do'">
         <img alt="loginimg" src="resources/img/LOGOUT2.png" onclick="location.href='logout.do'">
         </div>
         <div class="logout_h">
            <img alt="myinfoimg" src="resources/img/MYINFO1.png" onclick="location.href='usermain_user.do'">
            <img alt="myinfoimg" src="resources/img/MYINFO2.png" onclick="location.href='usermain_user.do'">
         </div>

   <%   
   }
   %>
</div>


</div>
</body>
</html>