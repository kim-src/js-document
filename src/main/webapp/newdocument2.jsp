<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.flex-container {
		display: flex;
		width: 266.06mm;
		border: 1px solid black;
	    border-collapse: collapse;
	}
	.flex-item {
	    flex: 0 0 auto;  /* 각 아이템이 유연하게 공간을 차지하도록 설정 */
	    border: 1px solid black;
	    border-collapse: collapse;
	    text-align: center;
  }

	/* .flex-item:last-child {
		border-right: none;} 마지막 아이템의 오른쪽 테두리 제거 */
</style>
</head>
<body>
	<section class="document">
		<div class="flex-container">
			<div class="flex-item" style="width: 22.86mm; height: 6.95mm;" class="sub-title">탐사 / 천공</div>
			<div class="flex-item" style="width: 82.88mm; height: 6.95mm;">탐사일  2022.02.15 / 천공일 -</div>
			<div class="flex-item" style="width: 8.32mm; height: 27.8mm;">위<br><br><br>치</div>
			<div class="flex-item" style="width: 8.32mm; height: 6.95mm;" class="sub-title">위도</div>
			<div class="flex-item" style="width: 46.97mm; height: 6.95mm;">37.816955</div>
			<div class="flex-item" style="width: 8.56mm; height: 27.8mm;">공동규모</div>
			<div class="flex-item" style="width: 30.46mm; height: 6.95mm;" class="sub-title">토피(㎝)</div>
			<div class="flex-item" style="width: 12.35mm; height: 6.95mm;">53</div>
			<div class="flex-item" style="width: 8.86mm; height: 13.9mm;">공동<span id="gap-2-9"></span>관리</div>
			<div class="flex-item" style="width: 8.86mm; height: 6.95mm;" class="sub-title">번호</div>
			<div class="flex-item" style="width: 27.62mm; height: 6.95mm;">-</div>
		</div>
		<div class="flex-container">
			<div class="flex-item" style="width: 22.86mm; height: 6.95mm;" class="sub-title">관  할  구</div>
			<div class="flex-item" style="width: 82.88mm; height: 6.95mm;">백석읍</div>
			<div class="flex-item" style="width: 8.32mm; height: 6.95mm;" class="sub-title">경도</div>
			<div class="flex-item" style="width: 46.97mm; height: 6.95mm;">126.947396</div>
			<div class="flex-item" style="width: 30.46mm; height: 6.95mm;" class="sub-title">도로종단 길이(㎝)</div>
			<div class="flex-item" style="width: 12.35mm; height: 6.95mm;">95</div>
			<div class="flex-item" style="width: 8.86mm; height: 6.95mm;" class="sub-title">등급</div>
			<div class="flex-item" style="width: 27.62mm; height: 6.95mm;">-</div>
		</div>
		<div class="flex-container">
			<div class="flex-item" style="width: 169.34mm; height: 7.34mm;">row2, column 1</div>
			<div class="flex-item">row2, column 2</div>
			<div class="flex-item">row2, column 3</div>
		</div>
		<div class="flex-container">
			<div class="flex-item">row3, column 1</div>
			<div class="flex-item">row3, column 2</div>
			<div class="flex-item">row3, column 3</div>
		</div>
	</section>
</body>
</html>