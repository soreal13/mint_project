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
#abc{
list-style: none;float: left;margin-left: 50px;
border:1px solid red; width: 200px; height: 250px;
}

</style>
<title>글목록보기</title>
<script type="text/javascript">
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
</head>
<body>
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 수정" onclick="location.href='user_updateform.do'">
       <input type="button" value="마이 페이지" onclick="location.href='userinfo.do'">
     </td>
   </tr>
</table>

<table class="table table-striped"  class="abc" >
      <col width="100px" />
      <col width="50px" />

      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             <tr>
        	 <th id="abc"><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></th>
     		 </tr>
               <tr>
                  <td>${ldto.mdto.mtitle}</td>
               </tr>
            </c:forEach>            
         </c:otherwise>
      </c:choose>
     
   </table>
 
 
</body>
</html>