<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title> RANDOM </title>
        <input type="button" value="전송" class="btn-write" onclick="randomLink()">
                
<script type='text/javascript'>

var linkUrls    = ["http://naver.com","http://daum.net","http://google.com"];

function fnRandomLink() {
    var pos    = Math.ceil(Math.random()*linkUrls.length) - 1;
    location.href = linkUrls[pos];
}

function randomLink() {
var links = [];
links[0] = "http://www.naver.com";
links[1] = "http://www.daum.net";
links[2] = "http://www.xpressengine.com";

var index = Math.floor(Math.random() * links.length);
document.location.href = links[index];
}
</script>
<style>
</style>
    </head>
    <body>