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
  <title>MINT!! : Movie INTo </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>
<link rel="stylesheet" href="resources/css/style.css">

<%@include file="WEB-INF/views/header.jsp"%>
<style type="text/css">
   @font-face{     font-family:"mint_bodyfont";     src: url("resources/font/DXKPGB-KSCpc-EUC-H.ttf") format("truetype");       }
   @font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }

.container{
position:relative;
	width: 1600px;
	margin-left:auto;
	margin-right:auto;
	text-align: center;
}
.container:after{
		content: "";
		background-color:#595959;
		display: block;
		width: 1600px;
		height: 100%; 
		position: absolute;
		left: 0px;
		top:0px;
		opacity:0.7;
 		z-index: -1;
}
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

<!-- 1. 지금 이영화 -->

  <div class="container">   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">        
      </div>
      <img src="resources/images/index01.png">
      <h2>지금 봐야할 이 영화</h2>
         <!-- Slider -->
        <div class="slider responsive r1">
          <div>
					<a href="movie_info.do?mseq=492"> <img src="https://movie-phinf.pstatic.net/20180806_112/1533528494465BJWKD_JPEG/movie_image.jpg" alt="서치" />
					</a>			
					</div>
					<div>
						<a href="movie_info.do?mseq=493"><img src="https://movie-phinf.pstatic.net/20180730_82/15329286640280Wu1t_JPEG/movie_image.jpg" alt="너의결혼식" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=494"><img src="https://movie-phinf.pstatic.net/20180703_65/15305852198817R6a1_JPEG/movie_image.jpg" alt="신과함께 인과연" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=495"><img src="https://movie-phinf.pstatic.net/20180808_39/1533692610471D6ej4_JPEG/movie_image.jpg" alt="맘마미아2" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=496"><img src="https://movie-phinf.pstatic.net/20180903_82/1535950798822Wn1rG_JPEG/movie_image.jpg" alt="어드리프트" />
						</a>					
					</div>
					<div>
						<a href="movie_info.do?mseq=497"><img src="https://movie-phinf.pstatic.net/20180523_234/1527043720337JCQAP_JPEG/movie_image.jpg" alt="미션임파서블" />
						</a>					
					</div>
					<div>
						<a href="movie_info.do?mseq=500"><img src="https://movie-phinf.pstatic.net/20180809_300/1533777494802DpYwf_JPEG/movie_image.jpg" alt="나를 차버린 스파이" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=501"><img src="https://movie-phinf.pstatic.net/20180906_294/1536198017608vktxF_JPEG/movie_image.jpg" alt="나비잠" />
						</a>
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


<!-- 이런영화 어때요? MDPICK! 별점 추천 -->


<div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
      	<img src="resources/images/index02.png">
        <h2>이런 영화 어때요? MD PICK!</h2>
         <!-- Slider -->
        <div class="slider responsive r2">
         	<div>
						<a href="movie_info.do?mseq=64"><img src="https://movie-phinf.pstatic.net/20111223_278/1324577048430YYLpv_JPEG/movie_image.jpg" alt="고양이춤" />
						</a>					
					</div>
					<div>
						<a href="movie_info.do?mseq=491"><img src="https://movie-phinf.pstatic.net/20160217_153/1455686083975zjajH_JPEG/movie_image.jpg" alt="주토피아" />
						</a>
					</div>
					
					<div>
						<a href="movie_info.do?mseq=502"><img src="https://movie-phinf.pstatic.net/20160512_209/1463030589645TeG0X_JPEG/movie_image.jpg" alt="서프레저트" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=85"><img src="https://movie-phinf.pstatic.net/20160523_204/14639851237601hEGQ_JPEG/movie_image.jpg" alt="아가씨" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=86"><img src="https://movie-phinf.pstatic.net/20130206_29/13601146693401seof_JPEG/movie_image.jpg" alt="신세계" />
						</a>
					</div>					
					<div>
						<a href="movie_info.do?mseq=499"><img src="https://movie-phinf.pstatic.net/20151016_178/1444987955309e0f8C_JPEG/movie_image.jpg" alt="맨프롬엉클" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=37"><img src="https://movie-phinf.pstatic.net/20111223_71/1324635483880NQEfk_JPEG/movie_image.jpg" alt="#" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=490"><img src="https://movie-phinf.pstatic.net/20111223_95/1324648220861iI9GN_JPEG/movie_image.jpg" alt="머니볼" />
						</a>
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

<!-- 개봉예정작 -->

<div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
      	<img src="resources/images/index03.png">
        <h2>개봉예정작</h2>
         <!-- Slider -->
        <div class="slider responsive r3">
          <div>
					<a href="movie_info.do?mseq=507"><img src="https://movie-phinf.pstatic.net/20180831_150/1535703792387FDnCB_JPEG/movie_image.jpg" alt="더 프레데터" />
					</a>
					</div>				
					<div>
						<a href="movie_info.do?mseq=505"><img src="https://movie-phinf.pstatic.net/20180817_13/1534473493720DoFgP_JPEG/movie_image.jpg" alt="타사튜더" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=506"><img src="https://movie-phinf.pstatic.net/20180731_245/1533020634726qk6uJ_JPEG/movie_image.jpg" alt="호박과 마요네즈" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=504"><img src="https://movie-phinf.pstatic.net/20180824_232/1535090531249lRLRM_JPEG/movie_image.jpg" alt="브레이븐" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=503"><img src="https://movie-phinf.pstatic.net/20180830_164/1535604711557P88LA_JPEG/movie_image.jpg" alt="명당" />
						</a>
					</div>

					<div>
						<a href="#"><img src="https://movie-phinf.pstatic.net/20180831_242/15356959860648KyJN_JPEG/movie_image.jpg" alt="더 게스트" />
						
						</a>
					</div>
					<div>
						<a href="#"><img src="https://movie-phinf.pstatic.net/20180829_283/1535509649599jA4tA_JPEG/movie_image.jpg" alt="안시성" />
						</a>
					</div>
					<div>
						<a href="#"><img src="https://movie-phinf.pstatic.net/20180820_88/1534741971628EVrim_JPEG/movie_image.jpg" alt="봄이가도" />
						</a>					
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

     <div class="container">
   
    <div class="row">
      <div class="col-md-12 heroSlider-fixed">
        <div class="overlay">
      </div>
      <img src="resources/images/index04.png">
        <h2>내 취향 저격! 별점 4점 이상 영화 추천!</h2>
         <!-- Slider -->
        <div class="slider responsive r4">
      <div>
					<a href="movie_info.do?mseq=64"><img src="https://movie-phinf.pstatic.net/20111223_223/1324651988533qvf8y_JPEG/movie_image.jpg" alt="64" />
					</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=70"><img src="https://movie-phinf.pstatic.net/20111223_40/1324638783572CfeUU_JPEG/movie_image.jpg" alt="70" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=114"><img src="https://movie-phinf.pstatic.net/20111222_220/1324561708014ElEtU_JPEG/movie_image.jpg" alt="114" />
						</a>
					</div>
					<div>
						<a href="movie_info.do?mseq=431"><img src="https://movie-phinf.pstatic.net/20111222_138/1324545567577v2JLW_JPEG/movie_image.jpg" alt="431" />
						</a>
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
