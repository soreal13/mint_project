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

li img{
	width: 250px;
	height: 350px;
}

#title{
width:300px; height:30px;; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
list-style: none;float: left;
}

.배경div{
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
       
       
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<table>
   <tr>
     <td style=" height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="메인으로" onclick="location.href='usermain_user.do?useq=${ldto.useq}'">
     </td>
   </tr>
 </table>
<table>
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
         <li id="grade_li">
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
</body>
</html>