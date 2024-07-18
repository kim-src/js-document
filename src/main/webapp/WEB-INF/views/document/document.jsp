<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js-document</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tableSet.css">
<style>
	/* 기본 스타일 */
	@font-face {
        font-family: "NanumMyeongjo";
        src: url("resources/fonts/NanumMyeongjo.otf") format("truetype");
    }
    
	body {
		margin: 0;
		padding: 0;
		font-family: "NanumMyeongjo", NanumMyeongjo;
	}
	
	img {
		margin: 0;
		padding: 0;
		display: block;
		width: 100%;
		height: 100%;
	}
	
	.main {
		justify-content: center;
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
	
	
	
	/* 세부 스타일 */
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
	
	
	/* 첨부 이미지 */
	#css-location {
		margin: 0;
		padding: 0;
		cursor: pointer;		
		text-align: center;
		color: black;
		font-weight: normal;
		font-family: Arial, sans-serif;
		position: relative;
	}
	#css-location:hover {
		background: skyblue;
	}
	.button {
	  display: inline-block;
	  margin: 0;
	  padding: 0;
	  background: #ccc;
	  cursor: pointer;
	  border-radius: 5px;
	  border: 1px solid #ccc;
	}
	.button:hover {
	  background: #ddd;
	}
</style>
<script src="resources/lib/jspdf.min.js"></script>
<script src="resources/lib/html2canvas.min.js"></script>
</head>
<body>
	<button onclick="getPDF();">PDF 변환</button>
	<section class="container">
		<div class="main" id="full-document">
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
						<td colspan="5" class="record-4-1" id="css-location" rowspan="2">
							<div>
								<h3>이미지를 가져오세요.</h3>
								<input type="file" id="img-location" multiple accept="image/*" style="display: none">
								<label class="button" for="img-location">이미지 선택</label>
							</div>
						</td>
						<td colspan="3" class="record-4-2"><img src="resources/images/front.jpg" alt="front"></td>
						<td colspan="3" class="record-4-2"><img src="resources/images/back.jpg" alt="back"></td>
					</tr>
					<tr>
						<td colspan="3" class="record-4-2"><img src="resources/images/left.jpg" alt="left"></td>
						<td colspan="3" class="record-4-2"><img src="resources/images/right.jpg" alt="right"></td>
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
						<td colspan="3" class="record-6-1"><img src="resources/images/flat-section.jpg" alt="flat-section"></td>
						<td colspan="2" class="record-6-2" rowspan="2"><img src="resources/images/long-section.jpg" alt="long-section"></td>
						<td colspan="3" class="record-6-2" rowspan="2"><img src="resources/images/cross-section.jpg" alt="cross-section"></td>
						<td colspan="3" class="record-6-3" rowspan="2"><img src="resources/images/cavity.jpg" alt="cavity"></td>
					</tr>
					<tr>
						<td colspan="3" class="record-6-4"><img src="resources/images/surface.jpg" alt="surface"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</body>
<script src="${pageContext.request.contextPath}/resources/js/pdfGenerator.js">/* PDF 변환 기능 */</script>
<script>
	/* 드래그 업로드 기능 */
	
	// dragover 관련 EventListener 추가를 위한 ID 요소 탐색
	document.getElementById('css-location').ondragover = function(e) {
		// 브라우저의 이미지 관련 기능 차단
		e.preventDefault();
	};
	
	// drop 관련 EventListener 추가를 위한 ID 요소 탐색
	document.getElementById('css-location').ondrop = function(e) {
		// 브라우저의 이미지 관련 기능 차단
		e.preventDefault();
		// dataTransfer 객체 = 드래그 된 데이터 포함
		// files 속성 = 드래그 된 파일 리스트에 접근
		var files = e.dataTransfer.files;
		// 파일을 서버로 전송 및 클라이언트 측에서 처리할 수 있도록 설정
		uploadFiles(files);
	};
	
	// change 관련 EventListener 추가를 위한 ID 요소 탐색
	document.getElementById('img-location').addEventListener('change', function(e) {
		// 사용자가 선택한 files 배열 반환
		var files = e.target.files;
		// 파일을 서버로 전송 및 클라이언트 측에서 처리할 수 있도록 설정
		uploadFiles(files);
	});
	
	// uploadFiles 함수 정의
	function uploadFiles(files) {
		// css-location 요소를 dropArea 변수에 할당
		var dropArea = document.getElementById('css-location');
		// record-4-1 요소를 recordCSS 변수에 할당
		var recordCSS = document.querySelector('.record-4-1');
		// recordCSS 변수의 width를 width 변수에 할당
		var width = window.getComputedStyle(recordCSS).width;
		// recordCSS 변수의 height를 height 변수에 할당
		var height = window.getComputedStyle(recordCSS).height;
		// HTML 초기화 = 새로운 파일을 드롭하면 이전 파일이 소멸되도록 설정
		dropArea.innerHTML = '';
	
	// files 배열 순회 설정
	for (var i = 0; i < files.length; i++) {
		// file 변수에 files 배열의 i번째 파일 할당
	    var file = files[i];
		// 파일 내용을 해독하기 위한 FileReader 객체 생성
	    var reader = new FileReader();
		// FileReader 객체의 onload 이벤트 핸들러 설정
	    reader.onload = function(e) {
			// 새로운 Image 객체 생성
			var img = new Image();
			// Image 객체의 id 속성 설정
			img.id = 'uploaded-img';
			// Image 객체의 소스를 FileReader가 읽은 데이터로 설정
			img.src = e.target.result;
			// 이미지 클릭 시 호출되는 removeImage 함수 설정
			img.onclick = removeImage;
			// 아래의 위치 정보를 절대 위치로 설정
			img.style.position = 'absolute';
			// 이미지 상단 정렬
			img.style.top = '0';
			// 이미지 좌측 정렬
			img.style.left = '0';
			// dropArea 변수의 너비 설정
			dropArea.style.width = width;
			// dropArea 변수의 높이 설정
			dropArea.style.height = height;
			// 설정을 마친 Image 객체를 dropArea 변수의 자식 요소에 추가
			dropArea.appendChild(img);
	    };
	    // file 변수의 내용을 URL 형태의 문자열로 반환
	    reader.readAsDataURL(file);
		}
	}
	
	
	/* 이미지 삭제 기능 */
	// 이미지 클릭 시 실행될 removeImage 함수 정의
	function removeImage(e) {
		// 이미지 삭제 여부 대화상자 표시
		if(confirm('이미지를 삭제하시겠습니까?')) {
			// 클릭된 이미지를 img 변수에 할당
			var img = e.target;
			// remove 메서드를 호출하여 DOM에서 
			img.remove();
			alert('이미지가 삭제되었습니다.');
			resetDropArea();
		} else {
			alert('이미지 삭제가 취소되었습니다.');
		}
	}
	
	
	/* 드래그 영역 리셋 */
	function resetDropArea() {
		var dropArea = document.getElementById('css-location');
		dropArea.innerHTML = '<h3>이미지를 가져오세요.</h3>';
		
		// input 요소 재생성
		var input = document.createElement('input');
		input.type = 'file';
		input.id = 'img-location';
		input.multiple = true;
		input.accept = 'image/*';
		input.style.display = 'none';
		dropArea.appendChild(input);
		
		// label 요소 재생성
		var label = document.createElement('label');
		label.className = 'button';
		label.setAttribute('for', 'img-location');
		label.textContent = '이미지 선택';
		dropArea.appendChild(label);
		
		// 이벤트 리스너를 input 요소에 재연결
		document.getElementById('img-location').addEventListener('change', function(e) {
			var files = e.target.files;
			uploadFiles(files);
		});
	}	
</script>
</html>