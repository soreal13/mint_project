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

#div{
border: 2px solid red;
	margin:auto;
	margin-top: 200px;
	margin-left: 40%;
	position: fixed;
}


</style>
</head>
<body>
<%@include file="../header.jsp"%>
<div  id="div">
<h1 style="text-align: center;">나의정보수정하기</h1>
<form id="userupdateForm" action="userupdate.do" method="post" >
<table   id="table">
      <tr>
         <td>이메일</td>
         <td><input value=" ${ldto.uemail}" readonly="readonly"/></td>
      </tr>
      <tr>
         <td>별명</td>
         <td>
         <input type="text" name="unick" id="unick" title="n" value="${ldto.unick}" required="required" autocomplete="off">
         <input type="button" value="중복확인" id="ncheck" onclick="nnchk()"/>       
         </td>
         <td><font id="nucheck" size="2" color="red"></font></td>
      </tr>
      <tr>
      
      
         <td>비밀번호</td>
         <td><input type="password" name="upwd" required="required"></td> <!-- <확인!> 여기 </a>태그만 있었는데 지웠음, 위에 html5로 dtd 재정의함 -->
      </tr>
      <tr>
         <td>비밀번호확인</td>
         <td><input type="password" name="password" id="pwdchk" required="required"></td>
         <td colspan="2"><font id="pucheck" size="2" color="red"></font></td>
      </tr>

<!--       <tr> -->
<!--          <th>프로필사진</th> -->
<!--          <td> <input type="file" name="upload" required="required" value="${udto.uimg}"></td> --!>
<!--       </tr> -->
      <tr>
         <td colspan="2" align="center"><br/><br/>
            <input type="submit" value="수정완료">
            <button onclick="location.href='userinfo_user.do'">수정 취소</button>
         </td>
      </tr>
   </table>
      </form>
      </div>
</body>
</html>