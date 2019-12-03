<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
 #conmember{
 display: none;
 }
</style>
</head>
<body>
<h1>Login Page</h1>
<hr>
<div>
	<div>
	<p>신규 사용자 이신가요? <a href="joinFrm">회원가입</a>하기</p>
	<button id="m">개인회원</button><button id="c">기업회원</button><br>
	<form action="/norlogin" method="post">
	<div id="normember">
		이메일주소 <br> 
		<input type="text" name="m_email" placeholder="koer45@maker-puzzle.com" /><br>
		비밀번호  <a href="memberfind">비밀번호를 잊으셨나요?</a><br>
		<input type="password" name="m_pw" placeholder="비밀번호 입력" /><br>
		<button>로그인</button>
		<hr>
		
		<div>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=7eba76034def5dddeb7592003fdb9fdb&redirect_uri=http://localhost:81/login/kakaologin&response_type=code">
             <img src="./resources/img/kakao_account_login_btn_medium_narrow.png">
        </a>
		</div>
	</div>
	</form>
	<form action="/comlogin">
	<div id="conmember">
		이메일주소 <br> 
		<input type="text" placeholder="koer45@maker-puzzle.com" /><br>
		비밀번호  <a href="memberfind">비밀번호를 잊으셨나요?</a><br>
		<input type="password" placeholder="비밀번호 입력" />
		<button>로그인</button>
	</div>
	
	</form>
	</div>
	
</div>
</body>
<script type="text/javascript">

	$('#m').click(function() {
		$('#conmember').css("display","none")
		$('#normember').css("display","inline")
	});
	$('#c').click(function() {
		$('#normember').css("display","none")
		$('#conmember').css("display","inline")
	});
</script>
</html>