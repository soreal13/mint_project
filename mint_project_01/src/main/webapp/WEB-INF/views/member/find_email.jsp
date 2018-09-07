<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
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

</head>
<body>
<%@include file="../header.jsp"%>
<h2>이메일 찾기</h2>
<form action="findemail_user.do" method="post">
<table border="1">
   <tr>
      <th>MINT관리자 메일</th>
      <td><input type="email" name="tomail"  value="ejswhp@gmail.com" readonly="readonly"> </td>
      
   </tr>
   <tr>
      <th>제목</th>
      <td><input type="text" name="title" placeholder="을 입력해 주세요" required="required" > </td>      
   </tr>   
   <tr>
      <th>별 &답변받을 이메일</th>
      <td><textarea rows="10" cols="30" name="content" placeholder="별명&답변받을 이메일을 적어주세요." class="form-control" required="required" ></textarea></td>
   </tr>
   <tr>
      <td colspan="2"><input type="submit" value="문의보내기" class="btn btn-warning" >
      </td>
   </tr>   
</table>
</form>
<p>고객님. 확인 후에 메일을 보내드리겠습니다</p>
<p>답변에는 일주일이상 소요될 수 있습니다.</p>
</body>
</html>