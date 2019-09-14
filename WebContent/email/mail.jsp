<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div>
    <h2>C O N T A C T</h2>
        <form action="" method="post">
            <table>
                <tr><th colspan="2"></th></tr>
                <tr><td>Name</td><td><input name="senderName" /></td></tr>
                <tr><td>Email</td><td><input name="senderName" /></td></tr>
                <tr><td>to</td><td><input name="receiveMail" value="kimhaen7@gmail.com"/></td></tr>
                <tr><td>subject</td><td><input name="subject" /></td></tr>
                <tr><td>comment</td><td><textarea name="message" style="width:170px; height:200px;"></textarea></td></tr>
                <tr><td colspan="2" style="text-align:right;"><input type="button" value="전송" onClick="gogo()"/></td></tr>
            </table>
        </form>
        <!-- 메일 전송 결과 확인 -->
        <c:if test="${param.message == 'ok' }">
        <span style = "color:red;">메일이 전송되었습니다.</span></c:if>
    </div>
    <script>
	function gogo() {
		location.href="https://kimhaen.tumblr.com/ask";
	
	}
</script>
</body>
</html>