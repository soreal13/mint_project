<%@page import="java.util.List"%>
<%@page import="com.mint.project.dtos.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT!! :: 평점보기</title>
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
<h1 style="font-size: 90px;">회원님께 추천해드리는 영화</h1>
 
<table class="imgtable">
   <tr>
     <td>
         <ul class="mimg">
<%

	List<MovieDto> tmlist=(List<MovieDto>)request.getAttribute("tmlist");
	String keyw =(String)request.getAttribute("keyw");
	
%>

<%

   for(int i=0;i<tmlist.size();i++){
         MovieDto mdto=tmlist.get(i);
      
         
        %>       
         <li>
            <a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}" ><img src="<%=mdto.getMimg()%>" id="recmovie"></a><br/>
            <a id="title" href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><%=mdto.getMtitle()%></a>
         </li>            
       <%         
                           
      }
%>
      </ul>
     </td>
   </tr>
</table>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>