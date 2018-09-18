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

/* 배경 관련 */
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
       
/* 이미지 크기 */
li img{
	width: 280px;
	height: 380px;
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

#title{
width:300px; height:30px;; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
list-style: none;float: left;
}

.imgtable{
	padding-left: 75px;
}
	
</style>
<title>MINT!! ::글목록보기</title>

</head>
<body>
<%@include file="../header.jsp"%>
<div class="배경div">
<h1>팔로우한 영화 전체</h1>
 
 
<br/><br/><br/><br/><br/>
 <table class="imgtable">
   <tr>
     <td>
		<ul class="ul태그">
      <c:choose>
         <c:when test="${empty lists}">
         </c:when>
         <c:otherwise>
            <c:forEach var = "ldto" items="${lists}">
             
        	 	<li >
        	 		<a href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}"><img src="${ldto.mdto.mimg}" alt="포스터"/></a><br/>
                 	<a  id="title" href="movie_info.do?mseq=${ldto.mdto.mseq}&useq=${lldto.useq}">${ldto.mdto.mtitle}</a></li>
               
               
            </c:forEach>            
         </c:otherwise>
      </c:choose>
	 	</ul>
     </td>
   </tr>
</table>
 </div>
 <%@include file="../footer.jsp"%>
</body>
</html>