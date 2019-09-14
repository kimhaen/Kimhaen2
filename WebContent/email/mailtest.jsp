<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
	<h2 class="sub-title" style="/* margin: 0 auto; */
    text-align: center; width: 1200px; padding-left:40px;"> C O N T A C T</h2>
		<div class="mail-form">
			<form name="my" method="post" action="" onsubmit="return gogo()">
			
			<table class="mailtest" style="border: 0; margin: 0 auto;">
                <tbody><tr><th colspan="2"></th></tr>
                <tr><td>Name</td><td><input type="text" name="name" style="border: 1; /* width: 90%; */"></td></tr>
                <tr><td>Email</td><td><input type="text" name="email" style="border: 1;"></td></tr>
                <!-- <tr><td>to</td><td><input type="text" name="receiveMail" value="kimhaen7@gmail.com"></td></tr> -->
                <tr><td>subject</td><td><input type="text" name="subject"></td></tr>
                <tr><td>comment</td><td><textarea name="contents" style="width: 275px; height: 148px; margin: 0px;"></textarea></td></tr>
                <tr><td colspan="2" style="text-align:right;"><input type="button" value="전송" onclick="gogo()"></td></tr>
            </tbody></table>

        </form>
        <!-- 메일 전송 결과 확인 -->
  <%--       <c:if test="${param.message == 'ok' }">
        <span style = "color:red;">메일이 전송되었습니다.</span></c:if> --%>
    </div>
    <script>
	function gogo() {
		if(my.name.value==""){
			alert("이름을 입력해주세요");
			my.name.focus();
			return;
		}else {
			my.email.focus();
		}
		if(my.email.value==""){
			alert("이메일을 입력해주세요");
			my.email.focus();
			return;
		}else {
			my.subject.focus();
		}
		if(my.subject.value==""){
			alert("제목을 입력해주세요");
			my.subject.focus();
			return;
		}else {
			my.subject.focus();
		}
		if(my.contents.value==""){
			alert("내용을 입력해주세요");
			my.contents.focus();
			return;
		}else {
			my.contents.focus();
		}
		my.action= "contactwrite.do";
		my.submit();
	}

</script>
</body>
</div>

<%@ include file="../footer.jsp"%>