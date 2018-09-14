<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글목록보기</title>
<script type="text/javascript">
      

      
      function allSel(allEle) {
         var chks=document.getElementsByName("chk");
          for(var i=0; i < chks.length; i++) {
             chks[i].checked = allEle;
          }
       }


</script>
<style type="text/css">
@font-face{     font-family:"mint_catefont";     src: url("resources/font/tvN Enjoystories Bold.ttf") format("truetype");       }
   input[type=checkbox]{width: 15px; height: 15px;}
   textarea[name=testAjax] {
   position: fixed;
   left: 50px; top: 800px;
   border-radius: 10px;
}

	.container{
	       position:relative;
	       width: 1600px;
	       height:1600px;
	       margin-left:auto;
	       margin-right:auto;
	       text-align: center;
	       margin-bottom: auto;
	       padding-top: 100px;
	       font-size: 20px;
	       margin: auto;
	       border: 1px solid red;
	       font-size: 20px;
	      }
       
	 .container:after{
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
       
       #reviewform{
       	text-align: center;
       }
       
       table{
       
       background-color:#595959 ;
        background-color: rgba( 89, 89, 89, 0.6 );
       border-radius:20px 20px 20px 20px;
        height: 40px;
        margin: auto;
        font-family:mint_catefont;
        font-size: 30px;
       }

       
       .wrap{
       margin-left:30px;
       text-align: left;
       }
       
	input.button{
		width: 110px;
		float:left;
		top:20px;
		left:115px;
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
	input.button:hover{
		  background:#96ffd4 ;
		  color:#595959;
		}
	input.button:before,input.button:after{
		  content:'';
		  position:absolute;
		  top:0;
		  right:0;
		  height:2px;
		  width:0; 
		  background: #1AAB8A;
		  transition:400ms ease all;
		}
	input.button:after{
		  right:inherit;
		  top:inherit;
		  left:0;
		  bottom:0;
		}
	input.button:hover:before,input.button:hover:after{
		  width:100%;
		  transition:800ms ease all;
		      }
	 table.rtable{
		    width: 70%;
		    border-top: 4px solid #EFFBF2;
		    border-collapse: collapse;
		  }
	  th,td {
		    border-bottom: 2px dotted #EFFBF2;
		    padding: 10px;
		  }
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<!-- 객체생성과 마찬가지 -->
<div class="container">
<h1 style="font-family:mint_catefont; font-size: 70px;" >한줄평 모아보기</h1>
<br/><br/><br/><br/><br/><br/>
<form id="reviewform" action="delReview.do" method="POST">
	<table class="table table-striped" style="text-align: center;" class="rtable">
		<col width="100px" />
      <col width="250px" />
      <col width="850px" />
      <col width="150px" />
		<tr height="100px;" style="font-size: 40px;">
			<th><input type="checkbox" id="all" onclick="allSel(this.checked)"/></th>
         <th>제목</th>
         <th>한줄평 내용</th>
         <th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty lists}">
				<tr><td colspan="4">---작성된 글이 없습니다.---</td></tr>
			</c:when>
			<c:otherwise>
				<c:forEach var = "ldto" items="${lists}">
					<tr height="60px;">
						<td><input type="checkbox" name="chk" value="${ldto.rdto.rseq}"/></td>
						<td style="color: #96ffd4;">${ldto.mdto.mtitle}</td>
						<c:choose>
							<c:when test="${ldto.rdto.rdelflag=='Y'}">
								<td class="delboard">---삭제된 글입니다.---</td>
							</c:when>
							<c:otherwise>
								<td>
									<a  style="font-size: 25;">
										${ldto.rdto.rcontent}
									</a>
								</td>
							</c:otherwise>
						</c:choose>
						 <td>${ldto.rdto.rdate}</td>
					</tr>
				</c:forEach>				
			</c:otherwise>
		</c:choose>
	</table>
	  <input width="10px;" class="button" id="submit" type="submit" value="삭제"/>
   </form>
</div>
</body>
</html>