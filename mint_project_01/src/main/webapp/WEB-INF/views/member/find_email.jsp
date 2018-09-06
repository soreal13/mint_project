<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../header.jsp"%>
<h2>이메일 찾기</h2>
<form action="findemail.do" method="post">
<table border="1">
	<tr>
		<th>별명</th>
		<td><input type="text" name="nickname"> </td>
	</tr>
	<tr>
		<th>답변받을 이메일</th>
		<td><input type="email" name="email" > </td>
	</tr>
	<tr>
		<th>문의 내용</th>
		<td><textarea rows="10" cols="30" name="content"></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="문의보내기" >
		</td>
	</tr>	
</table>
</form>
<p>고객님. 확인 후에 메일을 보내드리겠습니다</p>
<p>답변에는 일주일이상 소요될 수 있습니다.</p>
</body>
</html>