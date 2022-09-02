<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="resources/signup/css/opensans-font.css">
<link rel="stylesheet" type="text/css"
	href="resources/signup/fonts/line-awesome/css/line-awesome.min.css">
<!-- Jquery -->

<!-- Main Style Css -->
<link rel="stylesheet" href="resources/signup/css/style.css" />
<body class="form-v7">
	<div class="page-content">
		<div class="form-v7-content">
			<div class="form-left">
				<img
					src="https://mblogthumb-phinf.pstatic.net/MjAxNzAzMDNfMTA0/MDAxNDg4NTE4NjA2OTk5.yPle8Y9fuGwt8SGSV42fQ2NDBM014cv8CKcMmMc5DUcg.HNxJ_RSoZB5o2YySbS7igz2xrLTBw4V0pmroZ2zACMUg.JPEG.wpxm1415/%EC%8A%A4%ED%83%802%ED%98%91%EB%8F%99%EC%A0%84%EC%95%84%EB%A5%B4%ED%83%80%EB%8B%88%EC%8A%A41.jpg?type=w800"
					alt="form">
				<p class="text-1">Sign Up</p>
				<p class="text-2">창의력 & 전략적인 판단으로 게임을 승리한다</p>
			</div>
			<form class="form-detail" action="signup_Action" method="post"
				id="myform">
				<div class="form-row">
					<label for="username">id</label> 
					<input type="text" name="user_idname" id="user_id" 
						class="input-text" required	onblur="idCheck()"> 
					<label class="label--desc1" id="label_id"></label>
				</div>
				<div class="form-row">
					<label for="password">PASSWORD</label> <input type="password"
						name="user_password" id="user_pw" class="input-text" required onblur="pwCheck()">
					<label class="label--desc2" id="label_PW"></label>
				</div>
				<div class="form-row">
					<label for="comfirm_password">CONFIRM PASSWORD</label> <input
						type="password" name="comfirm_password" id="confirm"
						class="input-text" required onblur="pwConCheck()"> <label class="label--desc3"
						id="label_PWC"></label>
				</div>
				<!-- 
				<div class="form-row">
					<label for="your_email">E-MAIL</label> <input type="text"
						name="your_email" id="your_email" class="input-text" required
						pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
				</div>
				 -->
				<div class="form-row">
					<label for="nick_name">NickName</label> <input type="text"
						name="user_nickName" id="nick_name" class="input-text" required onblur="nickCheck()">
					<label class="label--desc" id="label_Nick"></label>
				</div>

				<div class="form-row-last">
					<p>
						<input type="button" id="submitButton" name="register"
							class="register" value="Register" onclick="test()" /> <img
							style="width: 50px; height: 50px; cursor: pointer;"
							src="data:image/jpeg;base64,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"
							alt="" /> Or <img id="naverIdLogin_loginButton"
							onclick="javascript:void(0)"
							src="resources/signup/images/naver_login.png" alt=""
							style="width: 50px; height: 50px; cursor: pointer;" />
					</p>
				</div>

			</form>
		</div>
	</div>

	<script
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>

	<script
		src="${pageContext.request.contextPath}/resources/login_resources/js/login.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="resources/signup/js/signup.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->