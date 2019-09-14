<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="../header.jsp"%>



<div class="contain">

	<div class="sub-topcontent">

		<h2 class="sub-view-title">${vo.subject }</h2>

		<p class="sub-view-wd">${vo.name } | ${vo.indate }</p>

	</div>

	<div class="sub-view-content">

		<p style="width:100%; text-align:center;"><img src="upload/${vo.filename}" class="w50"></p>
		<%-- <video src="upload/${vo.filename}" class="w50"></video></p> --%>
		
		<p class="gal-contents">${vo.contents}</p>
		
	</div>



	<div class="sub-view-bottom">
	<c:if test = "${not empty session }">
			<a href="gallerymodify.do?num=${vo.num }" class="btn-modify">수정</a>&nbsp;&nbsp;
		</c:if>
	<c:if test = "${not empty session }">
		<a href="#" class="btn-delete" onClick="check2()">삭제</a>&nbsp;&nbsp;
		</c:if>

		 <a href="gallery.do"
			class="btn-list">목록</a>&nbsp;&nbsp;

	</div>





</div>

<script>
	function check2() {
		if(confirm("삭제하시겠습니까?")){
	location.href="gallerydelete.do?num=${vo.num}";
		}else{
			alert("aa");
		}
	
	

	}
</script>



<%@ include file="../footer.jsp"%>