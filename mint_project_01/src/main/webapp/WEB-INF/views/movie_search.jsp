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

   .table img{
   width: 203px;
   height: 290px;
   
   }
   
   h2{
   
   text-align: center;
    display: box;
   margin-right: auto;
   margin-left: auto;
   }
   
   p{
   width: 220px;
   height: 320px;
   float: right;
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
   .dropdown_box{
    text-align: right;
   margin-right:70px;
   }
   .btn{
    text-align: right;
   margin-right:70px;
   }
</style>
</head>

<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");



   List<MovieDto> smlist=(List<MovieDto>)request.getAttribute("smlist");
   String search =(String)request.getAttribute("search");
   UserDto ldto=(UserDto)session.getAttribute("ldto");
%>

<%@include file="header.jsp"%>
<body>
<!-- 민지코드 -->
<h2> 검색어 : <%=search%> </h2>
<div class="dropdown_box">
   <select id="select">
      <option value="1" selected="selected">최신 순으로 보기</option>
      <option value="2">별점 순으로 보기</option>
      <option value="3">즐겨찾기 순으로 보기</option>
   </select>
</div>
<div class="answer_box">
   <div class="answer_detail">
  
<%
   

   for(int i=0;i<smlist.size();i++){
      MovieDto mdto=smlist.get(i);
   if(i<13){
%>
      
   <div class="table">
   <p>
<!--                                        useq ==ldto.로그인한 유저것으로 교환해야함. .. -->
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
   } else if(i==13){
      %>
      </div>
      <button class="btn">눌러서 12개 더 보기</button>
      <%
   }
   }
%>
 
   
</div>
</body>
