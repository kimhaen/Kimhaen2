<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">Admin 로그인</h2>
	</div>
	<div class="write-form" style="width:50%; margin:0 auto; border:1px; solid:#ccc; padding:20px;">
	<form method = "post" action="login.do" name="my">
	<fieldset>
	<legend class="readonly">login </legend>
		<div style="width:70%; float:left;">
		<label for="id" class="readonly"> 아이디</label>
		<input type ="text" name="adminid" id="id" placeholder="USERID">
		<label for="pw" class="readonly"> 패스워드</label>
		<input type ="password" name="adminpw" id="pw" placeholder="PASSWORD">
	</div>
	<div style="width:28%; float:right; padding:15px; 
	height:132px; margin-top:3px;">
		<input type="button" onclick="formcheck()" value="로그인" alt="로그인" 
		style="background:#FF3000; color:#fff; 
		width:100%; height:100%; border:0 none; cursor:pointer;"> 
	</div>

	</fieldset>
	</form>

</div>
</div>
<script>
	function formcheck(){
		if(my.adminid.value==""){//if(my.cont.value.length==0)
			alert("아이디를 입력하세요.");
			my.adminid.focus();
			return false;
		}
		if(my.adminpw.value==""){//if(my.cont.value.length==0)
			alert("비밀번호를 입력하세요.");
			my.adminpw.focus();
			return false;
		}
		my.submit();
	}
</script>
<%@ include file="../footer.jsp"%>