<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js-document</title>
<style>
	body {
		margin: 0;
		padding: 0;
	}
	
	img {
		margin: 0;
		padding: 0;
		display: block;
		width: 100%;
		height: 100%;
	}
	
	.container {
		margin: 4% 0;
		width: 100%;
		height: 100%;
		justify-content: center;
		align-items: center;
		text-align: center;
		display: flex;
	}
		
	.table {
		table-layout: auto;
		border-top: 1px solid black;
		border-bottom: 1px solid black;
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	.table th, td {
		border: 1px solid black;
		padding: 0;
	}
	
	.sub-title {
		background-color: #f2f2f2;
	}
	
	.document-text td {
		text-align: center;
	}
	
	.strong-row td {
		background-color: #f2f2f2;
	}
	
	/* 테이블 규격 설정 */
	#total-size {
		width: 266.06mm;
		height: 163.00mm;
	}
	.group1-head {
		width: 266.06mm;
		height: auto;
		background-color: #f2f2f2;
		font-size: 17pt;
	}
	.group2-metadata {
		width: 266.06mm;
		height: auto;
	}
	.group3-location1 {
		width: 266.06mm;
		height: auto;
	}
	.group3-location2 {
		width: 266.06mm;
		height: auto;
	}
	.group4-source {
		width: 266.06mm;
		height: auto;
	}
	
	.group2-metadata td:nth-child(1) {width:8.59%;}
	.group2-metadata td:nth-child(2) {width:31.15%;}
	.group2-metadata td:nth-child(3) {width:3.13%;}
	.group2-metadata td:nth-child(4) {width:3.13%;}
	.group2-metadata td:nth-child(5) {width:17.65%;}
	.group2-metadata td:nth-child(6) {width:3.22%;}
	.group2-metadata td:nth-child(7) {width:11.45%;}
	.group2-metadata td:nth-child(8) {width:4.64%;}
	.group2-metadata td:nth-child(9) {width:3.33%;}
	.group2-metadata td:nth-child(10) {width:3.33%;}
	.group2-metadata td:nth-child(11) {width:10.38%;}	
	
	.group3-location1 td:nth-child(1) {width:63.65%;}
	.group3-location1 td:nth-child(2) {width:36.35%;}
	.group3-location2 td:nth-child(1) {width:63.65%;}
	.group3-location2 td:nth-child(2) {width:18.18%;}
	.group3-location2 td:nth-child(3) {width:18.18%;}
	
	.group4-source td:nth-child(1) {width: 49.34%;}
	.group4-source td:nth-child(2) {width: 16%;}
	.group4-source td:nth-child(3) {width: 16%;}
	.group4-source td:nth-child(4) {width: 18.67%;}
	
	
</style>
</head>
<body>
	<section class="container">
		<div class="main">
			<table class="table" id="total-size">
				<thead>
					
				</thead>
				<tbody class="document-text">
				
					<!-- Group 1 -->
					<tr class="group1-head">
						<td>분석 공동조사서</td>
					</tr>
				
					<!-- Group 2 -->	
					<tr class="group2-metadata">
						<td id="size-2-1" class="sub-title">탐사 / 천공</td>
						<td id="size-2-2">탐사일  2022.02.15 / 천공일 -</td>
						<td id="size-2-3" rowspan="4">위<br><br><br>치</td>
						<td id="size-2-4"class="sub-title">위도</td>
						<td id="size-2-5">37.816955</td>
						<td id="size-2-6" rowspan="4">공동규모</td>
						<td id="size-2-7" class="sub-title">토피(㎝)</td>
						<td id="size-2-8">53</td>
						<td id="size-2-9" rowspan="2">공동<span id="gap-2-9"></span>관리</td>
						<td id="size-2-10" class="sub-title">번호</td>
						<td id="size-2-11">-</td>
					</tr>
					<tr class="group2-metadata">
						<td id="size-2-1" class="sub-title">관  할  구</td>
						<td id="size-2-2">백석읍</td>
						<td id="size-2-4" class="sub-title">경도</td>
						<td id="size-2-5">126.947396</td>
						<td id="size-2-7" class="sub-title">도로종단 길이(㎝)</td>
						<td id="size-2-8">95</td>
						<td id="size-2-10" class="sub-title">등급</td>
						<td id="size-2-11">-</td>
					</tr>
					<tr class="group2-metadata">
						<td id="size-2-1" class="sub-title">도로명 주소</td>
						<td id="size-2-2">탐사일  2022.02.15 / 천공일 -</td>
						<td id="size-2-4" class="sub-title">차선</td>
						<td id="size-2-5">중앙선 기준 1차로</td>
						<td id="size-2-7" class="sub-title">도로횡단 폭(㎝)</td>
						<td id="size-2-8">69</td>
						<td id="size-2-9" rowspan="2">분석<span id="gap-2-9"></span>공동</td>
						<td id="size-2-10" class="sub-title">번호</td>
						<td id="size-2-11">038-1</td>
					</tr>
					<tr class="group2-metadata">
						<td id="size-2-1" class="sub-title">탐 사 방 향</td>
						<td id="size-2-2">비암리 29-1→연곡리 327-2</td>
						<td id="size-2-4" class="sub-title">지점</td>
						<td id="size-2-5">정지선 후방 8.91m</td>
						<td id="size-2-7" class="sub-title">바닥 깊이(㎝)</td>
						<td id="size-2-8">-</td>
						<td id="size-2-10" class="sub-title">등급</td>
						<td id="size-2-11">-</td>
					</tr>
					
					<!-- Group 3 -->	
					<tr class="group3-location1 strong-row">
						<td id="size-3-1"><strong>공동 위치도</strong></td>
						<td id="size-3-2"><strong>공동 주변사진</strong></td>
					</tr>
					<tr class="group3-location2">
						<td id="size-4-1" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/e1585b17-a5e6-427b-931c-e0232f1ad458" id="img-4-1" alt="location-map"></td>
						<td id="size-4-2-1"><img src="https://github.com/kim-src/js-document/assets/150884526/cc81aefb-b711-4420-bfb9-26807280fd20" id="img-4-2-1" alt="front-image"></td>
						<td id="size-4-2-2"><img src="https://github.com/kim-src/js-document/assets/150884526/98e01842-79c1-4181-832d-7739a60da73b" id="img-4-2-2" alt="back-image"></td>
					</tr>
					<tr class="group3-location2">
						<td id="size-4-2-3"><img src="https://github.com/kim-src/js-document/assets/150884526/559eac82-8921-40d3-8624-986334f805b4" id="img-4-2-3" alt="left-image"></td>
						<td id="size-4-2-4"><img src="https://github.com/kim-src/js-document/assets/150884526/f00c850a-e68d-4e4f-a225-2872f91586e7" id="img-4-2-4" alt="right-image"></td>
					</tr>
		
					<!-- Group 4 -->
					<tr class="group4-source strong-row">
						<td id="size-5-1" rowspan="2"><strong>(상단) 탐사영상 평면 / (하단) 노면영상</strong></td>
						<td id="size-5-2"><strong>탐사영상 수직단면</strong></td>
						<td id="size-5-4" rowspan="2"><strong>공동확인 내시경 영상</strong></td>
					</tr>
					<tr class="group4-source strong-row">
						<td id="size-5-3"><strong>종단면</strong></td>
						<td id="size-5-3"><strong>횡단면</strong></td>
					</tr>
					<tr class="group4-source">
						<td id="size-6-1">평단면</td>
						<td id="size-6-3" rowspan="2">종단면</td>
						<td id="size-6-3" rowspan="2">횡단면</td>
						<td id="size-6-4" rowspan="2">공동 단면</td>
					</tr>
					<tr class="group4-source">
						<td id="size-6-2">노면</td>
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