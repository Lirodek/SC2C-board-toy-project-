<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>게시물 리스트</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet " type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/codingBooster.css">


</head>
<body>
	<style>
.control>.container {
	height: 780px;
}
</style>

	<br>
	<div class="control">
		<div class="container">

			<form class="form-inlin" id="frmSearch" action="/board/list">
				<input type="hidden" id="startPage" name="startPage" value="">
				<!-- 페이징을 위한 hidden타입 추가 -->
				<input type="hidden" id="visiblePages" name="bisiblePages" value="">
				<!-- 페이징을 위한 hidden 타입 추가 -->
				<div class="row">
					<div class="col-xs-12">
						<h2>모든글 보기</h2>
						<br />
						<div class="panel panel-primary">
							<table class="table">
								<thead>
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) == 0 }">
											<tr>
												<td colspan="4" align="center">조회결과가 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach var="list" items="${list }" varStatus="status">
												<tr>
													<td>${list.bno }</td>
													<td><a href="/board/view?bno=${list.bno}">${list.title}</a>
													</td>
													<td>${list.writer }</td>
													<td><fmt:formatDate value="${list.regDate }"
															pattern="yyyy-MM-dd" /></td>
													<td><c:out value="${list.viewCnt }" /></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<br />
							<div style="width: 100%; text-align: center;">
								<ul class="pagination">
								<li class="page-item">
								<c:if test="${page.prev }">
												<a style="background-color: #00aaff;" href="/board/listPageSearch?num=${page.startPageNum - 1 }">이전</a>
											</c:if>
									<c:forEach begin="${page.startPageNum }"
										end="${page.endPageNum }" var="num">
										
											<c:choose>

												<c:when test="${num == select }">
													<a style="background-color: #171717;">${num }</a>
												</c:when>
												<c:otherwise>
													<a href="/board/listPageSearch?num=${num }">${num } </a>
												</c:otherwise>

											</c:choose>
										
									</c:forEach>
									<c:if test="${page.next }">
											<a style="background-color: #00aaff;" href="/board/listPageSearch?num=${page.endPageNum + 1 }">다음</a>
										</c:if>
										</li>
								</ul>
							</div>
							<div
								style="width: 100%; text-align: right; padding: 10px; align-content: center;">
								<select name="searchType" style="height: 30px">
									<option value="title"
										<c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
									<option value="content"
										<c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
									<option value="title_content"
										<c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
									<option value="writer"
										<c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
								</select> <input type="text" style="width: 240px; height: 30px"
									name="keyword" value="${page.keyword }" />
								<button style="height: 30px" type="button" id="searchBtn">검색</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<br />

	<%@ include file="../footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>

	<script>
		document.getElementById("searchBtn").onclick = function() {

			let searchType = document.getElementsByName("searchType")[0].value;
			let keyword = document.getElementsByName("keyword")[0].value;

			console.log(searchType)
			console.log(keyword)

			location.href = "/board/listPageSearch?num=1" + "&searchType="
					+ searchType + "&keyword=" + keyword;
		};
	</script>


</body>
</html>