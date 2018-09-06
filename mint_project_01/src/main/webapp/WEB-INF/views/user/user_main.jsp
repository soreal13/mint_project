<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
var useq = $("#forchartseq").val();
function drawChart() {
	var data = google.visualization.arrayToDataTable([
	['장르', '비중'],
	['범죄',  ${tdto.tcrime} ],
	['드라마', ${tdto.tdrama} ],
	['스릴러', ${tdto.tthriller} ],
	['코미디', ${tdto.tcomedy} ],
	['로맨스', ${tdto.tromance} ],
	['가족',   ${tdto.tfamily} ]	
	]);
		
	var options = {
	title: '선호하는 영화장르',
	pieHole: 0.4
	};
	
	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	
	chart.draw(data, options);

}
</script>
<style type="text/css">
.uimg>li{
list-style: none;float: left;margin-left: 50px;
border:1px solid red; width: 130px; height: 180px;
}


.reviewtext>li{
width:400px; height:30px;; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;
list-style: none; float: left; margin-left: 30px;
}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<table>
   <tr>
     <td style="border: 1px solid red; height: 70px; width: 70px;">${ldto.uimg}</td>
     <td>
       <input type="button" value="내 정보 관리" onclick="location.href='userinfo.do'">
       <input type="button" value="즐겨찾기 목록" onclick="location.href='user_favoritelist.do'">
     </td>
   </tr>
</table>


  <h1>${ldto.unick}님의 선호영화</h1>


<table>
   <tr>
     <td>
         <ul class="uimg">
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
   
  <h1>${ldto.unick}님의 한줄평</h1>

<!-- <table  onclick="location.href='userreview.do'"> -->
<div onclick="location.href='userreview.do'">
   <ul class="reviewtext">
      <li>●${mdto.mtitle}-${rdto.rcontent}</li> <!-- <확인!>여기 </li>아니고 </td>로 되어있길래 고쳤는데 혹시 일부러 그런거면 돌려두세요~ -->
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
   </ul>
   <br/>
   <ul class="reviewtext">
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
      <li>●${mdto.mtitle}-${rdto.rcontent}</li>
   </ul>
   <br/>
</div>
<br/><br/><br/>
  <h1>${ldto.unick}님의 영화 통계</h1>
  <div id="piechart" style="width: 900px; height: 500px;"></div>
  <input type="hidden" id="forchartseq" value="${ldto.useq}" /> 
  <br/><br/>
 <h1>${ldto.unick}님께 추천해드리는 영화</h1>
  <div onclick="location.href='usergrade.do?useq=${ldto.useq}'">
<table>
   <tr>
     <td>
         <ul class="mimg">
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
        <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
          <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         <li><a href="#"><img src="${ldto.mdto.mimg}" alt="포스터"/></a></li>
         </ul>
     </td>
   </tr>
</table>
  </div>  
  
</body>
</html>