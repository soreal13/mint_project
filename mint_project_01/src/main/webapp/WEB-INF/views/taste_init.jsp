<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT: 초기취향창!영화를 평가해주세요!</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="resources/css/taste_init.css">
<link rel="stylesheet" href="resources/css/starpoint.css">

</head>
<body>
<!-- multistep form -->
<div id="msform">

  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Step 1: 장르 선택하기</li>
    <li>Step 2: 영화 평가하기</li>
    <li>Step 3: 완료! MINT를 시작합니다!</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <form>
    <h2 class="fs-title">${ldto.unick}님 반갑습니다.</h2>
    <h3 class="fs-subtitle">${ldto.unick}님에 대해 알려주세요!</h3>
    <h5>좋아하는 장르를 선택해주세요!</h5><br/><br/>
    <input type="hidden" id="userseq" value="${ldto.useq}" />
    <!-- 체크되는 것은 1, 아닌 것은 0 넣기  -->
	    <input type="checkbox" id="taction" name="taction" value="1" />
	    <label for="taction"><span>액션</span></label>
		<input type="checkbox" id="tcomedy" name="tcomedy" value="1" />
		<label for="tcomedy"><span>코미디</span></label>
		<input type="checkbox" id="tcrime" name="tcrime" value="1" />
		<label for="tcrime"><span>범죄 </span></label>
		<input type="checkbox" id="tdocumentary" name="tdocumentary" value="1" />
		<label for="tdocumentary"><span>다큐멘터리</span></label>
		<input type="checkbox" id="tdrama" name="tdrama" value="1"/>
		<label for="tdrama"><span>드라마</span></label>
		<input type="checkbox" id="tfamily" name="tfamily" value="1" />
		<label for="tfamaily"><span>가족</span></label><br/><br/>

		<input type="checkbox" id="tfantasy" value="name" value="1" /> 
		<label for="tfantasy"><span>판타지</span></label>		
		<input type="checkbox" id="tnoir" value="name" value="1" />
		<label for="tnoir"><span>느와르</span></label>
		<input type="checkbox" id="thorror" name="thorror" value="1" />
		<label for="thorror"><span>공포</span></label>				
		<input type="checkbox" id="tromance" name="tromance" value="1" />
		<label for="tromance"><span>로맨스</span></label>
		<input type="checkbox" id="tsf" name="tsf" value="1" />
		<label for="tsf"><span>SF</span></label>
		<input type="checkbox" id="tthriller" name="tthriller" value="1" />
		<label for="tthriller"><span>스릴러</span></label>			
		<input type="checkbox" id="twar" name="twar" value="1" />
		<label for="twar"><span>전쟁</span></label> <br/><br/>	
		
		<input type="checkbox" id="tcar" name="tcar" value="1" />
		<label for="tcar"><span>자동차</span></label>	
		<input type="checkbox" id="trabbit" name="trabbit" value="1" />		
		<label for="trabbit"><span>토끼</span></label>
		<input type="checkbox" id="tanimation" name="tanimation" value="1" />
		<label for="tanimation"><span>애니메이션</span></label>	
		<input type="checkbox" id="thotguy" name="thotguy" value="1" />
		<label for="thotguy"><span>미남</span></label>
		<input type="checkbox" id="thighteen" name="thighteen" value="1" />
		<label for="thighteen"><span>하이틴</span></label> <br/><br/>
	
		<input type="checkbox" id="tdomestic" name="tdomestic" value="1" />
		<label for="tdomestic"><span>국내영화</span></label>
		<input type="checkbox" id="tforeign" name="tforeign" value="1" />
		<label for="tforeign"><span>해외영화</span></label><br/><br/>


  <input type="button" name="next" class="next action-button" value="Next" />
  </form>
  </fieldset>  
   
  <fieldset>
  <form id="form2">
    <h2 class="fs-title">${ldto.unick}님의 취향에 대해 좀더 알려주세요!</h2>
    <h3 class="fs-subtitle">영화에 별점을 매겨주세요!</h3>
    
<!--     <textarea rows="10" cols="60" name="testAjax"></textarea> -->
<!-- 	피씨방 작성코드 -->
	<div id=mseq class="mseq"  >
	    <h3 class="fs-subtitle">p.s 선택한 장르가 아닌 영화도 나와요^^; 당황하지 마셔요!</h3>	 
		<img src="http://" alt="mimg" id="mimg" class="poster">
		<input type="hidden" id="count" value=0 />
		<input type="hidden" id="userseq" value="${ldto.useq}" />
		<br/>
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
		<br/><br/>
		<input type="button" class="unseen form2-button" name="unseen" value="안봤어요" />
		<input type="button" class="unlike form2-button" name="unlike" value="관심 없어요" />	
	    <br/><br/>
    </div>
    <input type="hidden" id="form2-next" name="next" class="next action-button" value="Next"  /><br/>
    </form>
  </fieldset>
  
  <fieldset>
  <form>
    <h2 class="fs-title">${ldto.unick}님 환영합니다!</h2>
    <h3 class="fs-subtitle">MINT: Movie into에 어서 오세요!!</h3>
    
    <h3 class="fs-subtitle">반갑습니다!</h3>
    <h3 class="fs-subtitle">MINT: <b>M</b>ovie <b>INT</b>o!</h3>
    <h3 class="fs-subtitle"><b>M</b> ove <b>INt</b> o the <b>MINT!</b></h3>        

<!--     <input type="button" name="previous" class="previous action-button" value="Previous" /><br/> -->
   <input type="button" name="submit" class="submit action-button" value="Submit" /><br/>
  </form>
  </fieldset>

</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="resources/js/taste_init.js"></script>
<script src="resources/js/starpoint.js"></script>



</body>
</html>