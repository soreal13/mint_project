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
li {

	text-align:center;
	font-size: 25px;
	color: black;
	list-style: none;
	float: left;
	margin-right: 50px;
}

li img{
	width: 250px;
	height: 350px;
}


.배경div{
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
 }
</style>
<title>글목록보기</title>

</head>
<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<table id="회원정보">
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="메인으로" onclick="location.href='usermain_user.do?useq=${ldto.useq}'">
     </td>
   </tr>
 </table>
<br/><br/><br/><br/><br/>
<table class="table table-striped"  class="abc" >
      <col width="10px" />
      <col width="50px" />

      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             <ul class="ul태그">
        	 	<li>
        	 		<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}"><img src="${ldto.mdto.mimg}" alt="포스터"/></a><br/>
                 	<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}">${ldto.mdto.mtitle}</a></li>
               </ul>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
     
   </table>
 </div>
 
</body>
</html>