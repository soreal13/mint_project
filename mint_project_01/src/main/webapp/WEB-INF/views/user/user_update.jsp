<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
// function nickChk(){
// 	var unick=document.getElementsByName("unick")[0].value;//입력된 아이디 
// 	var chkmsg=document.getElementById("chkmsg")
// 	if(unick==null||unick==""||unick==undefined){
// 		alert("사용하실 닉네임을 입력해 주세요!");
// 	}else{
// 		document.chkmag.innerHTML="안녕";
// }

    function check() {
 	  var form = document.getElementById("userupdateForm");
 	  var msg2= document.getElementById("chkmsg2");
 	  
 	  if (form.upwd.value == form.pwdchk.value) {
 		 		 return true;   
    	  } else {
    		   msg2.innerHTML="비밀번호가 일치하지않아용";
    	       return false;
    	   }
 	  }
 	 


// $(function(){
// 	$("input[name]").not("[name=unick]").focus(function(){
// 		var nickTitle=document.getElementsByName("unick")[0].title;
// 		if(nickTitle=="n"){
// 			alert("닉네임 중복체크를 먼저 해주세요!");
// 			document.getElementsByName("unick")[0].focus();
// 		}
// 	})
// });

</script>
</head>
<body>
<h1>나의정보수정하기</h1>
<form id="userupdateForm" action="userupdate.do" method="post" onsubmit="return check()">
<table border="2">
		<tr>
			<th>이메일</th>
			<td>${udto.uemail}</td>
		</tr>
		<tr>
			<th>별명</th>
			<td>
			<input type="text" name="unick" title="n" value="${udto.unick}">
			<a><input type="button" value="중복확인" onclick="nickChk()"/></a>
			<a id="chkmsg"></a>
			</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="upwd"></a></td>
		</tr>
		<tr>
			<th>비밀번호확인</th>
			<td><input type="password" name="pwdchk"><a id="chkmsg2"></a></td>
		</tr>

<!-- 		<tr> -->
<!-- 			<th>프로필사진</th> -->
<!-- 			<td> <input type="file" name="upload" required="required" value="${udto.uimg}"></td> --!>
<!-- 		</tr> -->
		<tr>
			<td colspan="2">
				<input type="submit" value="수정완료">
				<button onclick="location.href='userinfo.do'">수정 취소</button>
			</td>
		</tr>
	</table>
		</form>
</body>
</html>