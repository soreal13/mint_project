<%@page import="com.mint.project.dtos.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<%

	MovieDto mdto=(MovieDto)request.getAttribute("mdto");

%>
<body>
<div class="movieupload_box">
	<form action="movieupload.do" method="post">
		<h3>한줄평 작성하기</h3>
			<table border="1">
				<col width="50"><col width="80">
				<tr>
					<td>영화제목</td>
					<td><input type="text" name="mtitle">${mdto.mtitle}</td>
				</tr>
				<tr>
					<td>개봉일</td>
					<td><input type="text" name="mshowddate">${mdto.mshowddate}</td>
				</tr>
				<tr>
					<td>감독</td>
					<td><input type="text" name="mdirector">${mdto.mdirector}</td>
				</tr>
				<tr>
					<td>주연배우</td>
					<td><input type="text" name="mactor">${mdto.mactor}</td>
				</tr>
				<tr>
					<td>연령가</td>
					<td>
						<select name="mage">
							<option value="전체" selected="selected">전체</option>
							<option value="15세">15세</option>
							<option value="19세">19세</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>장르</td>
					<td>
						<select name="mkeyw">
							<option value="액션">액션</option>
							<option value="코미디">코미디</option>
							<option value="범죄">범죄</option>
							<option value="다큐멘터리">다큐멘터리</option>
							<option value="드라마">드라마</option>
							<option value="가족">가족</option>
							<option value="판타지">판타지</option>
							<option value="느와르">느와르</option>
							<option value="공포">공포</option>
							<option value="뮤지컬">뮤지컬</option>
							<option value="미스테리">미스테리</option>
							<option value="로맨스">로맨스</option>
							<option value="공상과학">공상과학</option>
							<option value="스포츠">스포츠</option>
							<option value="스릴러">스릴러</option>
							<option value="전쟁">전쟁</option>
							<option value="애니메이션">애니메이션</option>
							<option value="어린이">어린이</option>
							<option value="사극">사극</option>
							<option value="로맨스코미디">로맨스코미디</option>
							<option value="하이틴">하이틴</option>
							<option value="재난">재난</option>
							<option value="무협">무협</option>
							<option value="서부">서부</option>
							<option value="미남">미남</option>
							<option value="토끼">토끼</option>
							<option value="자동차">자동차</option>
							<option value="해외영화">해외영화</option>
							<option value="국내영화">국내영화</option>
						</select>
<!-- 						자바스크립트: 여기서 select한걸 읽어서 아래 text에 추가되게 하기  -->
					</td>
				</tr>
				<tr>
					<td>줄거리</td>
					<td><textarea rows="10" cols="60" name="msummary">${mdto.msummary}</textarea></td>
				</tr>
				<tr>
					<td>MD Pick 여부</td>
					<td>
						<select>
							<option value="Y">O</option>
							<option value="N">X</option>
						</select>
					</td>
				</tr>	
				<tr>
				<td colspan="2"><input type="submit" value="정보수정"></td>
				</tr>
				</table>
	</form>
</div>
</body>
</html>