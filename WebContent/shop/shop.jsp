<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">SHOP</h2>
		<div class="sub-search">
			<form name="my" method="post" action="gallery-search.jsp" onsubmit="return check()">
				<select name="sel" class="sel">
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="cont" class="text">
				<input type="submit" value="검색" class="btn">
			</form>
		</div>
	</div>
	<ul class="sub-content">
		<li>
			<img src="images/org1.jpg" alt="상품사진">
			<p class="p26">
				<a href="shop-view.do">
				<span class="shop-title"> 오렌지 드레스  </span>
				</a>
				
				<span class="price">500,000 </span>
			</p>
			
		</li>
		<li>
			<img src="images/org2.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title"> 오렌지 양말 </span></a><span class="price">500,000 </span>
			</p>
		</li>
	
		<li>
			<img src="images/org3.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title"> 오렌지 원피스 </span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org4.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title"> 오렌지 양말 </span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org5.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title"> 오렌지 헤어밴드</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org6.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">오렌지 샌들</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org7.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org8.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
		<img src="images/org3.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org4.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
			<img src="images/org5.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
		<li>
		<img src="images/org6.jpg" alt="상품사진">
			<p class="p26">
				<a href="#"><span class="shop-title">상품안내</span></a><span class="price"> 500,000 </span>
			</p>
		</li>
	</ul>
	<div class="paging">
		<ul>
			<li><a href="#">이전</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">다음</a></li>
		</ul>
		<a href="gallerywrite.do" class="btn-write">글쓰기</a>
	</div>
</div>
<script>
	function check(){
		if(my.cont.value==""){//if(my.cont.value.length==0)
			alert("검색단어 입력하세요.");
			my.cont.focus();
			return false;
		}
		return true;
	}
</script>
<%@ include file="../footer.jsp"%>