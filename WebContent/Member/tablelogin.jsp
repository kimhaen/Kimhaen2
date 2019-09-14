<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">maron's portfolio</h2>
	</div>
	<div class="write-form">
		<table summery="포트폴리오 글쓰기 테이블 입니다">
			<caption class="readonly">포트폴리오 입력폼</caption>
			<colspan>
				<col width="20%">
				<col width="80%">
			</colspan>
			<tbody>
				<form name="my" method="post" action="portfolioinsert.do" enctype="multipart/form-data" onsubmit="return formcheck();">
					<tr>
						<th>제목</th>
						<td><input type="text" name="title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="contents"></textarea></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer"></td>
					</tr>
					<tr>
						<th>첨부</th>
						<td><input type="file" name="appfile"></td>
					</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송" class="btn-write">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='portfolio.jsp'">
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