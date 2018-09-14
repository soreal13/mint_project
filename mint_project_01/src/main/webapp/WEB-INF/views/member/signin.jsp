<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MINT!!:: 회원 가입</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
    #i{ width: 1000px; height: 300px; margin: 0 auto;} 
    #o{width: 620px; height:130px; margin-left: 300px;margin-top: 20px; margin-bottom: 20px;}
    #u{height: 500px;
       position:relative;
       width: 1600px;
       margin-left:auto;
       margin-right:auto;
       text-align: center;
       }
     #u:after{
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
    .title{
   text-align: center;
   color: #96ffd4;
    font-family:"mint_catefont"; 
/*     margin-top: 50px; */
   padding-top:50px;
    font-size: 40px;
   
   }    
    a{text-decoration: none; color: green;}
</style>
<script type="text/javascript">
//이메일 중복체크하기
   function emchk() {
      var uemail=document.getElementsByName("uemail")[0].value;
      if(uemail==null||uemail==""||uemail==undefined){
         alert("이메일을 입력하세요");
         document.getElementsByName("uemail")[0].focus();
      }else{
         

         
         
         
//ajax 처리 부분.
      $.ajax({
         url : "emchk.do",
         method : "POST",
         data : "uemail="+uemail,
         dataType : "json",
         success : function(obj){
            var isS=obj.isS;
            if(isS=='y'){
               $("#eucheck").text("사용가능한 이메일입니다.");
               $("#unick").focus();
               $(".chkstatus").eq(0).val("y");
            }else{
               $("#eucheck").text("중복된 이메일 입니다.");
               $("#uemail").focus().val("");
               $(".chkstatus").eq(0).val("n");
            }
         },
         error : function(){
            alert("서버통신실패");
         }
      });
         }
   }   
    

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
//    이메일 중복체크 버튼 옆에 text로 사용 여부 나타내기
      $(function(){
         $('#uemail').keyup(function(){
           $(this).next().val('');//이메일을 다시 입력하면 chkstatus를 ''으로 초기화 
            $('#eucheck').text('');
         }) 
      });

   
//    별명 중복체크 버튼 옆에 text로 사용 여부 나타내기
   $(function(){
      $('#unick').keyup(function(){
         $(this).next().val(''); //별명을 다시 입력하면 chkstatus를 ''으로 초기화 
         var chkstatusEmail=$(".chkstatus").eq(0);//이메일의 chkstatus를 구한다
        if(chkstatusEmail.val()==""||chkstatusEmail.val()=="n"){//그래서 공백인지 'n'인지 확인해서 중복체크가 된 상태인지 확인
           alert("이메일부터 중복체크하세요!!");
           $('#uemail').focus();
           $(this).val("");
        }
         $('#nucheck').text('');
         
      })
   });

// 비밀본호 옆에 사용가능 여부 
   $(function(){
           $('#upwd').click(function(){
              $(this).val('');
              $("#pwdchk").val('');
           });
           
         $('#upwd').keyup(function(){
           var chkstatuss=$(".chkstatus");//이메일과 별명에 대한 중복체크 상태를 저장하는 엘리먼트 구함
           $(".chkstatus").each(function(){//각각 하나씩 
             if($(this).val()==""||$(this).val()=='n'){//공백인지, 'n'인지 확인해서
                alert("이메일이나 별명을 체크하세요!!");
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
             msg="이메일과별명을 다시 확인하세요";
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
<div id="u">
<div id="i"  >
<p class="title">LET'S MINT</p>
<form id="loginForm" action="sign.do" method="POST">
<table id="o" >   
<col width="130px;"><col width="160px;"><col width="30px;"><col width="280px;">
      <tr>
         <td><h3>이메일</h3></td>
         <td><input type="email" name="uemail" id="uemail" class="chkConfirm" required="required" autocomplete="off" style="text-align: letter-spacing;width:170px;height: 20px; "/>
            <input type="hidden" class="chkstatus"/>
         </td>
         <td><input type="button" value="중복체크" id="echeck" onclick="emchk()"/></td>
         <td> <font id="eucheck" size="2" color="red" ></font></td>
      </tr>   
       <tr>
            <td><h3>별명</h3></td>
            <td><input type="text" name="unick" id="unick" class="chkConfirm" required="required" autocomplete="off" style="text-align: letter-spacing;width:170px;height: 20px; "/>
               <input type="hidden" class="chkstatus"/>
            </td>
            <td><input type="button" value="중복체크" id="ncheck" onclick="nnchk()"/></td>
            <td><font id="nucheck" size="2" color="red" ></font></td>
         </tr>
      <tr>
         <td><h3>비밀번호</h3></td>
         <td><input type="password" name="upwd" id="upwd" required="required" class="chkConfirm" autocomplete="off" style="text-align: letter-spacing;width:170px;height: 20px; "/></td>
         <td colspan="2"><input type="text" hidden="hidden" ></td>
         
      </tr>
         <tr>
            <td><h3>비밀번호 확인</h3></td>
            <td><input type="password" name="password" id="pwdchk"  title="nnnn" class="chkConfirm" required="required"  autocomplete="off" style="text-align: letter-spacing;width:170px;height: 20px; "/></td>
            <td colspan="2"><font id="pucheck" size="2" color="red" ></font></td>
            
         </tr> 
         
         <tr>
            <td>&nbsp;</td>
            <td align="right"><input type="submit" id="regbt" value="가입" style="height: 30px; width: 100px;"/></td>
            <td colspan="2">&nbsp;</td>
         </tr>
 
</table>
</form>
</div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>