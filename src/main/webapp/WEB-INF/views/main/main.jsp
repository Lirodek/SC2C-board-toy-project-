<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.jumbotron {
	background-image:
		url('https://bnetcmsus-a.akamaihd.net/cms/blog_header/2g/2G4VZH5TIWJF1602720144046.jpg');
	background-size: cover;
	margin-top: 10px;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
#sc_title{
 	width: 480px;
	margin:auto;
	background-color: black;
	background-color: rgba( 0,0,0, 0.4 );
	border-radius: 10px 10px / 10px 10px;
}
</style>
<div class="container">
	<div class="jumbotron">
		<h1 class="text-center" id="sc_title">SC2 Community</h1>
		<p class="text-center">
			스타크래프트2 커뮤니티에 오신걸 환영합니다.<br> 
			테란, 저그, 프로토스의 대한 생각과 여러분의 공략을 공유해주세요
		</p>
		<p class="text-center">
			<a class="btn btn-primary btn-lg" href="board/show" role="button">게시판
				구경하기</a>
		</p>
	</div>
	<div class="row">
		<div class="col-md-4">
			<h4>저그 게시판</h4>
			<p>자가라의 지휘하의 케리건의 뒤를 이어 테란과 프로토스를 괴멸시키자.</p>
			<p>
				<a class="btn btn-default" data-target="#modal" data-toggle="modal">자세히
					알아보기</a>
			</p>
		</div>
		<div class="col-md-4">
			<h4>프로토스 게시판</h4>
			<p>우리는 지금 아르타니스의 시대에 살고있다, 전사들이여 일어나라!</p>
			<p>
				<a class="btn btn-default" href="board_protoss">자세히 알아보기</a>
			</p>
		</div>
		<div class="col-md-4">
			<h4>테란 게시판</h4>
			<p>게임은 이기려고하는게 아니다 지뢰와 해방선, 화염차로 일꾼만털어보자</p>
			<p>
				<a class="btn btn-default" href="lecture.jsp">자세히 알아보기</a>
			</p>
		</div>
	</div>
	<hr>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">
				<span class="glyphicon glyphicon-pencil"></span> &nbsp;&nbsp; 최신 글
				목록
			</h3>
		</div>
		<div class="panel-body">
			<div class="media">
				<div class="media-left">
					<a href="#" ><img class="media-object" style="width: 563px;"
						src="https://mblogthumb-phinf.pstatic.net/MjAyMDAxMDFfMTMz/MDAxNTc3ODczNTQ5MDA1.jp8AXJpxiqW3WEBH8d_iaVbIOdO0D4vWaA44f7fdIkAg.znUYnmQAq5yfQhwugM4XnxePIceJd1Gz9qwkMhdLrzEg.PNG.978kim/%EC%A7%88%EB%9F%BF1.PNG?type=w2" alt="프로토스 강의 이미지" /></a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">
						<a href="lecture.jsp?lectureName=Protoss">기초 프로토스 빌드 강의</a>&nbsp;<span
							class="badge">New</span>
					</h4>
					프로토스의 간단한 빌드를 알아볼 수 있습니다. 초보자용 빌드 순서와 각종 대처법 초반 0분 ~ 20분 사이의 프로토스의
					기초 빌드를 초단위로 설명하는 총 20가지의 빌드를 무료로 맛 보실 수 있습니다.
				</div>
			</div>
			<hr>
			<div class="media">
				<div class="media-left">
					<a href="#"><img class="media-object"
						src="resources/imgs/test.jpg" alt="테란 강의 이미지" /></a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">
						<a href="lecture.jsp?lectureName=Terran">기초 프로토스 빌드 강의</a>&nbsp;<span
							class="badge">New</span>
					</h4>
					프로토스의 간단한 빌드를 알아볼 수 있습니다. 초보자용 빌드 순서와 각종 대처법 초반 0분 ~ 20분 사이의 프로토스의
					기초 빌드를 초단위로 설명하는 총 20가지의 빌드를 무료로 맛 보실 수 있습니다.
				</div>
			</div>
		</div>
	</div>
</div>
