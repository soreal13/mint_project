<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mint header</title>
<style type="text/css">

 @media screen and (min-width: 1980px){

        div#googlePlay{

            width: 1980px !important;

            left:0; right:0;

            margin-left:auto; margin-right:auto;

        }
/* @media screen and (min-width : 최소값 - 이 크기보다 클때 해당 css 를 적용) */
/* max-width : 최대값  이 크기보다 작을때 해당 css 를 적용 */
/* margin left/right auto - 왜그런진 모르겟지만 div를 가로에서 가운데 정렬시켜줌 */
/* absolute 속성 필요 */

	.logo{
	
	}
	
	.category{
	float: right;
	
	}
	
/* 	.login{ */
/* 	clear:both; */
/* 	} */

	#cate_genre{
	
	}
</style>
</head>
<body>
<div class="logo">
	<img id="logo" alt="" src="img/MINTlogo2.png" />
</div>
<div class="category">
	<img id="cate_genre" alt="genreimg" src="img/genre.png">
	<img id="cate_play" alt="playimg" src="img/play.png">
	<img id="cate_about" alt="aboutimg" src="img/about.png">
</div>
<div class="searchbox">
<input type="search"><img alt="searchimg" src="img/3.search.png">
</div>
<div class="login">
<img alt="loginimg" src="img/login.png">
</div>

</body>
</html>