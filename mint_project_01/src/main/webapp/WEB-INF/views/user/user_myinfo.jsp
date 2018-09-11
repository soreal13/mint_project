<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#div{
border: 2px solid red;
	margin:auto;
	margin-top: 200px;
	margin-left: 40%;
	position: fixed;
}


</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div id="div">
<h1>나의정보</h1>
<table border="2">
      <tr>
         <th>이메일</th>
         <td>${ldto.uemail}</td>
      </tr>
      <tr>
         <th>별명</th>
         <td>${ldto.unick}</td>
      </tr>
      <tr>
         <th>프로필사진</th>
         <td>${ldto.uimg}</td>
      </tr>
      <tr>
         <td colspan="2">
            <button onclick="location.href='user_updateform.do?useq=${ldto.useq}'">수정</button>
            <button onclick="location.href='deluser.do?useq=${ldto.useq}'">탈퇴</button>
            <button onclick="location.href='usermain_user.do?useq=${ldto.useq}'">메인으로</button>
         </td>
      </tr>
   </table>
</div>
</body>
</html>