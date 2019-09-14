<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">maron's Q & A </h2>
	</div>
	<div class="write-form">
		<table summery="Q&A 글쓰기 테이블 입니다">
			<caption class="readonly">Q & A 입력폼</caption>
			<colspan>
				<col width="20%">
				<col width="80%">
			</colspan>
			<tbody>
				<form name="my" method="post" action="qainsert.do" enctype="multipart/form-data" onsubmit="return formcheck();">
					<tr>
						<th>선택</th>
						<td><input type="checkbox" name="chk" value="chkok"> 공지등록</td>
					</tr>
					<tr>
						<th>질문종류</th>
						<td><input type="radio" name="kinds" value="java" checked > 자바 
						<input type="radio" name="kinds" value="jsp"> JSP 
						<input type="radio" name="kinds" value="oracle"> 오라클
						<input type="radio" name="kinds" value="etc"> 기타
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" placeholder="제목입력하세요!"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content"></textarea></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer"></td>
					</tr>
					<tr>
						<th>전화번호</th>
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
						<th>첨부</th>
						<td><input type="file" name="appfile"></td>
					</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송" class="btn-write">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='qa.jsp'">
					</td>
					</tr>
				</form>
			</tbody>
		</table>	
	</div>
</div>
<script>
	function formcheck(){
		if(my.title.value==""){//if(my.cont.value.length==0)
			alert("제목을 입력하세요.");
			my.title.focus();
			return false;
		}
		if(my.contents.value==""){//if(my.cont.value.length==0)
			alert("내용을 입력하세요.");
			my.contents.focus();
			return false;
		}
		return true;
	}
</script>
<%@ include file="../footer.jsp"%>