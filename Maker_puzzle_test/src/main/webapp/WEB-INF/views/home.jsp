<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
::-webkit-scrollbar {
	width: 3px;
}

::-webkit-scrollbar-track {
	background-color: white;
}

::-webkit-scrollbar-thumb {
	background-color: #F5BCA9;
	border-radius: 5px;
}

::-webkit-scrollbar-thumb:hover {
	background: #F5BCA9;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	width: 0px;
	height: 0px;
	background: coral;
}

#main {
	width: 1520px;
	height: 170px;
	position: relative;
}

#mainheader {
	border: 1px solid #F5BCA9;
	width: 1518px;
	height: 170px;
	position: fixed;
	background-color: white;
	z-index: 1000;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

#middle {
	width: 1520px;
	height: auto;
	margin-top: 50px;
}

#middle_content1, #middle_content2, #middle_content3 {
	width: 1518px;
	height: 440px;
	float: left;
}

#middle_content1_title, #middle_content2_title, #middle_content3_title {
	width: 1450px;
	height: 40px;
	float: left;
	margin: 20px 20px 10px 20px;
	padding-top: 8px;
	padding-left: 10px;
	padding-bottom: 7px;
	font-size: 25px;
	font-weight: 800;

	color:black;

}

#middle_content1_lv1, #middle_content2_lv1, #middle_content3_lv1 {
	width: 1460px;
	height: 330px;
	float: left;
	margin: 0px 20px 0px 20px;
}

#middle_content1_lv2, #middle_content2_lv2, #middle_content3_lv2 {
	width: 1460px;
	height: 320px;
	overflow-x: auto;
	overflow-y: hidden;
	white-space: nowrap;
	border: 1px solid #f0f0f0;
	border-radius: 5px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

.recommlist, .recommlist2, .recommlist3 {
	width: 280px;
	height: 280px;
	display: inline-block;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
	margin-top: 10px;
	margin-left: 10px;
	box-shadow: 3px 0px 8px -3px rgba(0, 0, 0, 0.56);
}

.recommlist:hover, .recommlist2:hover, .recommlist3:hover {
	transform: scale(1.05);
	border: 2px solid coral;
	transition-duration: 1s;
}

.recomm_img, .recomm_img2, .recomm_img3 {
	width: 270px;
	height: 220px;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px;
}

.recomm_text, .recomm_text2, .recomm_text3 {
	width: 270px;
	height: 50px;
	text-align: center;
	background-color: #FBEFF2;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
}


#footer {
	border: 1px solid red;
	width: 1518px;
	height: 180px;
	margin-top: 20px;
	float: left;
	border: 1px solid #f0f0f0;
}
</style>
</head>
<body>
<div id="main">
		<div id="mainheader">
			<jsp:include page="main.jsp" />
		</div>
	</div>
	<div id="middle">
		<div id="middle_content1">
			<div id="middle_content1_title">&nbsp;프로젝트</div>
			<div id="middle_content1_lv1">
				<div id="middle_content1_lv2">
					
						<div class="recommlist"
							onclick="javascript:location.href='auctionRead'">
							<div class="recomm_img">
								<img src="./resources/img/937.png" width="100%" height="100%" />
							</div>
							
						</div>
					
				</div>
			</div>
		</div>
		<div id="middle_content2">
			<div id="middle_content2_title">&nbsp;기업</div>
			<div id="middle_content2_lv1">
				<div id="middle_content2_lv2">
					
						<div class="recommlist2"
							onclick="javascript:location.href='revauctionread'">
							<div class="recomm_img2">
								<img src="./resources/img/112.jpg" width="100%"
									height="100%" />
							</div>
							
						</div>
					
				</div>
			</div>
		</div>
		<div id="middle_content3">
			<div id="middle_content3_title">&nbsp;메이커</div>
			<div id="middle_content3_lv1">
				<div id="middle_content3_lv2">
				
						<div class="recommlist3"
							onclick="javascript:location.href='sponproduct'">
							<div class="recomm_img3">
								<img src="./resources/img/273.jpg" width="100%" height="100%" />
							</div>
						</div>

				</div>
			</div>
		</div>
		<div id="footer">
			<hr style="width: 100%; border: 2px solid coral; align: center;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>