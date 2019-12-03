
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width: 1000px;
	position: relative;
	margin: auto;
}
</style>

</head>
<body>
<h1>Main_Page 입니다.</h1>
<c:if test="${userId eq null}">
<a href="login">로그인</a>
 </c:if>
 <c:if test="${userId ne null}">
<a href="login/logout">로그아웃</a>
 </c:if>
<hr>
<h3>Maker-puzzle에 오신걸 환영합니다.</h3>
<!-- <embed src="https://youtu.be/nhFeVMf-1PQ"> -->
<iframe width="120" height="80" src="https://www.youtube.com/embed/nhFeVMf-1PQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


</body>
<script>

</script>
</html>
