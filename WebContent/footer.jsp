<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<p class="top">
	<a id="btntop" href="javascript:void(0)">TOP으로 이동</a>
</p>   

<div class="footer">
	<footer>
		<p>&copy; MARON. All rights Reserved.<br>
		<c:if test="${not empty session }">
			<a href="logout.do"> +admin logout</a>
		</c:if>	
			<c:if test="${empty session }">
			<a href="login.do"> +admin</a>
		</c:if>	 </p>
		
	</footer>
	<!-- &copy; &nbsp; &gt; > &lt; < -->
</div>
</body>
<script>
	$(function(){
		$(window).scroll(function(){
			if($(this).scrollTop() > 200){
				$('.top').fadeIn();				
			}else{
				$('.top').fadeOut();
			}
		});
		$('#btntop').click(function(){
			$('html,body').animate({scrollTop : 0},800);
		});
		
	});
</script>
</html>