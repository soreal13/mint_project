<%@page import="com.mint.project.dtos.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>



<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="resources/img/MINTlogo2.png">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT CI : ABOUT US</title>
<style type="text/css">
   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
    .logo{ 
    text-align: center; 
    } 
 .genre_category{
   margin: auto;
   text-align: center;
   font-family: 'mint_catefont' !important;
   font-size: 20pt;
   margin-right: auto;
   margin-left: auto;
   font-color :  #595959;
   
   }
   
   .mainmenu{
    margin: auto;
   font-family: 'mint_catefont' !important;
   font-size: 26pt;
    margin-right: auto; 
    margin-left: auto;    
    text-align: left;
	float: left;  
	clear: both;
   }
     
   .logo img{
    margin: auto; 
    width: 250px;
    display: box; 
    margin-top: 10px;
    margin-right: auto; 
    margin-left: auto; 
    float: none;
    cursor:pointer;
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
 
   .header{
   background-color: #e0e0e0 !important;
   
   }
   .header a{
   color :  #595959;
   }
   body{
   font-family: 'mint_bodyfont';
   background-color: #e0e0e0;
   color: #595959 !important;
   }
   
   a{
  
  color: #595959;
  text-decoration: none;
   
   }
   a:hover{
   color:#99cccc;
   text-decoration: none;
   
   }
	.header {
	height:260px;
	clear: both;
	}
	
	.ci {
	
	width: 1100px;
	align-self: center;
	margin: auto;
	}
	
	#sc{
	height: 30px;
	width: 40px;
	}

   
</style>

<style type="text/css">
#footer{

}

#footerlogo{
width: 45px;
height: 40px;
margin-left: 50px;
padding: 10px;
vertical-align: middle;
}

#mint_team{
	border-bottom:none;
       border-style:dotted;
       font-size: 30px;
	   margin: auto;
       height: 200px;
   
}

</style>



</head>
<body>
<div class="ci">
	<div class="header">
		<div class="logo">
		   <img id="logo" alt="" src="resources/img/MINTlogo2.png" onclick="location.href='index.jsp'" />
		</div>
		<br>
		<div class="mainmenu">
			<a href="#">PLAY</a>&nbsp;
			<a href="#">GENRE/KEYWORD</a>&nbsp;
			<a href="#">ABOUT</a>&nbsp;
		</div>
		
	
			
		<div class="searchbox">
			<form name="search_form" align="right" method = "post"  
			action ="movie_search.do" onsubmit="return keyword_check()" id="form">
			<!-- align : 정렬 , style : 스타일 정보 포함 (margin : 여백 설정) , method : 전달 방식 ,  
			action : submit 시 이동 경로 ,onsubmit : submit 클릭시 호출 조건 (true 일 때 action으로 넘어감 )-->
					<td>
					  <input type="text" name="search"> 
					</td>
					<td>
					    <img alt="loginimg" src="resources/img/3.search.png" id="sc">
					</td>
			</form>
		</div>
	</div>
	<hr>
	<div id="container">
	<h1>MINT: Movie INTo</h1>
	<h4>p.s지금 보시는 화면은 MINT의 프로토 타입 시안 UI입니다 (핵깔끔)</h4>
	<hr>
	<h1>CI 변천사</h1>
	<table id="mint_ci">
		<tr>
			<td>
			</td>
			<td>
				<img src="resources/img/ci2.png">
				<img src="resources/img/MINTlogo2.png"><br/>				
			</td>
			<td>
			</td>
		</tr>
	
	</table>
	<hr/>
	<h1>프로젝트 소개</h1>	
	<h4>'Mint'는 movie into를 줄인 말로, 롤모델 사이트인 왓챠를 분석하고 개선점을 찾아 MINT만의 개성을 담은 사이트를 만들어보고자 시작한 프로젝트 입니다.</h4>
	<h4>개인화된 DB를 바탕으로 영화정보를 추천하여 검색에 소모하는 시간을 줄이고 양질의 정보를 취득해 보다 즐거운 문화생활을 누리는 것을 목표로 합니다!! </h4>
	<h4>기본적인 JAVA SPRING 프로젝트의 기반하에 ITEM 기반의 추천 시스템 구현, 구글 API, 검색시스템, 콜렉션 맵, Ajax를 곳곳에 활용! </h4>
	<h4>팀원들의 피 땀 눈물이 어린 MINT 사이트에서 즐거움을 누리다 가세요 !! NICE to MINT TO YOU!</h4>

	<br/>
	
	<h1>팀원 소개</h1>
	
	<table id="mint_team" border="1">
		<tr>
			<th>프로필</th><th>코드네임</th><th>직책</th><th>한마디</th>
		</tr>
		<tr>
			<td><img src="resources/img/cip1.jpg"></td><td>JINY</td><td>팀장</td><td>구글신보다 갓병진</td>
		</tr>
		<tr>
			<td><img src="resources/img/cip2.png"></td><td>BUNNY</td><td>에이스<br/>(부팀장)</td><td>유익한 시간이었습니다. 수고하셨습니다.</td>
		</tr>
		<tr>
			<td><img src="resources/img/cip3.jpg"></td><td>CAT</td><td>버스기사<br/>(하드캐리)</td><td>힘들고 재밌고 즐거웠습니다 고생하셨습니다~^_^</td>
		</tr>
		<tr>
			<td><img src="resouces/img/cip4.jpg"></td><td>Chicken</td><td>팀원</td><td></td>
		</tr>
	</table>
	
	
	</div>
</div>
<hr/>
<div id="footer" align="center">
Copyright © 2018 팀프로젝트 민트.&nbsp;All rights reserved.&nbsp;&nbsp;JINY.BUNNY.CAT.Chicken. <img src="resources/img/MINTlogo2.png" alt="logo" id="footerlogo" onclick="location.href='goadmin.do'">
</div>
</body>
</html>