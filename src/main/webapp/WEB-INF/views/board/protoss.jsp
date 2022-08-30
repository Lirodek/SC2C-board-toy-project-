<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.jumbotron {
	background-image:
		url('https://image.fmkorea.com/files/attach/new/20190325/486263/263885075/1691722921/f704772c79e508fcc3610f4a068ec4a1.jpg');
	background-size: cover;
	margin-top: 10px;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}

#sc_title {
	width: 480px;
	margin: auto;
	background-color: black;
	background-color: rgba(0, 0, 0, 0.4);
	border-radius: 10px 10px/10px 10px;
}
</style>
<div class="container"style="height: 1050px;">
	<div class="jumbotron">
		<h1 class="text-center" id="sc_title">Protoss Gallary</h1>
		<p class="text-center">
			SC2C 프로토스 갤러리의 오신것을 환영합니다.<br> <br>
		</p>
	</div>
	<table class="table table-dark" >
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Handle</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
			</tr>
		</tbody>
	</table>
</div>