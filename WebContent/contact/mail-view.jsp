<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../header.jsp"%>



<div class="contain">
	<div class="sub-topcontent">
	 	<h2 class="sub-view-title">	${vo.subject } </h2> 
		<p class="sub-view-wd"> ${vo.name}|  ${vo.email}</p>
	</div>
	<div class = "sub-view-content">
	<p> ${vo.contents } </p>

	</div>

	<%-- <div class="sub-view-bottom">
	<c:if test = "${not empty session }">
			<a href="archivemodify.do?num=${vo.num }" class="btn-modify">수정</a>&nbsp;&nbsp;
		</c:if>
	<c:if test = "${not empty session }">
		<a href="archivedelete.do?num=${vo.num }" class="btn-delete" onClick="del()">삭제</a>&nbsp;&nbsp;
		</c:if>
	<a href="archive.do" class="btn-list">목록</a>&nbsp;&nbsp;
 --%>
	</div>


</div>


<%@ include file="../footer.jsp"%>