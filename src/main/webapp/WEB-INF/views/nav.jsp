<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<nav class="navbar navbar-default" style="
	.navbar {
   	 position: relative;
   	 min-height: 50px;
    margin-bottom: 20px;
    border: 1px solid transparent;
}">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collaps"
					data-toggle="collapsed" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">SC2 Community</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">소개<span class="sr-only"></span></a></li>
					<li><a href="${pageContext.request.contextPath}/util/instructor">유틸</a></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">프로토스 게시판</a></li>
							<li><a href="#">저그 게시판</a></li>
							<li><a href="#">테란 게시판</a></li>
						</ul></li>
				</ul>
				<form action="" class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="내용을 입력해주세요." />
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<c:choose>
					<c:when test="${user != null }">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">회원정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/user_logout">로그아웃</a></li>
									<li><a href="${pageContext.request.contextPath}/member/memberUpdateView">정보수정</a></li>
									<li><a href="${pageContext.request.contextPath}/member/memberDeleteView">회원탈퇴</a></li>
								</ul>
								
							</li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">접속하기<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
									<li><a href="${pageContext.request.contextPath}/user_signup">회원가입</a></li>
								</ul>
							</li>
						</ul>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</nav>