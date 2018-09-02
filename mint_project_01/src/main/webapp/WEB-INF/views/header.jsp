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
   margin: auto;
   
   }
   
   
/*    .login{ */
/*    clear:both; */
/*    } */

   .genre_category{
   margin: auto;
   }
</style>
<script type="text/javascript">
function keyword_check(){
     if(document.search.keyword.value==''){ //검색어가 없을 경우  
     alert('검색어를 입력하세요'); //경고창 띄움 
     document.search.keyword.focus(); //다시 검색창으로 돌아감 
     return false; 
     }
     else return true;
    }
</script>
</head>
<body>
<div class="logo">
   <img id="logo" alt="" src="resources/img/MINTlogo2.png" />
</div>
<div class="genre_category">
   <a href="movie_search.do?search='액션'">액션</a>
   <a href="movie_search.do?search='코미디'">코미디</a>
   <a href="movie_search.do?search='범죄'">범죄</a>
   <a href="movie_search.do?search='다큐멘터리'">다큐멘터리</a>
   <a href="movie_search.do?search='드라마'">드라마</a>
   <a href="movie_search.do?search='가족'">가족</a>
   <a href="movie_search.do?search='판타지'">판타지</a>
   <a href="movie_search.do?search='느와르'">느와르</a>
   <a href="movie_search.do?search='공포'">공포</a>
   <a href="movie_search.do?search='뮤지컬'">뮤지컬</a><br>
   <a href="movie_search.do?search='미스테리'">미스테리</a>
   <a href="movie_search.do?search='로맨스'">로맨스</a>
   <a href="movie_search.do?search='공상과학'">공상과학</a>
   <a href="movie_search.do?search='스포츠'">스포츠</a>
   <a href="movie_search.do?search='스릴러'">스릴러</a>
   <a href="movie_search.do?search='전쟁'">전쟁</a>
   <a href="movie_search.do?search='애니메이션'">애니메이션</a>
   <a href="movie_search.do?search='어린이'">어린이</a>
   <a href="movie_search.do?search='사극'">사극</a><br>
   <a href="movie_search.do?search='로맨스코미디'">로맨스코미디</a>
   <a href="movie_search.do?search='하이틴'">하이틴</a>
   <a href="movie_search.do?search='재난'">재난</a>
   <a href="movie_search.do?search='무협'">무협</a>
   <a href="movie_search.do?search='서부'">서부</a>
   <a href="movie_search.do?search='미남'">미남</a>
   <a href="movie_search.do?search='토끼'">토끼</a>
   <a href="movie_search.do?search='자동차'">자동차</a>
   <a href="movie_search.do?search='해외영화'">해외영화</a>
   <a href="movie_search.do?search='국내영화'">국내영화</a>
   
</div>



<div class="searchbox">
<form name="search" align="right" style="margin-right:70px;" method = "get"  
action ="movie_search.do" onsubmit="return keyword_check()">
<!-- align : 정렬 , style : 스타일 정보 포함 (margin : 여백 설정) , method : 전달 방식 ,  
action : submit 시 이동 경로 ,onsubmit : submit 클릭시 호출 조건 (true 일 때 action으로 넘어감 )-->
<td>
  <input type="text" name="keyword"> 
</td>
<td>
<input type="submit" value="search">
</td>  
</form>
</div>
<div class="login">
<img alt="loginimg" src="resources/img/login.png">
</div>

</body>
</html>