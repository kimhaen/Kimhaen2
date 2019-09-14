<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>



<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title"> Archive </h2>
		<div class="sub-search">
			<form name="my" method="post" action="archivesearch.do" onsubmit="return check()">
				<select name="option" class="sel">
				<option value="kind">글종류</option>
					<option value="subject">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="input" class="text">
				<input type="submit" value="검색" class="btn">
			</form>
		</div>

			</div>
			<div class="content-body">
			<table class="qatable">
			<caption class="readonly"> Archive </caption>
			<colgroup>
			<col width="6%">
			<col width="10%">
			<col width="48%">
			<col width="15%">
			<col width="11%">
			<col width="10%">
			</colgroup>
			<tbody>
				<tr>
					<th>번호</th>
					<th>글종류</th>
					<th>제목</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<tr>
			<c:set var = "cnt" value = "${list.size()}" />
			<c:if test="${list.size()!=0 }">
			<c:forEach var="ar" items="${list }">
				
					<td>${cnt}</td>
					<td>${ar.kind }</td>
					<td><a href="archiveview.do?num=${ar.num }">${ar.subject }</a></td>
					<td>${ar.indate }</td>
					<td>${ar.readcnt }</td>
				</tr>
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
			</tbody>
			</table>
			</div>
		</li>	
	</ul>
	<div class="paging">
		<ul>
			<li><a href="#">이전</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">다음</a></li>
		</ul>
			<c:if test = "${ not empty session }">
			<a href="archivewrite.do" class="btn-write">글쓰기</a>
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