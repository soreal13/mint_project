<%@page import="java.util.List"%>
<%@page import="com.mint.project.dtos.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }


li {

	text-align:center;
	font-size: 25px;
	color: black;
	list-style: none;
	float: left;
	margin-right: 50px;
	left: auto; 
	margin-top: 30px;
}

/* 포스터 이미지 크기 */
li img{
	width: 280px;
	height: 380px;
}

#title{
width:300px; height:30px;; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
list-style: none;float: left;
}

.배경div{

	font-family:mint_catefont;
       position:relative;
       width: 1600px;
       height:auto;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       margin-bottom: auto;
       padding-top: 100px;
       font-size: 20px;
       margin: auto;
       }
       
       .배경div:after{
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
       
.imgtable{
	padding-left: 75px;
}

h1{
 padding-bottom: 100px;
}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<h1 style="font-size: 90px;">별점 4점 이상을 준 선호영화</h1>
 
<table class="imgtable">
   <tr>
     <td>
         <ul class="mimg">
 <%
List<MovieDto> fmlists2=(List<MovieDto>)request.getAttribute("fmlists2");

   
   for(int i=0;i<fmlists2.size();i++){
	      MovieDto fmdto=fmlists2.get(i);
	   if(i<6){
		   
		  %>		 
			<li>
				<a href="movie_info.do?mseq=<%=fmdto.getMseq()%>&useq=${ldto.useq}"><img id="img" src="<%=fmdto.getMimg()%>" id="recmovie"></a><br/>
				<a id="title" href="movie_info.do?mseq=<%=fmdto.getMseq()%>&useq=${ldto.useq}"><%=fmdto.getMtitle()%></a>
			</li>				
		 <%		   
	   	}		   				   
	   }
%>        
         
         
      </ul>
     </td>
   </tr>
</table>
</div>
</body>
</html>