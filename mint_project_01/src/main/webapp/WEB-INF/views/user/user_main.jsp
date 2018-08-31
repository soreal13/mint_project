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
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${udto.uimg}</td>
     <td>
       <input type="button" value="내 정보 수정" onclick="location.href='user_updateform.do'">
       <input type="button" value="즐겨찾기 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
</table>


  <h1>${dto.unick}님의 선호영화</h1>


<table>
   <tr>
     <td>
         <ul class="uimg">
         <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${dto.uimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
   
  <h1>${dto.unick}님의 한줄평</h1>

<!-- <table  onclick="location.href='userreview.do'"> -->
<div onclick="location.href='userreview.do'">
   <ul class="reviewtext">
      <li>●김밥김밥김밥김밥김밥김밥-아너무 노잼에다 짜증나서eeeeeeeeeeeeeeeeeeeeeeeeeee${dto.mtitle}-${rcontent}1</td>
      <li>●2${dto.mtitle}-${rcontent}2</li>
      <li>●3${dto.mtitle}-${rcontent}3</li>
   </ul>
   <br/>
   <ul class="reviewtext">
      <li>●4${dto.mtitle}-${rcontent}4</li>
      <li>●5${dto.mtitle}-${rcontent}5</li>
      <li>●6${dto.mtitle}-${rcontent}6</li>
   </ul>
   <br/>
</div>
  <h1>${dto.unick}님의 영화 통계</h1>
</body>
</html>