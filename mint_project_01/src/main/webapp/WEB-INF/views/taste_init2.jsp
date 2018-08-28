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

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script  src="resources/js/taste_init.js"></script>


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
	    <input type="checkbox" id="taction" name="taction" />
	    <label for="taction"><span>액션</span></label>
		<input type="checkbox" id="tcomedy" name="tcomedy" />
		<label for="tcomedy"><span>코미디</span></label>
		<input type="checkbox" id="tcrime" name="tcrime" />
		<label for="tcrime"><span>범죄 </span></label>
		<input type="checkbox" id="tdrama" name="tdrama"/>
		<label for="tdrama"><span>드라마</span></label>
		<input type="checkbox" id="tfamily" name="tfamily" />
		<label for="tfamaily"><span>가족</span></label>
		<input type="checkbox" id="tfantasy" name="tfantasy" /> 
		<label for="tfantasy"><span>판타지</span></label><br/><br/>
		
		<input type="checkbox" id="tnoir" name="tnoir" />
		<label for="tnoir"><span>느와르</span></label>
		<input type="checkbox" id="tromance" name="tromance" />
		<label for="tromance"><span>로맨스</span></label>
		<input type="checkbox" id="tsf" name="tsf" />
		<label for="tsf"><span>SF</span></label>
		<input type="checkbox" id="thorror" name="thorror" />
		<label for="thorror"><span>공포</span></label>
		<input type="checkbox" id="tthriller" name="tthriller" />
		<label for="tthriller"><span>스릴러</span></label>
		<input type="checkbox" id="tanimation" name="tanimation" />
		<label for="tanimation"><span>애니메이션</span></label> <br/><br/>
		
		<input type="checkbox" id="twar" name="twar" />
		<label for="twar"><span>전쟁</span></label>
		<input type="checkbox" id="tdocumentary" name="tdocumentary" />
		<label for="tdocumentary"><span>다큐멘터리</span></label>
		<input type="checkbox" id="trabbit" name="trabbit" />
		<label for="trabbit"><span>토끼</span></label>
		<input type="checkbox" id="thotguy" name="thotguy" />
		<label for="thotguy"><span>미남</span></label>
		<input type="checkbox" id="thighteen" name="thighteen" />
		<label for="thighteen"><span>하이틴</span></label>
		<input type="checkbox" id="tcar" name="tcar" />
		<label for="tcar"><span>자동차</span></label> <br/><br/>		
		<input type="checkbox" id="tdomestic" name="tdomestic" />
		<label for="tdomestic"><span>국내영화</span></label>
		<input type="checkbox" id="tforeign" name="tforeign" />
		<label for="tforeign"><span>해외영화</span></label><br/><br/>

  <input type="button" name="next" class="next action-button" value="Next" />    
  </fieldset>  
  <fieldset>
    <h2 class="fs-title">Social Profiles</h2>
    <h3 class="fs-subtitle">Your presence on the social network</h3>
    <input type="text" name="twitter" placeholder="Twitter" />
    <input type="text" name="facebook" placeholder="Facebook" />
    <input type="text" name="gplus" placeholder="Google Plus" />
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="button" name="next" class="next action-button" value="Next" />
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Personal Details</h2>
    <h3 class="fs-subtitle">We will never sell it</h3>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name" />
    <input type="text" name="phone" placeholder="Phone" />
    <textarea name="address" placeholder="Address"></textarea>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <input type="submit" name="submit" class="submit action-button" value="Submit" />
  </fieldset>
</form>




</body>
</html>