<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
    .tlqkf{
/*    opacity:0.7; */
   position:relative;
   width: 1600px;
   margin-left:auto;
   margin-right:auto;
   text-align: center;
/*    margin-left:800px; */
/*    margin-top: 100px; */
/*    margin-right: auto; */
    
   }
   .tlqkf:after{
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
   .searchbox{
   text-align: center;
   width: 600px;
   height: 500px;
   margin-left:auto;
   margin-right: auto;
   }
   .searchform{
   display: inline-block;
   height: 35px;
   width: 400px;
   box-sizing: border-box;
   margin: 0px 8px 7px 0px;
   padding: 7px 9px 0px 9px;
   border: 3px solid #96ffd4;
   margin-right: 100px;
   margin-top: 200px;
   cursor: text;
   background-color: #96ffd4;
   color: black;
   }
   .searchbox p{
   text-align:center;
   cursor: pointer;
   }
   p{
    font-family:"mint_catefont"; 
   color: #96ffd4;
   font-size: 30px;
   }
</style>

<script type="text/javascript">
function keyword_check(){
    if(document.search_form.serach.value==''){ //검색어가 없을 경우 
    alert('검색어를 입력하세요'); //경고창 띄움
    document.search_form.serach.focus(); //다시 검색창으로 돌아감
    return false;
    }
    else return true;
   }
  
   function search1() {
     document.getElementById('form').submit();
  }

</script>
</head>
<body>
<%@include file="header.jsp"%>
<div class="tlqkf">
<div class="searchbox">
<form name="search_form" align="right" method = "post" 
action ="movie_search.do" onsubmit="return keyword_check()" id="form">
<!-- align : 정렬 , style : 스타일 정보 포함 (margin : 여백 설정) , method : 전달 방식 , 
action : submit 시 이동 경로 ,onsubmit : submit 클릭시 호출 조건 (true 일 때 action으로 넘어감 )-->
<div  class="search_box">
  <input type="text" name="search" class="searchform">
  <p onclick="search1()">검색!</p>
</div>
</form>
<br><br>
   <p>
   키워드 예시 : 코미디, 액션 ... 오늘은 어떤 영화를 볼까요?
   </p>
</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>