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
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 수정" onclick="location.href='user_updateform.do'">
       <input type="button" value="마이 페이지" onclick="location.href='userinfo.do'">
     </td>
   </tr>
</table>

<div id="tabs">
  <ul>
    <li><a href="#tabs-1">즐겨찾기한 영화</a></li>
    <li><a href="#tabs-2">즐겨찾기한 유저</a></li>
  </ul>
  <div id="tabs-1">
        <table class="table table-striped" border="2">
      <col width="100px" />
      <col width="100px" />
      <tr>
         <td><img src="${mdto.mimg}"></td>   
      </tr>
      <tr>
         <td>${mdto.mtitle}</td>
      </tr>
   </table>
  </div>
  <div id="tabs-2">
    <table class="table table-striped" border="2">
      <col width="100px" />
      <col width="100px" />
      <tr>
         <td><img src="${udto.uimg}"></td>   
      </tr>
      <tr>
         <td>${udto.unick}</td>
      </tr>
   </table>
  </div>
</div>
 
 
</body>
</html>