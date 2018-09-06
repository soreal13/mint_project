<%@page import="com.mint.project.dtos.MovieDto"%>
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
<style type="text/css">


</style>
</head>
<%
	MovieDto mdto=(MovieDto)request.getAttribute("mdto");
	List<ReviewDto> rlist=(List<ReviewDto>)request.getAttribute("rlist");
	String chkF=(String)request.getAttribute("chkF");
%>
<body>
<!-- 민지코드 -->
<%@include file="header.jsp"%>
<div class="movieimg"><img src="${mdto.mimg}" class="movieimg" alt="${mdto.mtitle}"></div>
<div class="movieinfo">
<h3>${mdto.mtitle}</h3>
<h5>${mdto.mdirector}</h5>
<h5>${mdto.mactor}</h5>
<div class="summary_box">${mdto.msummary}</div>

<div class="iconbox">

<img src="resources/img/M_urlcopy.png" src="url복사">

       <%
       if(chkF=="Y"){
              %>
<!--               빨간하트 -->
              <img src="resources/img/M_like2.png" onclick="location.href='delFollow.do?mseq=${mdto.mseq}&useq=2'">
              <%
       } else {
              %>
<!--               회색하트 -->
              <img src="resources/img/M_like1.png" onclick="location.href='updateFollow.do?mseq=${mdto.mseq}&useq=2'">
              <%
       }
       %>

</div>

<h3>${mdto.mkeyw}</h3>
</div>

<div class="reviewview_box">
<h3>한줄평 보기</h3>
<%
	int a=mdto.getMseq();
	for(int i=0;i<rlist.size();i++){
	    ReviewDto rdto=rlist.get(i);

	    
	 %> 
	 <tr>
	    <td>프사</td>
	    <td>글쓴이아이디:<%=rdto.getRunick()%> / 댓글내용 : <%=rdto.getRcontent()%></td>
	    <td><%=rdto.getRdate()%></td>
	    <td>
	       <%
	       //만약에 로그인한 유저가 좋아요를 눌렀다면 색깔있는거. 아님 없는거... 체크 해서 다르게 해야함
	       //리스트에 값은 다 들어있으니까 여기서 :2: 이런식으로 잘라서 확인후 출력할것.
	       String str=""+rdto.getRupuseq();
	       int sample_useq = 2; // 로그인 한 유저의  seq 를 받아와야 함. 추후에 수정
	       String user_useq=""+sample_useq;
	       String target=":"+user_useq+":";
	       String isit = "";
	       if(str.contains(target)) {
	          System.out.println("문자열있음/이미 공감한 리뷰");
	          %>
	          <img src="resources/img/M_b2.png" onclick="location.href='updateDown.do?rseq=<%=a%>&useq=2'">
	          <%
	       } else {
	          System.out.println("문자열없음/아직 공감누르기 전인 리뷰");
	          %>
	          <img src="resources/img/M_b1.png" onclick="location.href='updateUp.do?rseq=<%=a%>&useq=2'">
	          <%
	       }
	}
	       %>
	    
    </td>

</div>
</body>
</html>