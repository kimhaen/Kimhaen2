<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">Create New Account !</h2>
	</div>
	<div class="write-form">
		<table summery="New Account">
			<caption class="readonly">About you</caption>
			<colspan>
			<col width="20%">
			<col width="80%">
			</colspan>
			<tbody>
				<form name="my" method="post" action="newbie.do" enctype="multipart/form-data" onsubmit="return formcheck();">
					<tr>
						<th>NAME </th>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>USERID</th>
						<td><input type="text" name="userid"></td>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<th>PASSWORD CONFIRM</th>
						<td><input type="password" name="repassword"></td>
					</tr>
					<tr>
						<th>ADDRESS</th>
						<td><input type="text" name="addr"></td>
					</tr>
						<tr>
						<th>PHONE</th>
						<td>
						<select name="tel1" class="tel1">
						<option>선택 </option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="019">019</option>
						</select> -
						<input type="text" class="tel2"> -
						<input type="text" class="tel3">
						</td>
					</tr>
					<tr>
						<th>INTRO</th>
						<td><textarea name="contents"></textarea></td>
					</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송" class="btn-write">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='index.do'">
					</td>
					</tr>
				</form>
			</tbody>
		</table>
	</div>
</div>
<script>
	function formcheck() {
		if (my.title.value == "") {//if(my.cont.value.length==0)
			alert("제목을 입력하세요.");
			my.title.focus();
			return false;
		}
		if (my.contents.value == "") {//if(my.cont.value.length==0)
			alert("내용을 입력하세요.");
			my.contents.focus();
			return false;
		}
		return true;
	}
</script>
<%@ include file="../footer.jsp"%>