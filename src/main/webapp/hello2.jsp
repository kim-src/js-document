<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js-document</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.6.2/css/bootstrap.min.css">
<style>
	body {
		margin: 0;
		padding: 0;
	}
	
	.container {
		margin-top: 5%;
		text-align: center;
	}
	
	.main {
		height: 600px;
		width: 1200px;
		margin: 0 auto;
	}
	
	.table {
		width: 100%;
		border-top: 1px solid black;
		border-bottom: 1px solid black;
		border-collapse: collapse;
	}
	
	.table th, td {
		border-top: 1px solid black;
		border-bottom: 1px solid black;
	}
	
	.table th {
		height: 40px;
		color: white;
		background-color: #c9c9c9;
		font-size: 1.2rem;
	}
	
	.table td {
		height: 40px;
	}
	
	.button-area {
		text-align: right;
		margin-bottom: 10px;
	}
	
	.pagination {
		width: 1200px;
		text-align: center;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<section class="container">
		<div class="main">
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="40%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>등록일</th>
						<th>수정일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</body>
<script src="/webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
</script>
</html>