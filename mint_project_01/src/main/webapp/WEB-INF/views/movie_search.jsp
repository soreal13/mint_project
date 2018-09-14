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
<title>MINT!! : 영화검색</title>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
	.movie_search{
	position:relative;
	width: 1600px;
	margin-left:auto;
	margin-right:auto;
	text-align: center;
	}
	.movie_search:after{
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
	.answer_box{
	width: 1000px;
	margin-left: 370px;
	margin-top: 50px;
	}
	.table img{
	width: 203px;
	height: 290px;
	}
	
	.search_text{
	 font-family:"mint_catefont";
	padding-top:20px;
	text-align: center;
   margin-right: auto;
   margin-left: auto;
   font-size: 40px;
   
	}
	
	.imgs{
	width: 220px;
	height: 320px;
	float: left;
	text-align: center;
	}
	.ppp{
	
	clear:both;
	}
	.table{
	width: 1000px;	
	text-align: center;
	margin-right: auto;
 	margin-left: auto;
	}

	.btn{
	 text-align: right;
   margin-right:70px;
	}
	.desc_text p{
	font-family:"mint_catefont";
	font-size:30px;
	float: left;
	text-align:center;
	margin-left: 20px;
	}
	.desc_text p:first-child{
	margin-left: 550px;
	}
	
	.answer_detail:after {
	content: ""; clear: left;
}
</style>
</head>

<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");



   List<MovieDto> smlist=(List<MovieDto>)request.getAttribute("smlist");
   String search =(String)request.getAttribute("search");
//    UserDto ldto=(UserDto)session.getAttribute("ldto");
%>

<%@include file="header.jsp"%>
<body>
<!-- 민지코드 -->
<div class="movie_search">
<p class="search_text"> 검색어 : <%=search%> </p>
<!-- <div class="dropdown_box"> -->
<!--    <select id="select"> -->
<!--       <option value="1" selected="selected">최신 순으로 보기</option> -->
<!--       <option value="2">별점 순으로 보기</option> -->
<!--       <option value="3">즐겨찾기 순으로 보기</option> -->
<!--    </select> -->
<!-- </div> -->
<div class="desc_text">
<p><a href="movie_search.do?search=<%=search%>&desc=basic">최신 순으로 보기</a></p>
<p><a href="movie_search.do?search=<%=search%>&desc=asc">오래된 순으로 보기</a></p>
<p><a href="movie_search.do?search=<%=search%>&desc=mfollow">즐겨찾기 순으로 보기</a></p>
</div>
<div class="answer_box">
   <div class="answer_detail">
  
<%
   

   for(int i=0;i<smlist.size();i++){
      MovieDto mdto=smlist.get(i);
%>
		
	<div class="table">
	<p class="imgs">
		<%
		if(ldto==null){
			%>
			
			<a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=0"><img src=<%=mdto.getMimg()%>></a></br>
			<a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=0"><%=mdto.getMtitle()%></a>
			<%
		} else if(ldto!=null){
			
			%>
				
			<a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><img src=<%=mdto.getMimg()%>></a></br>
			<a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><%=mdto.getMtitle()%></a>			
			<%
		}
		
		%>

	</p>
	</div>
	<% if((i+1)%4==0){
		%>
		<p class="ppp"></p>
		<%
	} 
		%>
   
<%

   }
%>
 <p class="ppp"></p>
   
</div>
</div>
<!-- <div class="footer"> -->
<%-- <%@include file="footer.jsp"%> --%>
<!-- </div> -->
</div>
<%@include file="footer.jsp" %>
</body>
</html>