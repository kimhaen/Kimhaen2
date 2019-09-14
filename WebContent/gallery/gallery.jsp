<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">My Story</h2>
		<div class="sub-search">
			<form name="my" method="post" action="gallerysearch.do" onsubmit="return check()">
				<select name="option" class="sel">
					<option value="years">일시</option>
					<option value="subject">제목</option>
					<option value="contents">내용</option>
				</select>
				<input type="text" name="input" class="text">
				<input type="submit" value="검색" class="btn">
			</form>
		</div>
	</div>
	<ul class="sub-content">
	<c:set var = "cnt" value = "${list.size()}" />
	 <c:if test="${list.size()!=0 }">
	<c:forEach var="gal" items="${list }">
		<li>
		<a href="galleryview.do?num=${gal.num }">
			<div class="gcut"><img src="upload/${gal.filename}"  alt="모집사진"></div>
			<p class="p26">
						<span class="gallery-years" style="font-weight:bold; float:left;">[${gal.years}]</span> 
				
				
				<span class="gallery-title" >&nbsp;${gal.subject }</span></a>
				

				<span class="hit">${gal.readcnt }</span>
			</p>
		</li>
		<c:set var = "cnt" value = "${cnt-1 }" />
			</c:forEach>
			</c:if>	   
      <c:if test="${list.size()==0 }"> 	  
		   <tr onMouseOver="style.backgroundColor='#D1EEEE'" onMouseOut="style.backgroundColor=''">
        <td align="center" height="25" colspan="5">
      <font face="돋움" size="2" color="#000000">등록된 자료가 없습니다.</font></td>     
     </tr>  
    </c:if> 
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
		<c:if test = "${not empty session }">
			<a href="gallerywrite.do" class="btn-write">글쓰기</a>
		</c:if>	
	</div>
</div>
<script>
	function check(){
		if(my.input.value==""){//if(my.cont.value.length==0)
			alert("검색단어 입력하세요.");
			my.input.focus();
			return false;
		}
		return true;
	}
</script>
<%@ include file="../footer.jsp"%>