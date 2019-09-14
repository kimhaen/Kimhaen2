<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">Archive</h2>
	</div>
	<div class="write-form">

		<table summery="아카이브 수정 테이블 입니다">
			<caption class="readonly">아카이브 입력폼</caption>
		<colspan>
				<col width="20%">
				<col width="80%">
			</colspan>
			<table summery="갤러리 수정 테이블 입니다">
			<tbody>
				<form name="my" method="post" action="archivewrite.do" enctype="multipart/form-data" onsubmit="return formcheck();">
					<tr>
						<th>글종류 </th>
						<td><label for ="kind"> </label>
						<radio name="kind" size="1" value="${vo.kind }">
						<input type="radio" name="kind" value="대학공부" checked > 대학공부     &nbsp;&nbsp;&nbsp;
						<input type="radio" name="kind" value="대외활동" style="color:blue"> 대외활동     &nbsp;&nbsp;&nbsp;
						<input type="radio" name="kind" value="어학공부"> 어학공부     &nbsp;&nbsp;&nbsp;
						<input type="radio" name="kind" value="IT공부"> IT공부     &nbsp;&nbsp;&nbsp;
						<input type="radio" name="kind" value="그 외"> 그 외
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject" value="${vo.subject}"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="contents">${vo.contents}</textarea></td>
					</tr>
						<th>첨부</th>
						<td><input type="file" name="filename" value="upload/${vo.filename}"></td>
					</tr>
					<tr>
					<td colspan="2">
						<input type="button" value="전송" class="btn-write" onclick="gogo()">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='archive.do'">
					</td>
					</tr>
				</form>
			</tbody>
	</table>
</div>
</div>
<script>

	function gogo(){
		if(my.subject.value==""){
			alert("제목을 입력해주세요");
			my.subject.focus();
			return;
		}else {
			my.contents.focus();
		}
		if(my.contents.value==""){
			alert("내용을 입력해주세요");
			my.contents.focus();
			return;
		}else {
			my.filename.focus();
		}
		if(my.filename.value==""){
			alert("파일을 첨부해주세요");
			my.filename.focus();
			return;
		}
			my.action.value = "archivemodify.do";
			my.submit();
	}
	
	function onBack(){
		location.href = "archivemodify.do";
	}
	
</script>
<%@ include file="../footer.jsp"%>