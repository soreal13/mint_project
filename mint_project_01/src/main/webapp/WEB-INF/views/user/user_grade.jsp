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
	color: black;
	list-style: none;
	float: left;
	margin-right: 50px;
	left: auto; 
}

li img{
	width: 300px;
	height: 450px;
}

</style>
</head>
<body>
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="즐겨찾기 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
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
         <li id="abc" >
            <a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}" ><img src="<%=mdto.getMimg()%>" id="recmovie"></a><br/>
            <a href="movie_info.do?mseq=<%=mdto.getMseq()%>&useq=${ldto.useq}"><%=mdto.getMtitle()%></a>
         </li>            
       <%         
                           
      }
%>
      </ul>
     </td>
   </tr>
</table>
</body>
</html>