<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

       .배경div{
       position:relative;
       width: 1600px;
       height:1000px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       margin-bottom: auto;
       padding-top: 200px;
       font-size: 20px;
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
       
       #div{
       text-align: center;
       
       }
       
       #table{
	   margin: auto;
       height: 500px;
       }
       
  Button {
	background-color:#44c767;
	-moz-border-radius:28px;
	-webkit-border-radius:28px;
	border-radius:28px;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:16px 31px;
	text-decoration:none;
	text-shadow:0px 1px 0px #2f6627;
}
Button:hover {
	background-color:#5cbf2a;
}
Button:active {
	position:relative;
	top:1px;
}

</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div id="div" class="배경div">
<h1>나의정보</h1>
<br/><br/><br/><br/>
<table border="1" id="table">
	<col width="200px">
	<col width="400px">
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