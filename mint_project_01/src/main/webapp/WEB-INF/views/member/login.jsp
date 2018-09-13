<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<style type="text/css">

   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }

   #i{ width: 1000px; height: 300px; margin: 0 auto;}
   #o{width: 360px; height: 130px; margin-left: 300px; margin-top: 20px; margin-bottom: 20px;}
   
   #u{ height: 500px;
       position:relative;
       width: 1600px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       }
    #u:after{
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
       h1{margin-top: 50px;
       font-family: 'mint_bodyfont'}
       
    
   a{text-decoration: none;}
   .b{font-family: 'mint_bodyfont'}
</style>

</head>
<body>
<%@include file="../header.jsp"%>
<div id="u">
<div id="i"> 
<h1 align="center" style="color: #96ffd4;"  >HAPPY TO MINT YOU</h1>
<form id="loginForm" action="getin.do" method="POST">
<table id="o">
   <tr>
      <td><h2>이메일</h2></td>
      <td><input type="email" name="uemail" required="required" style="text-align: letter-spacing;width:250px;height: 30px; " size="120;"></td>
   </tr>     
   <tr>
      <td><h2>비밀번호</h2></td>
      <td><input type="password" name="upwd" required="required" style="text-align: letter-spacing;width:250px;height: 30px; "></td>
   </tr>
   <tr>
      <td colspan="2" align="center"><input type="submit" value="LOGIN" style="height: 30px; width: 100px;"></td>
   </tr>
</table>      
</form>
<a href="findemail.do" ><h3>이메일이 기억나지 않습니다.</h3></a> 
<a href="findpwd.do"><h3>비밀번호가 기억나지 않습니다.</h3></a>        
<font size="4">아직 아이디가 없으시다면,</font><a class="b" href="signin.do" style="font-size: 28px; color: #96ffd4">회원가입하기!!</a>
</div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>