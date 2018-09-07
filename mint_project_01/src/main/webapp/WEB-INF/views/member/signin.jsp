<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	.table,.tr,.td{border: 1px solid black;}
	.table{display: table;}
	.tr{display: table-row;}
	.td{display: table-cell; padding: 5px;}
	#container{width: 400px; margin: 100px auto;}
	
	@media screen and(max-width: 400px){
		.table{display: block;}
		.tr{display: block;}
		.td{display: block; padding: 5px}
	}
</style>
<script type="text/javascript">
	function emchk() {
		var uemail=document.getElementsByName("uemail")[0].value;
		if(uemail==null||uemail==""||uemail==undefined){
			alert("이메일을 입력하세요");
			document.getElementsByName("uemail")[0].focus();
		}else{
			
// 	         window.open("emchk.do?uemail=" +uemail, "이메일중복체크", "width=400px, height=200px, top=200px, left=400px");
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
	
// 	function nnchk(){
// 		$(".chkstatus").eq(1).val("y");
// 	}
	function nnchk() {
		var unick=document.getElementsByName("unick")[0].value;
		if(unick==null||unick==""||unick==undefined){
			alert("별명을 입력하세요");
			document.getElementsByName("unick")[0].focus();
		}else{
			
// 	         window.open("emchk.do?uemail=" +uemail, "이메일중복체크", "width=400px, height=200px, top=200px, left=400px");
//ajax 처리 부분.
		$.ajax({
			url : "nnchk.do",
			method : "POST",
			data : "unick="+unick,
			dataType : "json",
			success : function(obj){
				var isS=obj.isS;
				if(isS=='y'){
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


   
// 	별명 중복체크 버튼 옆에 text로 사용 여부 나타내기
   $(function(){
      $('#unick').keyup(function(){
         $('#nucheck').text('');
      }) //#email.keyup
      
      $('#ncheck').keyup(function(){
         if($('#unick').val()!=$('#ncheck').val()){
            $('#nucheck').text('');
            $('#nucheck').html("별명이 일치하지 않습니다.");
            $('#ncheck').attr('title', 'nnn');
         } else {
            $('#nucheck').text('');
            $('#nucheck').html("별명이 일치합니다.");
            $('#ncheck').attr('title', 'y');
         } //#ncheck.keyup
      });
   });

// 비밀본호 옆에 사용가능 여부 
   $(function(){
	      $('#upwd').keyup(function(){
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
	   
   //    이메일 중복체크 버튼 옆에 text로 사용 여부 나타내기
   $(function(){
      $('#uemail').keyup(function(){
         $('#eucheck').text('');
      }) //#email.keyup
      
      $('#echeck').keyup(function(){
         if($('#uemail').val()!=$('#ncheck').val()){
            $('#"eucheck"').text('');
            $('#"eucheck"').html("별명이 일치하지 않습니다.");
            $('#echeck').attr('title', 'nnn');
         } else {
            $('#"eucheck"').text('');
            $('#"eucheck"').html("별명이 일치합니다.");
            $('#echeck').attr('title', 'y');
         } //#ncheck.keyup
      });
   });
   
</script>
</head>
<body>
<h1>MINT 회원가입</h1>
<form action="sign.do" method="POST">
<table>		
		<tr>
			<td>이메일</td>
			<td><input type="email" name="uemail" id="uemail" class="chkConfirm" required="required" autocomplete="off"/>
				<input type="hidden" class="chkstatus"/>
			</td>
			<td><input type="button" value="중복체크" id="echeck" onclick="emchk()"/></td>
			<td> <font id="eucheck" size="2" color="red"></font></td>
		</tr>	
		 <tr>
      		<td>별명</td>
      		<td><input type="text" name="unick" id="unick" class="chkConfirm" required="required" autocomplete="off"/>
      			<input type="hidden" class="chkstatus"/>
      		</td>
      		<td><input type="button" value="중복체크" id="ncheck" onclick="nnchk()"/></td>
      		<td><font id="nucheck" size="2" color="red"></font></td>
   		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="upwd" id="upwd" required="required" class="chkConfirm" onfocus="conform()" autocomplete="off"/></td>
		</tr>
   		<tr>
   			<td>비밀번호 확인</td>
   			<td><input type="password" name="password" id="pwdchk"  title="nnnn" class="chkConfirm" required="required" onfocus="conform()" autocomplete="off"/></td>
   			<td colspan="2"><font id="pucheck" size="2" color="red"></font></td>
   			
   		</tr> 
   		<tr>
   			<td><input type="submit" id="regbt" value="가입"/></td>
   		</tr>
 
</table>
</form>
</body>
</html>