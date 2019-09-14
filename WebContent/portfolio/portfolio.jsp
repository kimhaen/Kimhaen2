<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title"> 포트폴리오 </h2>
		<div class="sub-search">
			<form name="my" method="post" action="portfoliosearch.do" onsubmit="return check()">
				<select name="sel" class="sel">
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="cont" class="text">
				<input type="submit" value="검색" class="btn">
			</form>
		</div>
	</div>
	<ul class="sub-port-content">
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
		</li>	
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
		</li>	
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
		</li>	
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
		</li>	
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
		</li>	
		<li>
		<span class="date"><em>12</em>2019-06</span>

			<div class="text-wrap">
				<div class="img-wrap">
					<img src="images/jsl.jpg" alt="모집사진">
				</div>
				<div class="text-body">
				<span>No.98</span> <span class=""><i class="fa fa-eye" > </i> 210</span>
				<a href="portfolio-view.do">
				<p class="title"> ~제목부분~ 안녕</P>
				<p class="text-cont"> ~내용부분~ 마롱,
				해인, 사월, 지희 </p>
				</a>
				</div>
				
			</div>
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
		<a href="portfoliowrite.do" class="btn-write">글쓰기</a>
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