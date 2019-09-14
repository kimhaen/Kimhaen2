<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-view-title">	에이시메트릭 새틴 미디 드레스  </h2>
		</div>
	<div class = "sub-view-content">
	<img src="images/org1.jpg" alt="상품사진">
	<a href ="" class="btn-write"> 장바구니 담기 </a>
	<a href ="" class="btn-write"> 지금주문 </a>
	
	


	<p> DESIGNED IN STOCKHOLM </p>
	<p> 에이시메트릭 새틴 미디 드레스 <br>
			71,400 <br>
			시즌오프 40% </p>
	<img src="../images/jsl.jpg" alt="">
	</div>
	
	<div class="sub-view-bottom">
		<a href="gallerywirte.do" class="btn-modify">수정</a>&nbsp;&nbsp;
		<a href="gallerydelete.do#" class="btn-delete" onclick="javascript:avent();">삭제</a>&nbsp;&nbsp;
		<a href="gallery.do" class="btn-list">목록</a>&nbsp;&nbsp;
	</div>
	
	
</div>
<script>
function avent(){
	if(confirm("후회안해? 삭제? 本気?") == true) {
		location.href="gallery-delete.jsp";		
	}else{
		return;
	}
}
</script>

<%@ include file="../footer.jsp"%>