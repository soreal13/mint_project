<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="resources/css/taste_init.css">
<link rel="stylesheet" href="resources/css/starpoint.css">
<title>Insert title here</title>
</head>
<body>
1

<a href="taste_init.do">취향창 가기</a>
<br/><br/>

<textarea rows="10" cols="60" name="testAjax2"></textarea>

<span>별점 테스트</span><br/><br/>
<span class="star-input">
  <span class="input">
    <input type="radio" name="star-input" id="p1" value="1"><label for="p1">0.5</label>
    <input type="radio" name="star-input" id="p2" value="2"><label for="p2">1</label>
    <input type="radio" name="star-input" id="p3" value="3"><label for="p3">1.5</label>
    <input type="radio" name="star-input" id="p4" value="4"><label for="p4">2</label>
    <input type="radio" name="star-input" id="p5" value="5"><label for="p5">2.5</label>
    <input type="radio" name="star-input" id="p6" value="6"><label for="p6">3</label>
    <input type="radio" name="star-input" id="p7" value="7"><label for="p7">3.5</label>
    <input type="radio" name="star-input" id="p8" value="8"><label for="p8">4</label>
    <input type="radio" name="star-input" id="p9" value="9"><label for="p9">4.5</label>
    <input type="radio" name="star-input" id="p10" value="10"><label for="p10">5</label>
  </span>
  <output for="star-input"><b>0</b>점</output> 
</span>


<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="resources/js/taste_init.js"></script>
<script src="resources/js/starpoint.js"></script>
</body>
</html>