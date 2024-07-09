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
		height: auto;
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
		border-top: 1px solid black;
		border-bottom: 1px solid black;
		border-collapse: collapse;
		border-spacing: 0;
	}
	
	.table th, td {
		border: 1px solid black;
		padding: 0;
	}
	
	.table th {
		background-color: #f2f2f2;
		font-size: 17pt;
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
	
	#total-size {
		width: 266.05mm;
		height: 163.00mm;
	}
	#size-2-1 {
		width: 22.86mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-2 {
		width: 82.88mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-3 {
		width: 8.32mm;
		height: 27.81mm;
		font-size: 10.5pt;
		background-color: #f2f2f2;
		letter-spacing: -0.03em;
	}
	#size-2-4 {
		width: 8.32mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-5 {
		width: 46.97mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-6 {
		width: 8.56mm;
		height: 27.81mm;
		padding-top: 1%;
		font-size: 10.5pt;
		writing-mode: vertical-lr;
		background-color: #f2f2f2;
		letter-spacing: 0.8em;
	}
	#size-2-7 {
		width: 30.46mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-8 {
		width: 12.35mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-9 {
		width: 8.86mm;
		height: 13.91mm;
		font-size: 10.5pt;
		background-color: #f2f2f2;
		letter-spacing: -0.03em;
	}
	#gap-2-9 {
		display: block;
		margin: 3px 0;
	}
	#size-2-10 {
		width: 8.86mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-2-11 {
		width: 27.62mm;
		height: 6.95mm;
		font-size: 10.5pt;
		letter-spacing: -0.03em;
	}
	#size-3-1 {
		width: 169.34mm;
		height: 7.33mm;
		font-size: 12pt;
	}
	#size-3-2 {
		width: 96.71mm;
		height: 7.33mm;
		font-size: 12pt;
	}
	#size-4-1 {
		width: 169.34mm;
		height: 57.07mm;
	}
	#img-4-1 {
		width: 169.34mm;
		height: 58mm;
	}
	#size-4-2-1 {
		width: 48.36mm;
		height: 28.54mm;
		border: none;
	}
	#size-4-2-2 {
		width: 48.36mm;
		height: 28.54mm;
		border: none;
		border-right: 1px solid black;
	}
	#size-4-2-3 {
		width: 48.36mm;
		height: 28.54mm;
		border: none;
	}
	#size-4-2-4 {
		width: 48.36mm;
		height: 28.54mm;
		border: none;
		border-right: 1px solid black;
	}
	#size-5-1 {
		width: mm;
		height: mm;
	}
	#size-5-2 {
		width: mm;
		height: mm;
	}
	#size-5-3 {
		width: mm;
		height: mm;
	}
	#size-5-4 {
		width: mm;
		height: mm;
	}
	#size-6-1 {
		width: mm;
		height: mm;
	}
	#size-6-2 {
		width: mm;
		height: mm;
	}
	#size-6-3 {
		width: mm;
		height: mm;
	}
	#size-6-4 {
		width: mm;
		height: mm;
	}
</style>
</head>
<body>
	<section class="container">
		<div class="main">
			<table class="table" id="total-size">
				<thead>
					<tr>
						<th colspan="11">분석 공동조사서</th>
					</tr>
				</thead>
				<tbody class="document-text">
					<tr>
						<td colspan="1" id="size-2-1" class="sub-title">탐사 / 천공</td>
						<td colspan="1" id="size-2-2">탐사일  2022.02.15 / 천공일 -</td>
						<td colspan="1" id="size-2-3" rowspan="4">위<br><br><br>치</td>
						<td colspan="1" id="size-2-4"class="sub-title">위도</td>
						<td colspan="1" id="size-2-5">37.816955</td>
						<td colspan="1" id="size-2-6" rowspan="4">공동규모</td>
						<td colspan="1" id="size-2-7" class="sub-title">토피(㎝)</td>
						<td colspan="1" id="size-2-8">53</td>
						<td colspan="1" id="size-2-9" rowspan="2">공동<span id="gap-2-9"></span>관리</td>
						<td colspan="1" id="size-2-10" class="sub-title">번호</td>
						<td colspan="1" id="size-2-11">-</td>
					</tr>
					<tr>
						<td colspan="1" id="size-2-1" class="sub-title">관  할  구</td>
						<td colspan="1" id="size-2-2">백석읍</td>
						<td colspan="1" id="size-2-4" class="sub-title">경도</td>
						<td colspan="1" id="size-2-5">126.947396</td>
						<td colspan="1" id="size-2-7" class="sub-title">도로종단 길이(㎝)</td>
						<td colspan="1" id="size-2-8">95</td>
						<td colspan="1" id="size-2-10" class="sub-title">등급</td>
						<td colspan="1" id="size-2-11">-</td>
					</tr>
					<tr>
						<td colspan="1" id="size-2-1" class="sub-title">도로명 주소</td>
						<td colspan="1" id="size-2-2">탐사일  2022.02.15 / 천공일 -</td>
						<td colspan="1" id="size-2-4" class="sub-title">차선</td>
						<td colspan="1" id="size-2-5">중앙선 기준 1차로</td>
						<td colspan="1" id="size-2-7" class="sub-title">도로횡단 폭(㎝)</td>
						<td colspan="1" id="size-2-8">69</td>
						<td colspan="1" id="size-2-9" rowspan="2">분석<span id="gap-2-9"></span>공동</td>
						<td colspan="1" id="size-2-10" class="sub-title">번호</td>
						<td colspan="1" id="size-2-11">038-1</td>
					</tr>
					<tr>
						<td colspan="1" id="size-2-1" class="sub-title">탐 사 방 향</td>
						<td colspan="1" id="size-2-2">비암리 29-1→연곡리 327-2</td>
						<td colspan="1" id="size-2-4" class="sub-title">지점</td>
						<td colspan="1" id="size-2-5">정지선 후방 8.91m</td>
						<td colspan="1" id="size-2-7" class="sub-title">바닥 깊이(㎝)</td>
						<td colspan="1" id="size-2-8">-</td>
						<td colspan="1" id="size-2-10" class="sub-title">등급</td>
						<td colspan="1" id="size-2-11">-</td>
					</tr>
					<tr class="strong-row">
						<td colspan="5" id="size-3-1"><strong>공동 위치도</strong></td>
						<td colspan="6" id="size-3-2"><strong>공동 주변사진</strong></td>
					</tr>
					<tr>
						<td colspan="5" id="size-4-1" rowspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/cce36602-a6c2-4989-85c0-521c4e0366de" alt="공동위치도" id="img-4-1"></td>
						<td colspan="3" id="size-4-2-1">공동 주변사진</td>
						<td colspan="3" id="size-4-2-2">공동 주변사진</td>
					</tr>
					<tr>
						<td colspan="3" id="size-4-2-3">공동 주변사진</td>
						<td colspan="3" id="size-4-2-4">공동 주변사진</td>
					</tr>
					<tr>
						<td colspan="5"><img src="https://github.com/kim-src/js-document/assets/150884526/cce36602-a6c2-4989-85c0-521c4e0366de" alt="공동위치도" style="width:100%;height:auto;"></td>
						<td colspan="6"><strong>공동 주변사진</strong></td>
					</tr>
					<tr class="strong-row">
						<td colspan="4"><strong>(상단) 탐사영상 평면 / (하단) 노면영상</strong></td>
						<td colspan="4"><strong>탐사영상 수직단면</strong></td>
						<td colspan="3"><strong>공동확인 내시경 영상</strong></td>
					</tr>
					<tr>
						<td colspan="4"><img src="https://github.com/kim-src/js-document/assets/150884526/09224907-81d2-4d9d-8777-63a7078e3344" alt="평단면" style="width:100%;height:auto;"></td>
						<td colspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/dd7bb547-f67c-488b-87df-774755345189" alt="종단면" style="width:100%;height:auto;"></td>
						<td colspan="2"><img src="https://github.com/kim-src/js-document/assets/150884526/d7c5e9da-4539-4301-9981-f830998927d6" alt="종단면" style="width:100%;height:auto;"></td>
						<td colspan="3"><img src="" alt="" style="width:100%;height:auto;"></td>
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