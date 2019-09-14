<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Haein.</title>
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/common.css" rel="stylesheet">
	<link href="css/mystyle.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
 <script src="path/to/jquery.min.js"></script>
  <script src="path/to/jquery.fitvids.js"></script> 

 
 <script>
 	$(document).ready(function(){
	    $("#videos").fitVids();
	  });
 	
    $(function(){
    	
      $('.slider').bxSlider({
    	  mode: 'fade',
    	  auto: true,
    	  speed: 700,
    	  autoHover: true,
    	  captions: true,
    	  adaptiveHeight: true
      });
      
      $(".sitemap").click(function() {
			$(".sitewrap").slideDown();
		})
	  $("#close").click(function() {
			$(".sitewrap").slideUp();
		})
		
	  $(".nav > nav > .navi > li").hover(function() {
		  $(this).children(".navi2").stop().slideDown();
	  }, function() {
		  $(this).children(".navi2").stop().slideUp();
	  });
		
    });
  </script>
   
</head>
<body>
	<div class="header">
		<header>
		<div class= "topnav">
		<ul>
		<c:if test = "${not empty session }">
			<li><a href="contact.do" class="btn-modify">Message Box</a></li>
		</c:if>
		<c:if test = "${empty session }">
					<li><a href="contactwrite.do">CONTACT</a></li>
					</c:if>
				<li><a href="sns.do" class="sns" > SNS </a></li>
				<li><a href="javascript:void(0)" class="sitemap" style="color:#FA58AC;">GUIDE</a></li>
			</ul>
		<div class = "navigation">
		<h1 class="logo"><a href="index.do"><img src="images/TITLE.png"></a></h1>
		<!-- <li><a href="intro.do"><img src="images/hi.jpg"></a></li> -->
			<div class="nav">
				<nav>
					<ul class="navi">
					<li><a href="index.do">Home</a>
						<ul class="navi2">
						</ul>
					</li>	
						<li><a href="about.do">About Me</a>
							<ul class="navi2">
							<li><a href="res
							ume.do">RESUME</a></li>
							<li><a href="intro.do">INTRODUCE</a></li>
							<!-- <li><a href="#">###</a></li> -->
						</ul>
					</li>
						
						<li><a href="gallery.do">My Story</a>
						<ul class="navi2">
						</ul>
					</li>			
						<li><a href="archive.do">Archive</a>
						<ul class="navi2">
						</ul>
					</li>
						
						
					</ul>	
				</nav>
			</div>
			</div>
		</header>
	</div>
	
	<div class="line"></div>
	
	<div class="sitewrap">
	<span class="fa fa-close close" id="close" style="cursor:pointer"></span>
	<div class="inner">
	<span class="map" ><a href="index.do" style="color:white"> ＊＊＊ </a></span>
		<span class="map" ><a href="about.do" style="color:white"> About Me</a></span>
		<span class="map"><a href="gallery.do" style="color:white"> My Story </a></span>
		<span class="map"><a href="archive.do" style="color:white"> Archive </a></span>
		<span class="map"><a href="sns.do" style="color:white"> SNS </a></span>
		<span class="map"><a href="contactwrite.do" style="color:white"> CONTACT </a></span>
		<span class="map" ><a href="index.do" style="color:white"> ＊＊＊ </a></span>
				<span class="map" ><a href="result.do" style="color:white"> 프로젝트 결과 </a></span>
	</div>
	</div>
	