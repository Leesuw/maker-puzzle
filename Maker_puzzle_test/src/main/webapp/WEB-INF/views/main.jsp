<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
::-webkit-scrollbar{width: 2px;}
::-webkit-scrollbar-track {background-color:#FFC19E;}
::-webkit-scrollbar-thumb {background-color:#FFC19E;border-radius: 5px; height: 10px;}
::-webkit-scrollbar-thumb:hover {background: #FFC19E;}
::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {
width:5px;height:5px;background:#FFC19E;}
div {
	margin: auto;
}

#header {
	padding: 3px;
	width: 1510px;
	height: 100px;
	float: left;
}

#logo {
	padding: 5px;
	width: 270px;
	height: 80px;
	float: left;
}

#search {
	margin-left: 100px;
	padding-left: 60px;
	padding-right: 20px;
	padding-top: 30px;
	padding-bottom: 30px;
	width: 630px;
	height: 50px;
	float: left;
}

#searchbox {
	width: 450px; 
	height: 40px;
	float: left;
}

#searchtxt {
	width: 430px;
	height: 40px;
	align: center;
	background-color: none;
	border: 2px solid #44adda;
}

#searchtxt:focus {
	outline: none;
}

#searchbtn {
	position: absolute;
	width: 50px;;
	height: 40px;
	margin-left: -70px;
	display: inline;
	font-size: 1.1em;
	font-style: italic;
	box-sizing: border-box;
	outline: none;
	background: none;
	border: none;
	color: gray;
}

#searchbtn:hover {
	color: coral;
}

#searchbtn:active {
	position: relative;
	top: 1px;
}

#rankingbox {
	width: 150px;
	height: 30px;
	padding-top: 10px;
	position: relative;
	float: left;
}

#ranking {
	width: 150px;
	height: 30px;
	position: absolute;
	top: 5;
	left: 5;
	float: left;
	font-size: 16px;
	font-weight: bolder;
	font-family: Verdana, sans-serif;
}

#ranking span {
	text-align: center;
	height: 30px;
	line-height: 30px;
	/* 	box-shadow: 4px 2px 9px -4px rgba(0,0,0,0.75); */
}

#loginwriter {
	padding: 3px;
	padding-top: 20px;
	width: 400px;
	height: 80px;
	float: right;
}

#category {
	float: left;
	width: 1500px;
	height: 50px;
}

#subcategory {
	margin-top: 14px;
	width: 50px;
	height: 50px;
	background-color: #44adda;
	color: white;
	font-size: 30px;
	float: left;
}

#menu {
	margin-top: 14px;
	float: left;
	width: 1400px;
	height: 50px
}

.submenu {
	margin-left: 100px;
	padding-top: 10px;
	width: 200px;
	float: left;
	height: 30px;
	text-align: center;
	font-size: 18px;
}

#msg {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	margin-bottom: 10px;
	float: left;
}

#mypage {
	float: left;
	width: 50px;
	height: 50px;
	margin-bottom: 30px;
	margin-top: 10px;
	font-size: 15px;
	font-weight: 700;
	text-align: center;
}

.loginmsg {
	float: left;
	width: 250px;
	height: 50px;
	margin-top: 10px;
	margin-left: 10px;
}

.logbtn {
	margin: auto;
	width: 130px;
	text-align: center;
}

.mark {
	float: left;
	width: 250px;
	height: 25px;
	margin-left: auto;
	margin-top: auto;
	color: #3fabd9;
	font-size: 15px;
	font-weight: 700;
}

#alarmList {
	position: absolute;
	width: 240px;
	heigth: auto;
	background-color: white;
	color: white;
	padding: 1px;
	font-size: 10px;
	display: none;
	z-index: 2000;
	box-shadow: 4px 2px 9px -4px rgba(0, 0, 0, 0.75);
	border: 1px solid black;
}

.alarmtitle {
	text-align: center;
	font-size: 18px;
	background-color: #FFC19E;
	color: gray;
}

.alarmcontents {
	padding-left: 5px;
	color: gray;
	display: none;
	border: 1px solid #FFC19E;
}

.alarmcontents:hover {
	background-color: #D0F5A9;
}

* {
	margin: 0px;
	padding: 0px;
}

nav {
	font-family: Helvetica, Arial, "Lucida Grande", sans-serif;
	font-size: 13px;
	color:white;
	line-height: 1.5;
	margin: 50px auto;
	width: 200px;
	-webkit-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
}

.menu-item {
	background: #44adda;
	width: 200px;
}

/*Menu Header Styles*/
.menu-item h4 {
	color: white;
	height: 30px;
}

/*ul Styles*/
.menu-item ul {
	background: #196180;
	font-size: 13px;
	font-weight: 400;
	line-height: 30px;
	height: 0px;
	list-style-type: none;
	overflow-y: auto;
	padding: 0px;
	width: 175px;
	position: absolute;
	z-index: 1000;
	top: 170px; \
	/*Animation*/
	-webkit-transition: height 1s ease;
	-moz-transition: height 1s ease;
	-o-transition: height 1s ease;
	-ms-transition: height 1s ease;
	transition: height 1s ease;
}

.menu-item:hover ul {
	/* overflow: auto; */
	overflow: none;
	height: 335px;
	width: 175px;
	position: absolute;
	top: 170px;
	z-index: 1002;
	-webkit-transition: height 1s ease;
	-moz-transition: height 1s ease;
	-o-transition: height 1s ease;
	-ms-transition: height 1s ease;
	transition: height 1s ease;
}

.menu-item li:hover {
	font-weight: 900;
	background-color: #cabff2;
}

.revauctionbtn, .auctionbtn, .sponsorbtn {
	margin-top: 20px;
	margin-right: 10px;
	background: #44adda;
	float: right;
	color: #fff;
	border: none;
	width: 170px;
	height: 40px;
	font-size: 20px;
	border: 1px solid #f0f0f0;
	box-shadow: 3px 0px 8px -3px rgba(0,0,0,0.56);
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	/* 	background-color: coral;
	margin-top: 20px;
	margin-right: 10px;
	width: 150px;
	height: 30px;
	color: white;
	float: right; */
}

.revauctionbtn:hover, .auctionbtn:hover, .sponsorbtn:hover {
	background: #fff;
	color:#44adda;
}

.revauctionbtn:before, .auctionbtn:before, .sponsorbtn:before,
	.revauctionbtn:after, .auctionbtn:after, .sponsorbtn:after {
	content: '';
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
	transition: 400ms ease all;
}

.revauctionbtn:after, .auctionbtn:after, .sponsorbtn:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

.mtag:visited {
	font-size: 22px;
	font-weight: 800;
	text-decoration: none;
	color: #646464;
}

.mtag:link {
	font-size: 22px;
	font-weight: 800;
	text-decoration: none;
	color: #646464;
}

.mtag:hover {
	font-size: 22px;
	font-weight: 800;
	transform: scale(3Y);
	transition-duration: 1s;
	font-weight: 900;
}

.atag:hover {
	text-decoration: none;
	color: black;
}

.atag:active {
	text-decoration: none;
	color: black;
}

.atag:visited {
	text-decoration: none;
	color: black;
}

.atag:link {
	text-decoration: none;
	color: black;
}
#fontcolor {
	color: white;
	font-size: 35px;
	align: center;
	height: 30px;
}
</style>
</head>
<body>
	<div id="header">
		<div id="logo">
			<a href="home" class='atag'><img src="./resources/img/MAKER PUZZLE.jpg"
				width="250px" height="80px"></a>
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
			<!-- <img src="./resources/images/logo.png" width="250px" height="80px" /> -->
		</div>
		<form name="searchingfct" action="searching" method="POST">
			<div id="search">
				<div id="searchbox">
					<input type="text" id="searchtxt" name="word"
						placeholder="검색어를 입력해주세요." style="padding-left: 5px;" />
					<button id="searchbtn">Search</button>
				</div>
				<div id="rankingbox">
					<div id="ranking"></div>
				</div>
			</div>
		</form>
		<div id="loginwriter">

				<div class="loginmsg">
					<div class="mark">로그인 해주시기 바랍니다.</div>
					<c:if test="${userId eq null}">
					<input type="button" class="logbtn"
						onclick="location.href='login'" value="로그인"><br>
						</c:if>
				</div>
			
			
				<div class="loginmsg">
					
					<form id="logout" action="logout" method="post">
					<c:if test="${userId ne null}">
						<input type="button" class="logbtn" onclick="javascript:logout()"
							value="로그아웃">
							 </c:if>
					</form>
				</div>
			
		</div>
	</div>
	<div id="category">
		<div id="subcategory" align="center" class="menu-item">
			<h4>
				<a href="#" class='atag'><span id="fontcolor">≡</span></a>
			</h4>
			<nav>
				<ul>
				</ul>
			</nav>
		</div>
		<div id="menu">
			<div class="submenu">
				<a href="sponsor" class='mtag'>프로젝트</a>
			</div>
			<div class="submenu">
				<a href="reviewboard" class='mtag'>기업</a>
			</div>
			<div class="submenu">
				<a href="popularWriterFrm" class='mtag'>메이커</a>
			</div>
			<div class="submenu">
				<a href="servicecenter" class='mtag'>고객지원</a>
			</div>
 
		</div>
	</div>
	
		
			<!-- <button class="sponsorbtn" onclick="location.href='sponregistration'">후원상품등록</button>
			<button class="auctionbtn" onclick="location.href='auctionWrite'">출품등록하기</button> -->
	

</body>
</html>