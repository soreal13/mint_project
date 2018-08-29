<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>영화를 평가해주세요!</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="resources/css/taste_init.css">


</head>
<body>

<!-- multistep form -->
<form id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Step 1: 장르 선택하기</li>
    <li>Step 2: 영화 평가하기</li>
    <li>Step 3: 완료! MINT를 시작합니다!</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">${ldto.nick}님 반갑습니다.</h2>
    <h3 class="fs-subtitle">${ldto.nick}님에 대해 알려주세요!</h3>
    <h5>좋아하는 장르를 선택해주세요!</h5><br/><br/>
    
    <!-- 체크되는 것은 1, 아닌 것은 0 넣기  -->
	    <input type="checkbox" id="taction" value="taction" name="chk" />
	    <label for="taction"><span>액션</span></label>
		<input type="checkbox" id="tcomedy" value="tcomedy" name="chk" />
		<label for="tcomedy"><span>코미디</span></label>
		<input type="checkbox" id="tcrime" value="tcrime" name="chk" />
		<label for="tcrime"><span>범죄 </span></label>
		<input type="checkbox" id="tdocumentary" value="tdocumentary" name="chk" />
		<label for="tdocumentary"><span>다큐멘터리</span></label>
		<input type="checkbox" id="tdrama" value="tdrama" name="chk"/>
		<label for="tdrama"><span>드라마</span></label>
		<input type="checkbox" id="tfamily" value="tfamily" name="chk" />
		<label for="tfamaily"><span>가족</span></label><br/><br/>

		<input type="checkbox" id="tfantasy" value="tfantasy" name="chk" /> 
		<label for="tfantasy"><span>판타지</span></label>		
		<input type="checkbox" id="tnoir" value="tnoir" name="chk" />
		<label for="tnoir"><span>느와르</span></label>
		<input type="checkbox" id="thorror" value="thorror" name="chk" />
		<label for="thorror"><span>공포</span></label>				
		<input type="checkbox" id="tromance" value="tromance" name="chk" />
		<label for="tromance"><span>로맨스</span></label>
		<input type="checkbox" id="tsf" value="tsf" name="chk" />
		<label for="tsf"><span>SF</span></label>
		<input type="checkbox" id="tthriller" value="tthriller" name="chk" />
		<label for="tthriller"><span>스릴러</span></label>			
		<input type="checkbox" id="twar" value="twar" name="chk" />
		<label for="twar"><span>전쟁</span></label> <br/><br/>	
		
		<input type="checkbox" id="tcar" value="tcar" name="chk" />
		<label for="tcar"><span>자동차</span></label>	
		<input type="checkbox" id="trabbit" value="trabbit" name="chk" />		
		<label for="trabbit"><span>토끼</span></label>
		<input type="checkbox" id="tanimation" value="tanimation" name="chk" />
		<label for="tanimation"><span>애니메이션</span></label>	
		<input type="checkbox" id="thotguy" value="thotguy" name="chk" />
		<label for="thotguy"><span>미남</span></label>
		<input type="checkbox" id="thighteen" value="thighteen" name="chk" />
		<label for="thighteen"><span>하이틴</span></label> <br/><br/>
	
		<input type="checkbox" id="tdomestic" value="tdomestic" name="chk" />
		<label for="tdomestic"><span>국내영화</span></label>
		<input type="checkbox" id="tforeign" value="tforeign" name="chk" />
		<label for="tforeign"><span>해외영화</span></label><br/><br/>

  <input type="button" name="next" class="next action-button" value="Next" />    
  </fieldset>  
  <fieldset>
    <h2 class="fs-title">${ldto.nick}님의 취향에 대해 좀더 알려주세요!</h2>
    <h3 class="fs-subtitle">영화에 별점을 매겨주세요!</h3>
    <input type="text" name="twitter" placeholder="Twitter" />
    <input type="text" name="facebook" placeholder="Facebook" />
    <input type="text" name="gplus" placeholder="Google Plus" /><br/>
    <input type="button" name="previous" class="previous action-button" value="Previous" /><br/>
    <input type="button" name="next" class="next action-button" value="Next" /><br/>
  </fieldset>
  <fieldset>
    <h2 class="fs-title">${ldto.nick}님 환영합니다!</h2>
    <h3 class="fs-subtitle">MINT: Movie into에 어서 오세요!!</h3>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name" />
    <input type="text" name="phone" placeholder="Phone" />
    <textarea name="address" placeholder="Address"></textarea><br/>
    <input type="button" name="previous" class="previous action-button" value="Previous" /><br/>
    <input type="submit" name="submit" class="submit action-button" value="Submit" /><br/>
  </fieldset>
</form>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="resources/js/taste_init.js"></script>


</body>
</html>