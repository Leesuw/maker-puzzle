<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
div {
	margin: auto;
}

text {
	font-size: 17px;
}

#logoimg {
	width: 250px;
	height: 80px;
	margin-left: 220px;
	margin-top: 40px;
}

#login {
	font-size: 20px;
	text-align: center;
}

#mb_id {
	width: 250px;
	height: 40px;
}

#mb_pw {
	width: 250px;
	height: 40px;
}

.btz {
	margin-top: 30px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(230, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(230, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(230, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 400px;
	height: 60px;
	border-color: rgb(230, 200, 120);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	font-size: 25px;
}

#haha {
	margin-top: 30px;
	/*General*/
	display: inline-block;
	text-decoration: none;
	/*Text*/
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 13px;
	font-weight: bold;
	line-height: 240%;
	color: rgb(162, 136, 44);
	text-align: center;
	text-shadow: 0px 1px 0px rgba(255, 255, 255, 0.25);
	/*Button*/
	background-color: #FFE79E;
	background-image: -moz-linear-gradient(53% 100% 90deg, rgb(212, 212, 212)
		0%, rgb(237, 237, 237) 100%);
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	width: 200px;
	height: 30px;
	border-color: rgb(255, 192, 86);
	border-width: 1px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border-style: solid;
	-moz-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-webkit-box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px
		0px rgba(255, 255, 255, 0.25);
	box-shadow: 0px 0px 0px 3px rgba(0, 0, 0, 0.1), inset 0px 1px 0px
		rgba(255, 255, 255, 0.25);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3)";
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffffefbf,
		endColorstr=#ffffe185, GradientType=0) progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,
		Strength=3);
	display: inline-block;
	background-image: -webkit-gradient(linear, 53% 100%, 53% 3%, color-stop(0, rgb(212, 212,
		212)), color-stop(1, rgb(237, 237, 237)));
	background-image: -webkit-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -o-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: -ms-linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
	background-image: linear-gradient(90deg, rgb(212, 212, 212) 0%,
		rgb(237, 237, 237) 100%);
}

.btz:hover {
	color: white;
}

.btz:active {
	color: yellow;
}

#haha:hover {
	color: white;
}

#haha:active {
	color: yellow;
}

#loginFrmmain {
	margin-top: 30px;
	width: 600px;
	height: 400px;
}

#loginmain {
	width: 700px;
	height: 600px;
}

#joinatag {
	width: 600px;
	height: 70px;
	display: block;
	text-align: center;
}

body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;

}

.signUp {
	position: relative;
	margin: 200px auto;
	width: 500px;
	padding: 50px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #C4C4C4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before, .signUp:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #D2D2D2;
	border-radius: 4px;
}

.signUp:after {
	bottom: 3px;
	border-color: #DCDCDC;
}

.signUpTitle {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #777;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #F7F7F7;
}

.signUpTitle:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: #C4E17F;
	border-radius: 5px 5px 0 0;
	background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.signUpInput {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #EBEBEB;
	box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
	border-color: #62C2E4;
	outline: none;
	-webkit-box-shadow: inset 0 -2px #62C2E4;
	box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
	line-height: 48px;
}

.signUpButton {
	position: relative;
	vertical-align: top;
	width: 100%;
	height: 54px;
	padding: 0;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #F0776C;
	border: 0;
	border-bottom: 2px solid #D76B60;
	border-radius: 5px;
	cursor: pointer;
	-webkit-box-shadow: inset 0 -2px #D76B60;
	box-shadow: inset 0 -2px #D76B60;
}

.signUpButton:active {
	top: 1px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

:-moz-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-placeholder {
	color: #AAAAAA;
	opacity: 1;
	font-weight: 300;
}

::-webkit-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

:-ms-input-placeholder {
	color: #AAAAAA;
	font-weight: 300;
}

::-moz-focus-inner {
	border: 0;
	padding: 0;
}
.btnmember{
  background: blue;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.btnmember:hover{
  background:#fff;
  color:#1AAB8A;
}
.btnmember:before,.btnmember:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
.btnmember:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.btnmember:hover:before,.btnmember:hover:after{
  width:100%;
  transition:800ms ease all;
}
 #conmember{
 display: none;
 width: 700px;
	height: 600px;
 }


</style>
</head>
<body>
	<div id="loginmain">
		<button id="m" class ="btnmember">개인회원</button><button id="c" class ="btnmember">기업회원</button><br>
		<div id="loginFrmmain">
			
			<form action="/norlogin" name="loginFrm" method="post" class="signUp">
				<div id="login">
					<div align="center">
						<a href="home"><img src="resources/img/MAKER PUZZLE.jpg"
							width="250px" height="80px"></a><br />
						<br />
						<br />
						<p>신규 사용자이신가요 ? <a href="joinFrm">회원가입</a>하기</p>
						<br />
					</div>
					<table id="idpw" align="center">
						<tr>
							<th>이메일</th>
							<th><input type="text" name="m_email" id="mb_id"
								class="signUpInput" placeholder="Type your user e-mail" autofocus
								required /></th>
						</tr>
						<tr>
							<th>비밀번호</th>
							<th><input type="password" name="m_pw" id="mb_pw"
								class="signUpInput" placeholder="Type your user password"
								autofocus required /></th>
						</tr>
					</table>

					<div id="mfind">
						<br />
						<br /> <a href="memberfind">아이디 | 비빌번호 찾기</a><br />
						<br />
					</div>
					<div id="loginbtz">
						<button class="signUpButton" id="login1">로그인</button>
					</div>
				</div>
				<div>
				<hr>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=7eba76034def5dddeb7592003fdb9fdb&redirect_uri=http://localhost:81/login/kakaologin&response_type=code">
             <img src="./resources/img/kakao_account_login_btn_medium_narrow.png">
        </a>
		</div>
			</form>
		
		</div>
		<!--기업  -->
		 <div id="conmember">
			
			<form action="/norlogin" name="loginFrm" method="post" class="signUp">
				<div id="login">
					<div align="center">
						<a href="home"><img src="resources/img/MAKER PUZZLE.jpg"
							width="250px" height="80px"></a><br />
						<br />
						<br />
						<p>신규 사용자이신가요 ? <a href="joinFrm">회원가입</a>하기</p>
						<br />
					</div>
					<table id="idpw" align="center">
						<tr>
							<th>이메일</th>
							<th><input type="text" name="m_email" id="mb_id"
								class="signUpInput" placeholder="Type your user e-mail" autofocus
								required /></th>
						</tr>
						<tr>
							<th>비밀번호</th>
							<th><input type="password" name="m_pw" id="mb_pw"
								class="signUpInput" placeholder="Type your user password"
								autofocus required /></th>
						</tr>
					</table>

					<div id="mfind">
						<br />
						<br /> <a href="memberfind">아이디 | 비빌번호 찾기</a><br />
						<br />
					</div>
					<div id="loginbtz">
						<button class="signUpButton" id="login1">로그인</button>
					</div>
				</div>
			</form>
		<div>
		
		</div>
		</div> 
		
	</div>
</body>
<script type="text/javascript">

	$('#m').click(function() {
		$('#conmember').css("display","none")
		$('#loginFrmmain').css("display","inline")
	});
	$('#c').click(function() {
		$('#loginFrmmain').css("display","none")
		$('#conmember').css("display","inline")
	});
</script>
</html>