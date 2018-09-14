<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
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

       
	button{
		width: 110px;
		float:left;
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

	.button2{
		left:30px;
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
	
	input {
	left:200px;
	float:left;
	width: 200px;
	height: 30px;
}

	#nucheck,#pucheck{
	 float: left;
	}
	
</style>
<script type="text/javascript">


      
 

function nnchk() {
   var unick=document.getElementsByName("unick")[0].value;
   if(unick==null||unick==""||unick==undefined){
      alert("별명을 입력하세요");
      document.getElementsByName("unick")[0].focus();
   }else{
      

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
            $(".chkstatus").val("y");
         }else{
            $("#nucheck").text("중복된 별명 입니다.");
            $("#unick").focus().val("");
            $(".chkstatus").val("n");
         }
      },
      error : function(){
         alert("서버통신실패");
      }
   });
      }
}   

//비밀본호 옆에 사용가능 여부 
$(function(){
        $('#upwd').click(function(){
           $(this).val('');
           $("#pwdchk").val('');
        });
        
      $('#upwd').keyup(function(){
        var chkstatuss=$(".chkstatus");//이메일과 별명에 대한 중복체크 상태를 저장하는 엘리먼트 구함
        $(".chkstatus").each(function(){//각각 하나씩 
          if($(this).val()==""||$(this).val()=='n'){//공백인지, 'n'인지 확인해서
             alert("별명 중복체크를 해주세요");
             $(this).prev().focus();//이메일이면 이메일 입력창으로 포커스 이동
             $('#upwd').val('');//현재 비밀번호 입력박스 ''로 초기화
             return false;//each 반복문을 종료함
          } 
        });
         $('#pucheck').text('');
      }) //#pwd.keyup
      
      $('#pwdchk').keyup(function(){
         if($('#upwd').val()!=$('#pwdchk').val()){
            $('#pucheck').text('');
            $('#pucheck').html("암호가 일치하지 않습니다.");
            $('#pwdchk').attr('title', 'nnnn');
         } else {
            $('#pucheck').text('');
            $('#pucheck').html("암호가 일치합니다.");
            $('#pwdchk').attr('title', 'y');
            $('#regbt').attr('type', 'submit');
            
         } //#pwdchk.keyup
      });
      
   });
   
$(function(){
  $("#loginForm").submit(function(){
     var isSForm=true;
     var msg="";
    $(".chkstatus").each(function(){
       if($(this).val()==""||$(this).val()=="n"){
          isSForm=false;
          msg="별명 중복체크를 해주세요";
          return false;
       }
    }) ;
    if($("#upwd").val()!=$("#pwdchk").val()){
       isSForm=false;
       $("#upwd").focus();
       $("#pwdchk").val("");
       msg="패스워드를 다시 확인하세요!!";
    }
    if(!isSForm){
       alert(msg);
    }
    return isSForm;
  });
});
   
</script>

</head>
<body>
<%@include file="../header.jsp"%>
<div  id="div" class="배경div">
<h1 style="font-size: 90px;">나의정보수정하기</h1><br/><br/><br/>
<form id="loginForm" action="userupdate.do" method="post" >
<table id="table">
		<col width="400px">
		<col width="350px">
		<col width="300px">

      <tr>
         <td>이메일</td>
         <td><input class="text" value=" ${ldto.uemail}" readonly="readonly"/></td>
      </tr>
      <tr>
         <td>별명</td>
          <td><input type="text" name="unick" id="unick" class="chkConfirm" required="required" autocomplete="off"/>
          <input type="hidden" class="chkstatus"/>
         <button class="button2" id="ncheck" onclick="nnchk()">중복확인</button>       
         </td>
         <td><font id="nucheck" size="5" color="#96ffd4"></font></td>
      </tr>
       <tr>
         <td><h3>비밀번호</h3></td>
         <td><input type="password" name="upwd" id="upwd" required="required" class="chkConfirm" autocomplete="off"/></td>
         <td colspan="2"><input type="text" hidden="hidden" ></td>
         
      </tr>
         <tr>
            <td><h3>비밀번호 확인</h3></td>
            <td><input type="password" name="password" id="pwdchk"  title="nnnn" class="chkConfirm" required="required" autocomplete="off"/></td>
            <td colspan="2"><font id="pucheck" size="5" color="#96ffd4" ></font></td>
            
      </tr>
   </table>
            <button id="bts" type="submit">수정완료</button>
            <button id="bts" style="margin-left: 50px;"  onclick="location.href='userinfo_user.do'">수정 취소</button>

      </form>
      </div>
</body>
</html>