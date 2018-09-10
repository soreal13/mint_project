<%@page import="com.mint.project.dtos.UserDto"%>
<%@page import="com.mint.project.dtos.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.net.URLDecoder"%>
 <!DOCTYPE html>

<html>

<head>
  <meta charset="UTF-8">
  <title>MINT!!</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>
<link rel="stylesheet" href="resources/css/style.css">

<%@include file="WEB-INF/views/header.jsp"%>
<style type="text/css">
   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }


#menubar{
width: 230px;
height: 45px;
}
#menubar2{
width: 210px;
height: 40px;
}
#menubar3{
width: 126px;
height: 35px;
}
#menubar4{
width:240px;
height:40px;
}

h2{
   font-family: 'mint_catefont' !important;
   font-size: 30pt;
   font-color :  #595959;
   align-self: left;
}

</style>


</head>
<body>
<hr/>
<!-- 1. 지금 이영화 -->

  <div class="container">   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">        
      </div>
      <h2>지금 봐야할 이 영화</h2>
         <!-- Slider -->
        <div class="slider responsive r1">
          <div>
					<img src="https://movie-phinf.pstatic.net/20180806_112/1533528494465BJWKD_JPEG/movie_image.jpg" alt="서치" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180730_82/15329286640280Wu1t_JPEG/movie_image.jpg" alt="너의결혼식" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180703_65/15305852198817R6a1_JPEG/movie_image.jpg" alt="신과함께 인과연" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180808_39/1533692610471D6ej4_JPEG/movie_image.jpg" alt="맘마미아2" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180903_82/1535950798822Wn1rG_JPEG/movie_image.jpg" alt="어드리프트" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180523_234/1527043720337JCQAP_JPEG/movie_image.jpg" alt="미션임파서블" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180809_300/1533777494802DpYwf_JPEG/movie_image.jpg" alt="나를 차버린 스파이" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180906_294/1536198017608vktxF_JPEG/movie_image.jpg" alt="나비잠" />
					</div>
        </div>
				 <!-- control arrows -->
				<div class="prev p1">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</div>
				<div class="next n1">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</div>
				
      </div>
    </div>
  </div>
<hr/>

<!-- 이런영화 어때요? MDPICK! 별점 추천 -->


<div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
        <h2>이런 영화 어때요? MD PICK!</h2>
         <!-- Slider -->
        <div class="slider responsive r2">
          <div>
					<img src="https://movie-phinf.pstatic.net/20180806_112/1533528494465BJWKD_JPEG/movie_image.jpg" alt="서치" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180730_82/15329286640280Wu1t_JPEG/movie_image.jpg" alt="너의결혼식" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180703_65/15305852198817R6a1_JPEG/movie_image.jpg" alt="신과함께 인과연" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180808_39/1533692610471D6ej4_JPEG/movie_image.jpg" alt="맘마미아2" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180903_82/1535950798822Wn1rG_JPEG/movie_image.jpg" alt="어드리프트" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180523_234/1527043720337JCQAP_JPEG/movie_image.jpg" alt="미션임파서블" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180809_300/1533777494802DpYwf_JPEG/movie_image.jpg" alt="나를 차버린 스파이" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180906_294/1536198017608vktxF_JPEG/movie_image.jpg" alt="나비잠" />
					</div>
        </div>
				 <!-- control arrows -->
				<div class="prev p2">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</div>
				<div class="next n2">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</div>
				
      </div>
    </div>
  </div>
<hr/>

<!-- 개봉예정작 -->

<div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
        <h2>개봉예정작</h2>
         <!-- Slider -->
        <div class="slider responsive r3">
          <div>
					<img src="https://movie-phinf.pstatic.net/20180831_150/1535703792387FDnCB_JPEG/movie_image.jpg" alt="더 프레데터" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180831_242/15356959860648KyJN_JPEG/movie_image.jpg" alt="더 게스트" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180817_13/1534473493720DoFgP_JPEG/movie_image.jpg" alt="타사튜더" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180820_88/1534741971628EVrim_JPEG/movie_image.jpg" alt="봄이가도" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180731_245/1533020634726qk6uJ_JPEG/movie_image.jpg" alt="호박과 마요네즈" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180824_232/1535090531249lRLRM_JPEG/movie_image.jpg" alt="브레이븐" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180830_164/1535604711557P88LA_JPEG/movie_image.jpg" alt="명당" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20180829_283/1535509649599jA4tA_JPEG/movie_image.jpg" alt="안시성" />
					</div>
        </div>
				 <!-- control arrows -->
				<div class="prev p3">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</div>
				<div class="next n3">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</div>
				
      </div>
    </div>
  </div>
<hr/>
     <div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
        <h2>내 취향 저격! 별점 4점 이상 영화 추천!</h2>
         <!-- Slider -->
        <div class="slider responsive r4">
      <div>
					<img src="https://movie-phinf.pstatic.net/20111223_223/1324651988533qvf8y_JPEG/movie_image.jpg" alt="64" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20111223_40/1324638783572CfeUU_JPEG/movie_image.jpg" alt="70" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20111222_220/1324561708014ElEtU_JPEG/movie_image.jpg" alt="114" />
					</div>
					<div>
						<img src="https://movie-phinf.pstatic.net/20111222_138/1324545567577v2JLW_JPEG/movie_image.jpg" alt="431" />
					</div>
					<div>
						<img src="resources/img/popcorn.jpg" alt="none" />
					</div>
					<div>
						<img src="resources/img/popcorn.jpg" alt="none" />
					</div>
					<div>
						<img src="resources/img/popcorn.jpg" alt="none" />
					</div>
					<div>
						<img src="resources/img/popcorn.jpg" alt="none" />
					</div>
        </div>
     
     
         
				 <!-- control arrows -->
				<div class="prev p4">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				</div>
				<div class="next n4">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</div>
				
      </div>
    </div>
  </div>
 





<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js'></script>
<script  src="resources/js/index.js"></script>  

<%@include file="WEB-INF/views/footer.jsp"%>
</body>

</html>
