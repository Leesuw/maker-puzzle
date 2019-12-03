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
		#pwc{
		 display: none;
		}
		#echeck{
			font-size: 10px;
			color: red;
		}
		#pwc{
			font-size: 10px;
			color: red;
		}
		#mass{
		font-size: 10px;
		color: red;
		}
		#q1{
		width : 500px;
		height : 500px;
		border: 1px solid black;
		}
	</style>
</head>
<body>
<!-- onsubmit="return joinCheck()" -->
<h1>회원가입 page</h1>
<h2>환영합니다. 회원가입 양식을 작성해 주세요~!~!</h2>
<div id="q1">
<form action="join" method="post" >
	이메일 아이디 <br>
	<input type="text" id="m_email" name="m_email" placeholder="koer45@naver.com" onchange="bgcolor_yellow(this)"><br>
	 <span id="echeck"></span>
	메이커 이름(닉네임) <br>
	<input type="text" id="mpr_nicname" name="mpr_nicname" placeholder="구운계란"><br>
	비밀번호<br>
	<input type="password" id="m_pw" name="m_pw" placeholder="8자 이상 (영문,숫자,특수기호 중 2가지 혼합 필수)" onchange="bgcolor_yellow(this)"><br>
	<span id ="mass"></span>
	비밀번호 확인<br>
	<input type="password" id="pwcheck" placeholder="비밀번호를 확인합니다." onchange="bgcolor_yellow(this)"><br>
	<span id="pwc"></span>
	<hr>
	입력된 정보는 외부에 노출되지 않고,<br>보다 나은 서비스 제공 합니다.
	성별<br>
	<input type="radio" name="mpr_gender" value="남자">남자
	<input type="radio" name="mpr_gender" value="여자">여자<br>
	출생연도<br>
	<select name="m_date">
	<option >선택해주세요
	<option value="2005" >2005
	<option value="2004">2004
	<option value="2003">2003
	<option value="2002">2002
	<option value="2001">2001
	<option value="1999">1999
	<option value="1998">1998
	<option value="1997">1997
	<option value="1996">1996
	
	</select><br>
	<button>회원가입!!</button>
</form>
</div>
</body>
<script type="text/javascript">

function bgcolor_yellow(obj) {
	var mbpw = $("#m_pw").val();
	var mbpw2 = $("#pwcheck").val();
	var email = document.getElementById("m_email").value;
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var mpw = $("#m_pw").val();
	var pwtext =  /^[A-Za-z0-9]{6,12}$/;

	  if(mbpw != mbpw2 ){
		  $('#pwc').css("display","inline")
			$('#pwc').html('비밀번호가 다릅니다.<br>')
	  }else{
			$('#pwc').css("display","none")
		 }
	   if(exptext.test(email)==false){
		  $('#echeck').css("display","inline")
			$('#echeck').html('이메일 형식에 맞지 않습니다.<br>')
			
		}else{
			$('#echeck').css("display","none")
		} 
	   if(pwtext.test(mpw)==false){
			  $('#mass').css("display","inline")
				$('#mass').html('비밀번호 형식에 맞지 않습니다.<br>')
				
			}else{
				$('#mass').css("display","none")
			} 
}


/* function joinCheck() {
	var mbid = $("#m_email").val();
	var mbpw = $("#m_pw").val();
	var mbpw2 = $("#pwcheck").val();
	var mbname = $("#mpr_nicname").val();
	var mbbirth = $("#mb_birth").val();
	var mbaddr = $("#addr1").val();
	var mbaddr2 = $("#addr2").val();
	var mbaddr3 = $("#addr3").val();


	if (mbid.length == 0) {
		alert("아이디를 입력해주세요."); 
		$("#echeck").html
		$("#mb_id").focus();
		return false;
	}

	if (mbpw.length == 0) {
		alert("비밀번호를 입력해주세요.");
		$("#mb_pw").focus();
		return false;
	}
	if (mbpw != mbpw2) {
		alert("비밀번호확인이 일치하지 않습니다. 비밀번호를 확인해주세요.")
		$("#mb_pwcheck").focus();
		return false;
	}

	if (mbname.length == 0) {
		alert("이름을 입력해주세요.")
		$("#mb_name").focus();
		return false;
	}

	if (mbbirth.length == 0) {
		alert("생일을 입력해주세요.")
		$("#mb_birth").focus();
		return false;
	}
	if (mbaddr.length == 0) {
		alert("우편번호를 입력해주세요.")
		$("#addr1").focus();
		return false;
	}
	if (mbaddr2.length == 0) {
		alert("주소를 입력해주세요.")
		$("#addr2").focus();
		return false;
	}
	if (mbaddr3.length == 0) {
		alert("상세주소를 입력해주세요.")
		$("#addr3").focus();
		return false;
	}
	if (email.length == 0) {
		alert("이메일을 입력하세요.")
		$("#mb_email").focus();
		return false;
	}
	if ($('#fileCheck').val() == 0) {
		alert("프로필 이미지를 첨부해주세요.")
		return false;
	}
	if ($("input:checkbox[name=chk2]").is(":checked") == false) {
		alert("이용약관에 동의해주세요.")
		return false;
	}
	if ($("input:checkbox[name=chk3]").is(":checked") == false) {
		alert("개인정보 수집 약관에 동의해주세요.")
		return false;
	}
	if (confirm("회원가입을 하시겠습니까?")) {
		if (idck == 0) {
			alert("아이디 중복체크를 진행해주세요.")
			return false;
		} else {
			alert("회원가입을 축하합니다!");
			$("#memberapplyFrm").submit();
		}
	} 
} */
</script>
</html>