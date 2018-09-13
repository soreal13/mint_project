<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap -->
<link href='<c:url value="/css/bootstrap.min.css" />' rel="stylesheet">
<link href='<c:url value="/css/kfonts2.css" />' rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src='<c:url value="/jquery/jquery-1.11.3.min.js" />'></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src='<c:url value="/js/bootstrap.min.js"  />'></script>

<title>아이디 찾기</title>
<style type="text/css">

   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }

   #i{ width: 1000px; height: 300px; margin: 0 auto;}
   #o{ width: 430px; height: 130px; margin-left: 300px; margin-top: 20px; margin-bottom: 20px;}

   #u{height: 500px;
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
            height:100%;
              position: absolute;
              left: 0px;
              top:0px;
              opacity:0.7;
              z-index: -1;
       }   
   
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div id="u">
<div id="i">
<h1 align="center" style="color: #96ffd4;">이메일 찾기</h1>
<form action="findemail_user.do" method="post">
<table id="o">
   <tr>
      <th>MINT관리자 메일</th>
      <td><input type="email" name="tomail"  value="ejswhp@gmail.com" readonly="readonly" style="text-align: letter-spacing;width:300px;height: 25px; " /> </td>
      
   </tr>
   <tr>
      <th>제목</th>
      <td><input type="text" name="title" placeholder="을 입력해 주세요" required="required" style="text-align: letter-spacing;width:300px;height: 25px; "> </td>      
   </tr>   
   <tr>
      <th>답변받을 이메일</th>
      <td><textarea rows="10" cols="40" name="content" placeholder="별명&답변받을 이메일을 적어주세요." class="form-control" required="required" ></textarea></td>
   </tr>
   <tr>
      <td colspan="2" align="right"><input type="submit" value="문의보내기" class="btn btn-warning" >
      </td>
   </tr>   
</table>
</form>
<h3><font color="orange">고객님. 확인 후에 메일을 보내드리겠습니다</h3>
<h4><font color="orange">답변에는 일주일이상 소요될 수 있습니다.</h4>
</div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>