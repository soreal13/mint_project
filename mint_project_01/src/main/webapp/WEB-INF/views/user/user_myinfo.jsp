<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT!! :: 내정보보기</title>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }

       .배경div{
       font-family:mint_catefont;
       position:relative;
       width: 1600px;
       height:1000px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       margin-bottom: auto;
       padding-top: 200px;
       font-size: 20px;
       }
       
       .배경div:after{
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
       
       #div{
       text-align: center;
       
       }
       
       #table{
       font-size: 40px;
	   margin: auto;
       height: 200px;
       }
       #table:after{
       }
       
	button{
		width: 110px;
		float:left;
		top:50px;
		left:670px;
		border-radius:20px 20px 20px 20px;
		font-family:"mint_catefont"; 
		  background:#595959;
		  color:#96ffd4;
		  border:none;
		  position:relative;
		  height:50px;
		  font-size:30px;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
	button:hover{
		  background:#96ffd4 ;
		  color:#595959;
		}
	button:before, button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0; 
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
	button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
	button:hover:before,button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		      }
 .even{
  color: #CEF6D8;
 }
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div id="div" class="배경div">
<h1 style="font-size: 90px;">나의정보</h1>
<br/><br/><br/><br/>
<table id="table" border="1">
	<col width="200px">
	<col width="400px">
      <tr>
         <th class="even">이메일</th>
         <td  class="even2">${ldto.uemail}</td>
      </tr>
      <tr>
         <th class="even">별명</th>
         <td  class="even2">${ldto.unick}</td>
      </tr>
      </table>
            <button onclick="location.href='user_updateform.do?useq=${ldto.useq}'">수정</button>         
            <button style="margin-left: 50px;" onclick="location.href='deluser.do?useq=${ldto.useq}'">탈퇴</button>

</div>
<%@include file="../footer.jsp"%>
</body>
</html>