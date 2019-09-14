<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">maron's Create Account </h2>
	</div>
	<div class="write-form">
		<table summery="회원가입 글쓰기 테이블 입니다">
			<caption class="readonly">회원가입 입력폼</caption>
			<colspan>
				<col width="20%">
				<col width="80%">
			</colspan>
			<tbody>
				<form name="my" method="post" action="memberinsert.do" enctype="multipart/form-data" onsubmit="return formcheck();">
					<fieldset>
						<legend class="readonly">입력폼</legend>
					
					<tr>
						<th scope="row">
						<label for="id">아이디</label>
						</th>
						<td><input type="text" name="id" id="id" class="minput">
						<!--<input type="button" value="중복확인"></td>-->
						<a href ="" class="btn-write"> 중복확인 </a>
						</td>
					</tr>
					<tr>
						<th scope="row">패스워드</th>
						<td><input type="text" name="pass1" id="pass1" class="minput"></td>
					</tr>
					<tr>
						<th scope="row">패스워드 확인</th>
						<td><input type="text" name="pass2" class="minput"></td>
					</tr>
					<tr>
						<th scope="row">이름</th>
						<td><input type="text" name="name" class="minput"></td>
					</tr>
					<tr>
						<th scope="row">이메일</th>
						<td>
							<input type="text" name="email1" class="email"> @
							<input type="text" name="email2" class="email">
						</td>
					</tr>
					<tr>
						<th>첨부</th>
						<td><input type="file" name="appfile" class="minput"></td>
					</tr>
					<tr>
						<th>자기소개</th>
						<td><textarea name="intro" class="minput"></textarea></td>
					</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="전송" class="btn-write">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='portfolio.jsp'">
					</td>
					</tr>
					</fieldset>
				</form>
			</tbody>
		</table>	
	</div>
</div>
<script>
	function formcheck(){
		if(my.id.value==""){//if(my.cont.value.length==0)
			alert("아이디를 입력하세요.");
			my.id.focus();
			return false;
		}
		if(my.pass1.value==""){//if(my.cont.value.length==0)
			alert("내용을 입력하세요.");
			my.pass1.focus();
			return false;
		}
		if(my.pass1.value != my.pass2.value){//if(my.cont.value.length==0)
			alert("패스워드를 확인하세요");
			my.pass1.focus();
			return false;
		}
		return true;
	}
</script>
<%@ include file="../footer.jsp"%>