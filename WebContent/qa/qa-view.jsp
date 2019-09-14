<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-view-title">	haenkim Q & A view </h2>
		<p class="sub-view-wd"> 글쓴이 | 2019-06-11 </p>
	</div>
	<div class = "sub-view-content">
	<p> Q & A 출력되는 부분입니다. </p>
	<p>자바 실행 프로그램을 추천받고 싶습니다. <br>
	멍텅구리 언어라 오류가 나와도 오류무시하고 출력을 시켜요. </p>
	<img src="../images/jsl.jpg" alt="">
	</div>
	
	<div class="sub-view-bottom">
		<a href="qareply.do" class="btn-modify">답변</a>&nbsp;&nbsp;
		<a href="javacsript:void(0)" class="btn-delete" onclick="javascript:avent();">삭제</a>&nbsp;&nbsp;
		<a href="qa.do" class="btn-list">목록</a>&nbsp;&nbsp;
	</div>
	
	
</div>
<script>
function avent(){
	if(confirm("삭제합니까? 本気?") == true) {
		location.href="qadelete.do";		
	}else{
		return;
	}
}
</script>

<%@ include file="../footer.jsp"%>