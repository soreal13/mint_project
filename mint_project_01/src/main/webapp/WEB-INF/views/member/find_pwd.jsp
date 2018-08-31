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
<h2>비밀번호 찾기</h2>
<form action="findpwd.do" method="post">
<table border="1">
	<tr>
		<th>이메일</th>
		<td><input type="email" name="email" > </td>
	</tr>
</table>
<p>이메일로 임시 비밀번호를 보내드리겠습니다.</p>
<p>새로운 비밀번호를 확인 후 로그인 해주세요.</p>
<br/>
<p>로그인 후 반드시 비밀번호를 변경해주세요.</p>
<input type="submit" value="메일보내기">
</form>
</body>
</html>