<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>

div {
	margin: auto;
	background-color:white;
	
}

#join {
	position : relative;
	top:100px;
	width: 1000px;
	height: 1000px;
	text-align: center;
}

#logoimg {
	margin: 10px;
	width: 250px;
	height: 100px;
}

#nontable {
	width: 700px;
	height: 600px;
	text-align: center;
}

#norjoinFrm {
	margin: auto;
	width: 520px;
	text-align: center;
	height: auto;
}

.memberN {
	font-size: 15px;
	width: 300px;
	height: 30px;
}

#btz {
	width: 70;
	height: 40;
}

#norjoinFrm2 {
	position: relative;
	top: 50px;
	left: 300px;
}

#Echeck {
	width: 100;
	height: 40;
}

#null {
	font-size: 15px;
	width: 20px;
}

.btz2 {
	margin-top: 20px;
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
	background-color: b;
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
	height: 70px;
	border-color: rgb(223, 192, 86);
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

.btz2:hover {
	color: white;
}

.btz2:active {
	color: yellow;
}

#checkbx {
	padding-top: 10px;
	width: 400px;
	height: 100px;
	text-align: left;
}
#eacheck{
  display: none;
}
select {
	width: 300px;
	height: 30px;
}
.msg{
display : none;
	font-size: 10px;
			color: red;
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
<div id="join">
<button id="m" class ="btnmember">개인회원</button><button id="c" class ="btnmember">기업회원</button><br>
		<a href="home"><img src="resources/img/MAKER PUZZLE.jpg"
				width="270px" height="100px"></a>
	
		<form action="join" name="memberapplyFrm" id="loginFrmmain" method="post">

			<div id="nontable">
				<table id="norjoinFrm">
					<tr>
						<th>이메일(아이디)</th>
						<td><input class="memberN" type="text" name="m_email"
							id="mb_id" placeholder="koer45@naver.com" onchange="memberEamilCheck(this)"></td>

						<!-- ID체크 했는지 안 했는지 -->
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span id="echeck" class="msg"> 메일 형식을 지켜주세요</span></td>
					</tr>
					<tr>
						<th>메이커 닉네임</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="memberN" type="password" name="m_pw"
							id="m_pw" placeholder="8자 이상 (영문,숫자,특수기호 중 2가지 혼합)" onchange="memberPasswordCheck(this)"></td>
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span id="mass" class="msg">8자 이상 (영문,숫자,특수기호 중 2가지 혼합)을 지켜주세요</span></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input class="memberN" type="password" name="mb_pwcheck"
							id="mb_pwcheck" placeholder="비밀번호를 확인합니다." onchange="memberPasswordCheck2(this)"></td>
					</tr>
					<tr>
						<th colspan="3" align="right"><span id="pwcheck" class="msg">비밀번호가 다릅니다.</span></th>
					</tr>
					
					<tr>
						<th>성별</th>
						<td><input type="radio" name="mpr_gender" value="남자">남자
							<input type="radio" name="mpr_gender" value="여자">여자</td>
					</tr>
					<tr>
						<th>출생연도</th>
						<td><select name="m_date">
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
	
							</select></td>
					</tr>
				</table>
				<div id="checkbx">
					<input id="che" name="check1" type="checkbox" value="1">전체동의<br>
					<input class="i1" id="chk2" name="m_acceptance" type="checkbox" value="Y">이용약관(필수)<br>
					<input class="i2" type="checkbox" id="Chk3" name="m_marketing" value="Y">마켓팅 수신 동의<br> 

				</div>

				<div id="joinbox">
					<input id="joinbtn" class="btz2" type="submit" value="메이커 회원가입 완료"> 
				</div>

			</div>
		</form>
		<!-- 기업 -->
		<form action="join" name="memberapplyFrm" id="conmember" method="post">

			<div id="nontable">
				<table id="norjoinFrm">
				<tr>
						<th>기업종류</th>
						<td><select name="m_date">
								<option >선택해주세요
								<option value="건축설계" >건축설계
								<option value="시공,구조">시공,구조
								<option value="인테리어">인테리어
								<option value="환경">환경
								<option value="조경">조경
								<option value="조명">조명
								<option value="음향">음향
								<option value="전시">전시
								<option value="기타">기타
	
							</select></td>
					</tr>
					<tr>
						<th>사업자등록번호</th>
						<td><input class="memberN" type="text" name="m_email"
							id="mb_id" placeholder="koer45@naver.com" onchange="bgcolor_yellow(this)"></td>
						<td><input id="btz" type="button" value="사업자등록번호 인증"></td>
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span id="echeck" class="msg"> 사업자 인증번호가 불일치 합니다.</span></td>
					</tr>
					<tr>
						<th>회사명</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
					</tr>
					<tr>
						<th>대표자명</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
					</tr>
					<tr>
						<th>회사주소</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
					</tr>
					<tr>
						<th>대표전화번호</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
							
					</tr>
				
					<tr>
						<th>이메일(아이디)</th>
						<td><input class="memberN" type="text" name="m_email"
							id="mb_id" placeholder="koer45@naver.com" onchange="bgcolor_yellow(this)"></td>
						<td><input id="btz" type="button" value="중복확인"></td>

						<!-- ID체크 했는지 안 했는지 -->
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span id="echeck" class="msg"> </span></td>
					</tr>
					<tr>
						<th>메이커 닉네임</th>
						<td><input class="memberN" type="text" name="mpr_nicname"
							id="mb_name" placeholder="구운계란"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="memberN" type="password" name="m_pw"
							id="mb_pw" placeholder="8자 이상 (영문,숫자,특수기호 중 2가지 혼합)" onchange="bgcolor_yellow(this)"></td>
					</tr>
					<tr>
						<td colspan="3" align="right"><p class="result">
								<span id="mass" class="msg">8자 이상 (영문,숫자,특수기호 중 2가지 혼합)을 지켜주세요</span></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input class="memberN" type="password" name="mb_pwcheck"
							id="mb_pwcheck" placeholder="비밀번호를 확인합니다." onchange="bgcolor_yellow(this)"></td>
					</tr>
					<tr>
						<th colspan="3" align="right"><span id="pwcheck" class="msg" >비밀번호가 다릅니다.</span></th>
					</tr>
					
					<tr>
						<th>성별</th>
						<td><input type="radio" name="mpr_gender" value="남자">남자
							<input type="radio" name="mpr_gender" value="여자">여자</td>
					</tr>
					
				</table>
				<div id="checkbx">
					<input id="che" name="check1" type="checkbox" value="1">전체동의<br>
					<input class="i1" id="chk2" name="chk2" type="checkbox" value="Y">이용약관(필수)<br>
					<input class="i2" type="checkbox" id="Chk3" name="chk3" value="Y">마켓팅 수신 동의<br> 

				</div>

				<div id="joinbox">
					<input id="joinbtn" class="btz2" type="submit" value="기업회원 가입완료">
				</div>

			</div>
		</form>
		
	</div>
</body>
<script type="text/javascript">
/* 이메일 유효성 검사 script */
function memberEamilCheck(obj) {
	var email = $("#mb_id").val();
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

 
	   $.ajax({
		   async : true,
			url : "emailEffectiveness",
			type : "post",
			data : email,
			dataType : "html",
			contentType : "application/json; charset=UTF-8",
			success : function(data) {
				
				console.log("data" + data);
			
				if(data === "사용가능한 ID 입니다."){
					if(exptext.test(email)==false){
						 $('#echeck').css("display","inline")
						   $('#echeck').css("color","red")
						  $('#echeck').html("메일 형식을 지켜주세요")
					}else{
						 $('#echeck').css("display","inline")
						  $('#echeck').css("color","blue")
						  $('#echeck').html("사용가능한 아이디 입니다.")
					}
				}else{
					 $('#echeck').css("display","inline")
					 $('#echeck').css("color","red")
					  $('#echeck').html("이미 사용중인 아이디 입니다.")
				}
		
		},

			error : function(error) {

				console.log("error",error);
			}
		});
}

/* 비밀번호 유효성 검사 script */
function memberPasswordCheck(obj) {

	var mpw = $("#m_pw").val();
	var pwtext =/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/

	   if(pwtext.test(mpw)==false){
		   console.log(mpw);
			  $('#mass').css("display","inline")
				
			}else{
				console.log(mpw);
				$('#mass').css("display","none")
			} 
}

/* 비밀번호 확인 유효성 검사 script */
function memberPasswordCheck2(obj) {
	var mbpw = $("#mb_pw").val();
	var mbpw2 = $("#mb_pwcheck").val();

	  if(mbpw != mbpw2 ){
		  $('#pwcheck').css("display","inline")
	  }else{
			$('#pwcheck').css("display","none")
		 }
}
$(function() { //전체선택 체크박스 클릭
	$("#che").click(function() {
		//만약 전체 선택 체크박스가 체크된상태일경우 
		if ($("#che").prop("checked")) {
			//해당화면에 전체 checkbox들을 체크해준다
			$("input[type=checkbox]").prop("checked", true);
			// 전체선택 체크박스가 해제된 경우 
		} else {
			//해당화면에 모든 checkbox들의 체크를해제시킨다.
			$("input[type=checkbox]").prop("checked", false);
		}
	})
})

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