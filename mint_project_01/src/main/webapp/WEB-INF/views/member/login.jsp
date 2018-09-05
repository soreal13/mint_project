<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script type="text/javascript">
//추가
//function login() {
//    var form = document.getElementById("loginForm");
//    //TODO 유효성 검사
//    return true;
//}        

</script>

</head>
<body>
<!-- 추가 onsubmit -->
<div id="container"> 
<h1>반갑습니다.</h1>
<form id="loginForm" action="getin.do" method="POST">
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
		<td colspan="2"><input type="submit" value="LOGIN"></td>
	</tr>
</table>      
</form>
</div>
         
<div id="fe" >   
<h4><a href="findemail.do">이메일이 기억나지 않습니다.</a></h4>             
</div>
<div id="fp" > 
<h4><a href="findpwd.do">비밀번호가 기억나지 않습니다.</a></h4>              
</div>         
<div id="rf" >
<h2>아직 아이디가 없으시다면,<a href="signin.do" >회원가입하기</a></h2>
</div>
      
   

</body>
</html>