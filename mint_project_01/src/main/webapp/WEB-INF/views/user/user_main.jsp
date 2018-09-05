<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.uimg>li{
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
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo.do'">
       <input type="button" value="즐겨찾기 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
</table>


  <h1>${ldto.unick}님의 선호영화</h1>


<table>
   <tr>
     <td>
         <ul class="uimg">
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
   
  <h1>${ldto.unick}님의 한줄평</h1>

<!-- <table  onclick="location.href='userreview.do'"> -->
<div onclick="location.href='userreview.do'">
   <ul class="reviewtext">
      <li>●${mdto.mtitle}-${rdto.rcontent}</li> <!-- <확인!>여기 </li>아니고 </td>로 되어있길래 고쳤는데 혹시 일부러 그런거면 돌려두세요~ -->
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
   </ul>
   <br/>
   <ul class="reviewtext">
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
   </ul>
   <br/>
</div>
  <h1>${ldto.unick}님의 영화 통계</h1>
</body>
</html>