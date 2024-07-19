/* 드래그 업로드 기능 */

// dragover 관련 EventListener 추가를 위한 ID 요소 탐색
document.getElementById('css-front').ondragover = function(e) {
	// 브라우저의 이미지 관련 기능 차단
	e.preventDefault();
};

// drop 관련 EventListener 추가를 위한 ID 요소 탐색
document.getElementById('css-front').ondrop = function(e) {
	// 브라우저의 이미지 관련 기능 차단
	e.preventDefault();
	// dataTransfer 객체 = 드래그 된 데이터 포함
	// files 속성 = 드래그 된 파일 리스트에 접근
	var files = e.dataTransfer.files;
	// 파일을 서버로 전송 및 클라이언트 측에서 처리할 수 있도록 설정
	uploadFiles(files);
};

// change 관련 EventListener 추가를 위한 ID 요소 탐색
document.getElementById('img-front').addEventListener('change', function(e) {
	// 사용자가 선택한 files 배열 반환
	var files = e.target.files;
	// 파일을 서버로 전송 및 클라이언트 측에서 처리할 수 있도록 설정
	uploadFiles(files);
});

// uploadFiles 함수 정의
function uploadFiles(files) {
	// ID 요소를 dropArea 변수에 할당
	var dropArea = document.getElementById('css-front');
	// 요소를 recordCSS 변수에 할당
	var recordCSS = document.querySelector('.record-4-2');
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
		// remove 메서드를 호출하여 DOM에서 이미지 요소 삭제
		img.remove();
		// 이미지 삭제 알림창 표시
		alert('이미지가 삭제되었습니다.');
		// resetDropArea 함수 호출
		resetDropArea();
	} else {
		// 이미지 삭제 취소 알림창 표시
		alert('이미지 삭제가 취소되었습니다.');
	}
}


/* 드래그 영역 리셋 기능 */
// resetDropArea 함수 정의
function resetDropArea() {
	// ID 요소를 dropArea 변수에 재할당
	var dropArea = document.getElementById('css-front');
	// 내부 HTML 설정
	dropArea.innerHTML = '<h3>이미지를 가져오세요.</h3>';
	
	// file 타입의 input 변수 생성
	var input = document.createElement('input');
	// input 변수 type 할당
	input.type = 'file';
	// input 변수 id 할당
	input.id = 'img-front';
	// 여러 파일을 선택 가능하도록 설정
	input.multiple = true;
	// 이미지 파일만 선택 가능하도록 설정(모든 이미지 확장자 포함)
	input.accept = 'image/*';
	// 이미지 요소가 표시되지 않도록 설정
	input.style.display = 'none';
	// 설정을 마친 input 요소를 dropArea 변수의 자식 요소에 추가
	dropArea.appendChild(input);
	
	// label 요소 생성
	var label = document.createElement('label');
	// label 요소의 class 속성 설정
	label.className = 'button';
	// label 요소의 for 속성에 값 할당
	label.setAttribute('for', 'img-front');
	// label 요소의 텍스트 내용 설정
	label.textContent = '이미지 선택';
	// 설정을 마친 label 요소를 dropArea 변수의 자식 요소에 추가
	dropArea.appendChild(label);
	
	// 입력한 ID와 일치하는 HTML 요소 반환
	// 요소의 값이 변경될 때 발생되는 change 이벤트 설정
	document.getElementById('img-front').addEventListener('change', function(e) {
		// 이벤트 객체의 target 속성에서 files 속성 추출
		// files 속성 = 사용자가 선택한 파일 목록 포함
		var files = e.target.files;
		// 파일 업로드를 위한 uploadFiles 함수 호출
		uploadFiles(files);
	});
}