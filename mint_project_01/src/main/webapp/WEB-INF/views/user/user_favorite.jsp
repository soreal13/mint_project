<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>

</head>
<body>
<!-- 프로필관련 -->
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${udto.uimg}</td>
     <td>
       <input type="button" value="내 정보 수정" onclick="location.href='user_updateform.do'">
       <input type="button" value="마이 페이지" onclick="location.href='userinfo.do'">
     </td>
   </tr>
</table>

<!-- <div id="tabs"> -->
<!--   <ul> -->
<!--     <li><a href="#tabs-1">즐겨찾기한 영화</a></li> -->
<!--     <li><a href="#tabs-2">즐겨찾기한 유저</a></li> -->
<!--   </ul> -->
<!--   <div id="tabs-1"> -->
<!--   	<ul> -->
<%--   		<li>${dto.mimg}</li> --%>
<%--   		<li>${dto.mtitle}</li> --%>
<!--   	</ul> -->
<!--   </div> -->
<!--   <div id="tabs-2"> -->
<!--     <ul> -->
<%--   		<li>${dto.uimg}</li> --%>
<%--   		<li>${dto.nnick}</li> --%>
<!--   	</ul> -->
<!--   </div> -->
<!-- </div> -->
 
 
</body>
</html>