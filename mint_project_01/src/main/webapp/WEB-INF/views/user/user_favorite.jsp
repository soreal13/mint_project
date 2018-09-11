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
	left: auto; 
}

li img{
	width: 300px;
	height: 450px;
}

</style>
<title>글목록보기</title>
<script type="text/javascript">

  </script>
</head>
<body>
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="메인으로" onclick="location.href='usermain_user.do?useq=${ldto.useq}'">
     </td>
   </tr>
 </table>

<table class="table table-striped"  class="abc" >
      <col width="10px" />
      <col width="50px" />

      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             <ul>
        	 	<li>
        	 		<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}"><img src="${ldto.mdto.mimg}" alt="포스터"/></a><br/>
                 	<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}">${ldto.mdto.mtitle}</a></li>
               </ul>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
     
   </table>
 
 
</body>
</html>