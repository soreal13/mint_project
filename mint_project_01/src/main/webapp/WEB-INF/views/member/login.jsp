<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script type="text/javascript">

function login() {
    var form = document.getElementById("loginForm");
    //TODO 유효성 검사
    return true;
}        

</script>

</head>
<body>
<div id="container">
<h1>반갑습니다.</h1>
   <form id="loginForm" action="getin.do" method="POST" onsubmit="return login()">
      <div class="table">
         <div class="tr">
            <div class="td">이메일</div>  
            <div class="td"><input type="email" name="uemail"></div>  
         </div>
         <div class="tr">
            <div class="td">비밀번호</div>  
            <div class="td"><input type="password" name="upwd"></div>  
         </div>
         <div id="li">
         <input type="submit" value="LOGIN">         
         </div>
         </div>         
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