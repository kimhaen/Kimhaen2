<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp"%>

<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title"> Message Box </h2>
		<div class="sub-search">
			<form name="my" method="post" action="messagebox.do" onsubmit="return check()">
				<select name="sel" class="sel">
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="cont" class="text">
				<input type="submit" value="검색" class="btn">
			</form>
		</div>
					
			</div>
			<div class="content-body">
			<table class="qatable">
			<caption class="readonly"> Message Box </caption>
			<colgroup>
			<col width="6%">
			<col width="60%">
			<col width="20%">
			<col width="15%">
			</colgroup>
			<tbody>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
				<!-- 	<th>날짜</th> -->
				</tr>
<!-- 			 	<tr>
					<td>2</td>
					<td>안녕하세요</td>
					<td>삼성 인사팀</td>
					<td>2019-06-15</td>
				</tr> 
						<tr>
					<td>1</td>
					<td>HELLO </td>
					<td>Apple HR</td>
					<td>2019-06-13</td>
				</tr> --> 
 		<tr>
			<c:set var = "cnt" value = "${list.size()}" />
			<c:if test="${list.size()!=0 }">
			<c:forEach var="ct" items="${list }">
				
					<td>${cnt}</td>
					<td><a href="contactview.do?num=${ct.num }">${ct.subject }</a></td>
					<td>${ct.name }</td>
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
			<li><a href="#">다음</a></li>
		</ul>

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