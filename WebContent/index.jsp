<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp" %>

	<ul class="slider">
		<!-- <div><iframe width="100%" height="720" src="https://www.youtube.com/embed/Os5zCtSPQ1k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div> -->
	 	<div><iframe width="100%" height="720" src="https://www.youtube.com/embed/JiAkBg7V6xo?rel=0;amp;autoplay=1&amp;loop=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div> 
       	<div><img src="images/main.jpg" alt="" title="2016 - 2017 TOKYO"></div>
    	<div><img src="images/main01.jpg" alt="" title="2018 KJG IN SEOUL & TOKYO"></div>
    		<div><img src="images/main02.jpg" alt="" title="WELCOME!"></div>
      

  	</ul>
 	
		<div class="indexgallery">
			<div class="indextitle">
		<h2> SNS <br> </h2>
		<span><a href="sns.do">MORE</a></span>
		</div>

	 	<ul>
	 		<li><div><a href="gallery.do"><img src="images/menu4.jpg" alt="" title="MyStory!"></a></div></li>
	 		<li><div><a href="#" onclick="randomLink()"><img src="images/menu05.jpg" alt="" title="심심해?!"></a></div></li>
	 		<li><div><a href="archive.do"><img src="images/menu5.jpg" alt="" title="Archive!"></a></div></li> 
		 	
 	
<%-- 		 <c:if test="${gallerylist.size() !=0 }">
			<c:forEach var="gallery" items="${gallerylist }" end="1">
				
				<li><a href="galleryview.do?num=${gallery.num }"><img src="upload/${gallery.filename}"></a></li>
				
			</c:forEach>
			</c:if>
			<c:if test="${gallerylist.size() ==0 }">
				<li>등록된 사진이 없습니다.</li>
			</c:if>  --%> 
		</ul> 
		</div>
		<div class="bbs_wrap">
		<div class="bbs_left">
		
			<h2 class="title">My Stroty</h2>

			<ul>
			<c:if test="${gallerylist.size() !=0 }">
				<c:forEach var="gallery" items="${gallerylist }" end="4">
					<li><a href="galleryview.do?num=${gallery.num }">${gallery.subject }</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${gallerylist.size() ==0 }">
				<li>등록된 사진이 없습니다.</li>
			</c:if>
		</ul>
			<a href="gallery.do"><span class="fa fa-plus plus"></span></a>
		</div>
		<div class="bbs_right">
		<h2 class="title">Archive</h2>
				<ul>
			<c:if test="${gallerylist.size() !=0 }">
				<c:forEach var="archive" items="${archivelist }" end="4">
					<li><a href="archiveview.do?num=${archive.num }">${archive.subject }</a></li>
				</c:forEach>
			</c:if>
			<c:if test="${gallerylist.size() ==0 }">
				<li>등록된 사진이 없습니다.</li>
			</c:if>
		</ul>
		<a href="archive.do"><span class="fa fa-plus-square-o plus"></span>
		</div>
	</div>
<script type='text/javascript'>

function randomLink() {
var links = [];
links[0] = "http://fg.gameangel.com/107000000000011379";
links[1] = "https://chuchumay.tumblr.com/";
links[2] = "https://grandedesafio.com/ko/quiz/22230402";

var index = Math.floor(Math.random() * links.length);
document.location.href = links[index];
}
</script>
<%@ include file="../footer.jsp" %>