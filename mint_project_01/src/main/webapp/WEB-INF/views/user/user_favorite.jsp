<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">

@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }



li img{
	width: 250px;
	height: 350px;
}


.배경div{
 		font-family:mint_catefont;
       position:relative;
       width: 1600px;
       height:1600px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       margin-bottom: auto;
       padding-top: 100px;
       font-size: 20px;
       margin: auto;
       border: 1px solid red;
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
       
 .ul태그{
 	margin-top: 60px;
 	margin-left: 30px;
 }
 
 	h1{
	 	font-size: 90px;
		}
	
li {

	text-align:center;
	font-size: 25px;
	color: black;
	list-style: none;
	float: left;
	margin-right: 50px;
	left: auto; 
	margin-top: 60px;
}
	
</style>
<title>글목록보기</title>

</head>
<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<h1>팔로우한 영화 전체</h1>
 
 
<br/><br/><br/><br/><br/>

      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             <ul class="ul태그">
        	 	<li >
        	 		<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}"><img src="${ldto.mdto.mimg}" alt="포스터"/></a><br/>
                 	<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}">${ldto.mdto.mtitle}</a></li>
               </ul>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
     
 </div>
 
</body>
</html>