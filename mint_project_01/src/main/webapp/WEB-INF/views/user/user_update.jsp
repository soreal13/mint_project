<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
// function nickChk(){
//    var unick=document.getElementsByName("unick")[0].value;//입력된 아이디 
//    var chkmsg=document.getElementById("chkmsg")
//    if(unick==null||unick==""||unick==undefined){
//       alert("사용하실 닉네임을 입력해 주세요!");
//    }else{
//       document.chkmag.innerHTML="안녕";
// }

    function check() {
      var form = document.getElementById("userupdateForm");
      var msg2= document.getElementById("chkmsg2");
      
      if (form.upwd.value == form.pwdchk.value) {
               return true;   
         } else {
            $('#pucheck').html("암호가 일치하지 않습니다.");
              return false;
          }
      }
    
    function nnchk() {
      var unick=document.getElementsByName("unick")[0].value;
      if(unick==null||unick==""||unick==undefined){
         alert("별명을 입력하세요");
         document.getElementsByName("unick")[0].focus();
      }else{
         
//             window.open("emchk.do?uemail=" +uemail, "이메일중복체크", "width=400px, height=200px, top=200px, left=400px");
//ajax 처리 부분.
      $.ajax({
         url : "nnchk.do",
         method : "POST",
         data : "unick="+unick,
         dataType : "json",
         success : function(obj){
            var isS1=obj.isS;
            
            if(isS1=='y'){
               $("#nucheck").text("사용가능한 별명입니다.");
               $("#upwd").focus();
               $(".chkstatus").eq(1).val("y");
            }else{
               $("#nucheck").text("중복된 별명 입니다.");
               $("#unick").focus().val("");
               $(".chkstatus").eq(1).val("n");
            }
         },
         error : function(){
            alert("서버통신실패");
         }
      });
         }
   }   
    
    
//    별명 중복체크 버튼 옆에 text로 사용 여부 나타내기
    $(function(){
       $('#unick').keyup(function(){
          $('#nucheck').text('');
       }) //#email.keyup
       
       $('#ncheck').keyup(function(){
          if($('#unick').val()!=$('#ncheck').val()){
             $('#nucheck').text('');
             $('#nucheck').html("사용가능한 별명입니다.");
             $('#ncheck').attr('title', 'nn');
          } else {
             $('#nucheck').text('');
             $('#nucheck').html("중복된 별명 입니다.");
             $('#ncheck').attr('title', 'y');
          } //#ncheck.keyup
       });
    });
</script>
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
      
       
       #table{
       border-bottom-style: dotted; 
       font-size: 40px;
	   margin: auto;
       height: 200px;
       }
       #table:after{
       }
       
	button{
		width: 110px;
		float:left;
/* 		top:50px; */
/* 		left:670px; */
margin:auto;
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
 
 input {
	left:200px;
	float:left;
	width: 200px;
	height: 30px;
}

.button2{

		width: 90px;
		float:left;
		border-radius:20px 20px 20px 20px;
		font-family:"mint_catefont"; 
		  background:#595959;
		  color:#96ffd4;
		  border:none;
		  position:relative;
		  height:40px;
		  font-size:25px;
		  cursor:pointer;
		  transition:800ms ease all;
		  outline:none;
		}
	button.button2:hover{
		  background:#96ffd4 ;
		  color:#595959;
		}
	button.button2:before, button.button2:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0; 
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
	button.button2:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
	button.button2:hover:before, button.button2:hover:after{
		  width:100%;
		  transition:800ms ease all;
		      }
		      
	#bts{
		 		top:50px;
 		left:670px;
	}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div  id="div" class="배경div">
<h1 style="font-size: 90px;">나의정보수정하기</h1><br/><br/><br/>
<form id="userupdateForm" action="userupdate.do" method="post" >
<table id="table">
		<col width="400px">
		<col width="500px">
      <tr>
         <td>이메일</td>
         <td><input class="text" value=" ${ldto.uemail}" readonly="readonly"/></td>
      </tr>
      <tr>
         <td>별명</td>
         <td>
         <input class="text" type="text" name="unick" id="unick" title="n" value="${ldto.unick}" required="required" autocomplete="off">
         <button class="button2" id="ncheck" onclick="nnchk()">중복확인</button>       
         </td>
         <td><font id="nucheck" size="2" color="red"></font></td>
      </tr>
      <tr>
         <td>비밀번호</td>
         <td><input class="text" type="password" name="upwd" required="required"></td> <!-- <확인!> 여기 </a>태그만 있었는데 지웠음, 위에 html5로 dtd 재정의함 -->
      </tr>
      
      <tr>
         <td>비밀번호확인</td>
         <td><input type="password" class="text" name="password" id="pwdchk" required="required"></td>
         <td colspan="2"><font id="pucheck" size="2" color="red"></font></td>
      </tr>
   </table>
            <button id="bts" type="submit">수정완료</button>
            <button id="bts" style="margin-left: 50px;"  onclick="location.href='userinfo_user.do'">수정 취소</button>

      </form>
      </div>
</body>
</html>