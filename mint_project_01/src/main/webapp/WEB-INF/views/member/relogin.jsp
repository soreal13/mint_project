<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<style type="text/css">
   #i{width: 19%; height: 100px; margin: 0 auto 0 auto; margin-top:170px;}
</style>


</head>
<body>
<%@include file="../header.jsp"%>
<div id="i"> 
<form id="loginForm" action="getin.do" method="POST">
<p><font color="red"> 입력하신 회원정보가 틀렸습니다.</font></p>
<p><font color="red"> 다시 로그인 해주세요.</font></p>
<table>
   <tr>
      <td>이메일</td>
      <td><input type="email" name="uemail"></td>
   </tr>     
   <tr>
      <td>비밀번호</td>
      <td><input type="password" name="upwd"></td>
   </tr>
   <tr>
      <td colspan="2" align="center"><input type="submit" value="LOGIN"></td>
   </tr>
</table>      
</form>

         

<h4><a href="findemail.do">이메일이 기억나지 않습니다.</a></h4> 
<h4><a href="findpwd.do">비밀번호가 기억나지 않습니다.</a></h4>    
<h3>아직 아이디가 없으시다면,</h3><h2><a href="signin.do" >회원가입하기</a></h2>
</div>
      
   

</body>
</html>