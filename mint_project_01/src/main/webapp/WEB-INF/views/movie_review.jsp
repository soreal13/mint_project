<%@page import="com.mint.project.dtos.ReviewDto"%>
<%@page import="java.util.List"%>
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
	List<ReviewDto> rlist=(List<ReviewDto>)request.getAttribute("rlist");
%>
<body>
<div class="reviewview_box">
<h3>한줄평 보기</h3>
<%
	for(int i=0;i<rlist.size();i++){
		ReviewDto rdto=rlist.get(i);
	%> 
	<tr>
		<td>프사 (로그인)</td>
		<td>글쓴이아이디 / 댓글내용 : <%=rdto.getRcontent()%></td>
		<td><%=rdto.getRdate()%></td>
		<td>공감아이콘
			<%
			//만약에 로그인한 유저가 좋아요를 눌렀다면 색깔있는거. 아님 없는거... 체크 해서 다르게 해야함
			//리스트에 값은 다 들어있으니까 여기서 :2: 이런식으로 잘라서 확인후 출력할것.
		
			//로그인한 유저의 seq를 받아와야 함...
		
			%>
		
		</td>
		<td><%=rdto.getRup()%></td>
	</tr>
	<br/>
	<%
	}
	%>

</div>
</body>
</html>