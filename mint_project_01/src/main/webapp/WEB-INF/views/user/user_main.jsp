<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mimg>li{
list-style: none;float: left;margin-left: 50px;
border:1px solid red; width: 130px; height: 180px;
}


.reviewtext>li{
width:400px; height:30px;; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
list-style: none;float: left;margin-left: 30px;
}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;"></td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo_user.do'">
       <input type="button" value="즐겨찾는 영화 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
</table>


  <h1>${ldto.unick}님의 선호영화</h1>


<table>
   <tr>
     <td>
         <ul class="mimg">
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
   
  <h1>${ldto.unick}님의 한줄평</h1>

<!-- <table  onclick="location.href='userreview.do'"> -->
<div onclick="location.href='userreview.do?useq=${ldto.useq}'">
   <ul class="reviewtext">
      <li>●${lldto[0].mdto.mtitle} ${lldto[0].rdto.rcontent}</li>
      <li>●${lldto[1].mdto.mtitle} ${lldto[1].rdto.rcontent}</li>
      <li>●${lldto[2].mdto.mtitle} ${lldto[2].rdto.rcontent}</li>
   </ul>
   <br/>
   <ul class="reviewtext">
      <li>●${lldto[3].mdto.mtitle} ${lldto[3].rdto.rcontent}</li>
      <li>●${lldto[4].mdto.mtitle} ${lldto[4].rdto.rcontent}</li>
      <li>●${lldto[5].mdto.mtitle} ${lldto[5].rdto.rcontent}</li>
   </ul>
   <br/>
</div>
  <h1>${ldto.unick}님께 추천해드리는 영화</h1>
  <div onclick="location.href='usergrade.do?useq=${ldto.useq}'">
<table>
   <tr>
     <td>
         <ul class="mimg">
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
  </div>
  
</body>
</html>