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
		height: auto;
		justify-content: center;
		align-items: center;
		text-align: center;
		display: flex;
	}
		
	.table {
		table-layout: auto;
		border-bottom: 1px solid black;
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	.inner-table {
		font-size: 10pt;
		position: absolute;
		background-color: white;
		border-collapse: collapse;
		margin-top: -8mm;
		margin-left: 214.85mm;
		z-index: 1;
	}
	
	.table td {
		border: 1px solid black;
		padding: 0;
	}
	
	.title {
		position: relative;
		width: 266.06mm;
		height: 11.4mm;
		font-size: 17pt;
		text-align: center;
		border: none;
	}
	
	.title::after {
		content: "";
		position: absolute;
		left: 0;
		right: 0;
		bottom: 1.5mm;
		border-bottom: 1.2px solid black;
		width: 17%;
		margin: 0 auto;
	}

	.title::before {
		content: "";
		position: absolute;
		left: 0;
		right: 0;
		bottom: 1.2mm;
		border-bottom: 1.2px solid black;
		width: 17%;
		margin: 0 auto;
	}
	
	.sub-title {
		background-color: #f2f2f2;
	}
	
	.document-text td {
		text-align: center;
		white-space: nowrap;
	}
	
	.strong-row td {
		background-color: #f2f2f2;
	}
	
	.total-size {
		width: 266.05mm;
		height: 163.00mm;
	}
	
	.record-1 {
		width: 25mm;
		height: 8mm;
	}
	
	.record-2-1 {
		width: 22.86mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-2 {
		width: 82.88mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-3 {
		width: 8.32mm;
		height: 27.81mm;
		font-size: 10.5pt;
		background-color: #f2f2f2;
		letter-spacing: -0.03em;
	}
	
	.record-2-4 {
		width: 8.32mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-5 {
		width: 46.97mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-6 {
		width: 8.56mm;
		height: 27.81mm;
		font-size: 10.5pt;
		writing-mode: vertical-lr;
		background-color: #f2f2f2;
	}
	
	.gap-2-6 {
		margin: 4px 0;
	}
	
	.record-2-7 {
		width: 30.46mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-8 {
		width: 12.35mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-9 {
		width: 8.86mm;
		height: 13.91mm;
		font-size: 10.5pt;
		background-color: #f2f2f2;
		letter-spacing: -0.03em;
	}
	
	.gap-2-9 {
		display: block;
		margin: 5px 0;
	}
	
	.record-2-10 {
		width: 8.86mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-2-11 {
		width: 27.62mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	
	.record-3-1 {
		width: 169.34mm;
		height: 7.34mm;
	}
	
	.record-3-2 {
		 width: 96.72mm;
		 height: 7.34mm;
	}
	
	.record-4-1 {
		width: 169.34mm;
		height: 57.08mm;
	}
	
	.record-4-2 {
		width: 48.36mm;
		height: 28.54mm;
	}
	
	.record-5-1 {
		width: 131.28mm;
		height: 10.46mm;
	}
	
	.record-5-2 {
		width: 85.12mm;
		height: 5.23mm;
	}
	
	.record-5-3 {
		width: 49.66mm;
		height: 10.46mm;
	}
	
	.record-5-4 {
		width: 42.56mm;
		height: 5.23mm;
	}
	
	.record-6-1 {
		width: 131.28mm;
		height: 15mm;
	}
	
	.record-6-2 {
		width: 42.56mm;
		height: 48mm;
	}
	
	.record-6-3 {
		width: 49.66mm;
		height: 48mm;
	}
	
	.record-6-4 {
		width: 131.28mm;
		height: 33mm;
	}
</style>
</head>
<body>
	<section class="container">
		<div class="main">
			<table class="table total-size">
				<tbody class="document-text">
					<tr>
						<th colspan="11" class="title"><strong>분석 공동조사서</strong>
							<table class="inner-table">
								<tr>
									<td class="record-1"><strong>공동관리번호</strong></td>
									<td class="record-1"></td>
								</tr>
							</table>
						</th>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1" class="sub-title">탐사 / 천공</td>
						<td colspan="1" class="record-2-2">탐사일  2022.02.15 / 천공일 -</td>
						<td colspan="1" class="record-2-3" rowspan="4">위<br><br><br>치</td>
						<td colspan="1" class="record-2-4"class="sub-title">위도</td>
						<td colspan="1" class="record-2-5">37.816955</td>
						<td colspan="1" class="record-2-6" rowspan="4">공<span class="gap-2-6"></span>동<span class="gap-2-6"></span>규<span class="gap-2-6"></span>모</td>
						<td colspan="1" class="record-2-7" class="sub-title">토피(㎝)</td>
						<td colspan="1" class="record-2-8">53</td>
						<td colspan="1" class="record-2-9" rowspan="2">공동<span class="gap-2-9"></span>관리</td>
						<td colspan="1" class="record-2-10 sub-title">번호</td>
						<td colspan="1" class="record-2-11">-</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1" class="sub-title">관  할  구</td>
						<td colspan="1" class="record-2-2">백석읍</td>
						<td colspan="1" class="record-2-4" class="sub-title">경도</td>
						<td colspan="1" class="record-2-5">126.947396</td>
						<td colspan="1" class="record-2-7" class="sub-title">도로종단 길이(㎝)</td>
						<td colspan="1" class="record-2-8">95</td>
						<td colspan="1" class="record-2-10 sub-title">등급</td>
						<td colspan="1" class="record-2-11">-</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1" class="sub-title">도로명 주소</td>
						<td colspan="1" class="record-2-2">연곡리 327</td>
						<td colspan="1" class="record-2-4" class="sub-title">차선</td>
						<td colspan="1" class="record-2-5">중앙선 기준 1차로</td>
						<td colspan="1" class="record-2-7" class="sub-title">도로횡단 폭(㎝)</td>
						<td colspan="1" class="record-2-8">69</td>
						<td colspan="1" class="record-2-9" rowspan="2">분석<span class="gap-2-9"></span>공동</td>
						<td colspan="1" class="record-2-10 sub-title">번호</td>
						<td colspan="1" class="record-2-11">038-1</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1" class="sub-title">탐 사 방 향</td>
						<td colspan="1" class="record-2-2">비암리 29-1→연곡리 327-2</td>
						<td colspan="1" class="record-2-4" class="sub-title">지점</td>
						<td colspan="1" class="record-2-5">정지선 후방 8.91m</td>
						<td colspan="1" class="record-2-7" class="sub-title">바닥 깊이(㎝)</td>
						<td colspan="1" class="record-2-8">-</td>
						<td colspan="1" class="record-2-10 sub-title">등급</td>
						<td colspan="1" class="record-2-11">-</td>
					</tr>

					<!-- location data -->
					<tr class="strong-row">
						<td colspan="5" class="record-3-1"><strong>공동 위치도</strong></td>
						<td colspan="6" class="record-3-2" colspan="2"><strong>공동 주변사진</strong></td>
					</tr>
					<tr>
						<td colspan="5" class="record-4-1" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/e1585b17-a5e6-427b-931c-e0232f1ad458" alt="location"></td>
						<td colspan="3" class="record-4-2"><img src="https://github.com/kim-src/js-document/assets/150884526/cc81aefb-b711-4420-bfb9-26807280fd20" alt="front"></td>
						<td colspan="3" class="record-4-2"><img src="https://github.com/kim-src/js-document/assets/150884526/98e01842-79c1-4181-832d-7739a60da73b" alt="back"></td>
					</tr>
					<tr>
						<td colspan="3" class="record-4-2"><img src="https://github.com/kim-src/js-document/assets/150884526/559eac82-8921-40d3-8624-986334f805b4" alt="left"></td>
						<td colspan="3" class="record-4-2"><img src="https://github.com/kim-src/js-document/assets/150884526/f00c850a-e68d-4e4f-a225-2872f91586e7" alt="right"></td>
					</tr>

					<!-- cavity data -->
					<tr class="strong-row">
						<td colspan="3" class="record-5-1" rowspan="2"><strong>(상단) 탐사영상 평면 / (하단) 노면영상</strong></td>
						<td colspan="5" class="record-5-2"><strong>탐사영상 수직단면</strong></td>
						<td colspan="3" class="record-5-3" rowspan="2"><strong>공동확인 내시경 영상</strong></td>
					</tr>
					<tr class="strong-row">
						<td colspan="2" class="record-5-4"><strong>종단면</strong></td>
						<td colspan="3" class="record-5-4"><strong>횡단면</strong></td>
					</tr>
					<tr>
						<td colspan="3" class="record-6-1"><img src="https://github.com/kim-src/js-document/assets/150884526/4ea956b1-75aa-45db-8eef-9d8079943a6e" alt="flat-section"></td>
						<td colspan="2" class="record-6-2" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/ba1df91c-ac29-4034-90c3-2ce8880c4d9b" alt="long-section"></td>
						<td colspan="3" class="record-6-2" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/d0894272-7ff5-40df-bc1e-ec97c901dee2" alt="cross-section"></td>
						<td colspan="3" class="record-6-3" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/4d0be670-1d2b-4ed7-9c8e-a0b7c965506d" alt="cavity"></td>
					</tr>
					<tr>
						<td colspan="3" class="record-6-4"><img src="https://github.com/kim-src/js-document/assets/150884526/e88d4d5a-fc6c-4c9d-acb8-1d7fae61f0bc" alt="surface"></td>
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