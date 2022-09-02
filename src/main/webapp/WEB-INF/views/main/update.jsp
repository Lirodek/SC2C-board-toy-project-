<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko"></html>

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">
<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->
<link
	href="resources/signup/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="resources/signup/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="resources/signup/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link href="resources/signup/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="resources/signup/css/main.css" rel="stylesheet" media="all">
</head>

<body>
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title"> 내 정보 </h2>
				</div>
				<div class="card-body">
					<form action="admin_update" enctype="multipart/form-data"  method="POST">
						<div class="form-row">
							<div class="name">내 정보 관리</div>
							<div class="value">
								<div class="input-group-desc">
									<div style="display: flex;">
										<div style="width: 100px; height: 100px;" id="here">
											<c:choose>
												<c:when
													test="${user.user_profile != null || user.user_profile == ''}">
													<img style="width: 100px; height: 100px;" id="img"
														src="${user.user_profile }" alt="" />
												</c:when>
												<c:otherwise>
													<img style="width: 100px; height: 100px"
														src="resources/imgs/default_profile.jpg"
														alt="" />
												</c:otherwise>
											</c:choose>
										</div>

										<div style="margin-left: 50px; width: 100px; height: 100px;" id="image_container"></div>
										<div style="display: inline-block; width: 100px;"></div>
									</div>
									<input class="input-b5" id="file" name="uploadFile" type="file"
										accept="image/*" onchange="setThumbnail(event);">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">ID</div>
							<div class="value">
								<div class="input-group-desc">
									<input class="input--style-5" type="text" name="user_Id" onblur="idchecking()" autocapitalize="none" id="id" readonly>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Password</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="password" name="user_Pw"
										autocapitalize="none" onblur="passwordChecked()" id="password">
									<label class="label--desc" id="label_password">비밀번호를
										입력해주세요</label>
								</div>
							</div>
						</div>
						<div class="form-row m-b-55">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<div class="input-group-desc">
										<input class="input--style-5" type="text" name="user_Email"
											id="email" autocapitalize="none" onblur="" id="email"
											readonly>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Name</div>
							<div class="value">
								<div class="input-group">
									<div class="input-group-desc">
										<input class="input--style-5" type="text" name="Name"
											maxlength='11' autocapitalize="none" id="name"
											onblur="nameChecked()"> <label class="label--desc"
											id="label_name">Nick Name</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">authority</div>
							<div class="value">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="user_subject">
											<option selected="selected" value="0">유저</option>
											<option value="1">관리자</option>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>

						<div>
							<button class="btn btn--radius-2 btn--green" type="button"
								onclick="submitBtn()" id="submitButton">변경하기</button>
							<button class="btn btn--radius-2 btn--red" type="button"
								onclick="back()" id="submitButton">취소하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('input[name=user_Id]').attr('value', "${user.user_idname}");
		$('input[name=user_Email]').attr('value', "${user.user_email}");
		$('input[name=Name]').attr('value', "${user.user_nickName}");
	</script>
	<!-- Jquery JS-->
	<script src="resources/signup/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="resources/signup/vendor/select2/select2.min.js"></script>
	<script src="resources/signup/vendor/datepicker/moment.min.js"></script>
	<script src="resources/signup/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="resources/signup/js/adminControl.js"></script>
	<script src="resources/signup/js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->