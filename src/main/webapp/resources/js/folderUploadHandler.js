/* 폴더 업로드 기능 */
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('folder-input').addEventListener('change', function(event) {
        const files = event.target.files;

        // 파일이 업로드될 위치의 ID를 파일 이름과 매핑
		// 자동 저장되는 파일 이름을 기반으로 img 태그의 ID를 매핑
        const fileToImgKeyMap = {
            'front': 'front',
            'left': 'left',
            'map': 'location',
            'rear': 'back',
            'right': 'right',
            'road': 'surface',
            'xy': 'flat-section',
            'xz': 'cross-section',
            'yz': 'long-section',
			'cavity' : 'cavity'
        };
		
		/* 폴더 내부 이미지 파일 설정 */
		Array.from(files).forEach(file => {
			// toLowerCase() = 파일 이름을 소문자로 변환
			// split('.') = 문자열의 이미지 파일 이름을 점을 기준으로 분할
			// [0] = 분할된 문자열의 첫 번째 요소 참조
            let fileKey = file.name.toLowerCase().split('.')[0];
			
			// data-img-key 속성에 해당되는 이미지 영역 탐색
			let imgKey = fileToImgKeyMap[fileKey];
			if (imgKey) {
				// imgKey = 매핑된 HTML 데이터에 기반
				// fileKey = 파일 이름에 기반
				document.querySelectorAll(`.img-area[data-img-key="${imgKey}"]`).forEach(area => {
					const placeholderString = area.querySelector('h4');
					const placeholderLabel = area.querySelector('label');
					const img = area.querySelector('img');
					
					if (img) {
						img.style.display = 'block';
						img.src = URL.createObjectURL(file);
						img.onload = () => URL.revokeObjectURL(img.src);
						// 이미지 클릭 시 removeImage 함수 호출
						img.onclick = removeImage;
						// img 요소의 배치 설정
		                img.style.position = 'absolute';
						// img 요소의 상부 위치 설정
		                img.style.top = '0';
						// img 요소의 좌측 위치 설정
		                img.style.left = '0';
						// img 요소의 전체 너비 사용
		                img.style.width = '100%';
						// img 요소의 전체 높이 사용
		                img.style.height = '100%';
					}
					
					// h4 태그에 포함되는 텍스트 숨기기
					if (placeholderString) {
						placeholderString.style.display = 'none';
					}
					
					// label 태그에 포함되는 텍스트 숨기기
					if (placeholderLabel) {
						placeholderLabel.style.display = 'none';
					}
				});
			}
		});
		
		/* 이미지 삭제 기능 */
		// 이미지 클릭 시 실행될 removeImage 함수 정의
		function removeImage(e) {
			// 이미지 삭제 여부 대화 상자 표시
			if (confirm('이미지를 삭제하시겠습니까?')) {
				// 선택된 이미지를 img 변수에 할당
				var img = e.target;
				// 이미지 삭제 전 이미지 영역의 ID 추출
				var areaId = img.closest('.img-area').id;
				// remove 메서드를 호출하여 DOM에서 이미지 요소 삭제
				img.remove();
				// 이미지 삭제 알림창 표시
				alert('이미지가 삭제되었습니다.');
				// 이미지 삭제 후 resetDropArea 함수 호출
				resetDropArea(areaId);
			} else {
				// 이미지 삭제 취소 알림창 표시
				alert('이미지 삭제가 취소되었습니다.');
			}
		}
		
		/* 이미지 영역 리셋 기능 */
		// resetDropArea 함수 정의
		function resetDropArea(areaId) {
			// ID 요소를 dropArea 변수에 재할당
			var dropArea = document.getElementById(areaId);
			// 이미지 영역의 내부 HTML 설정
			dropArea.innerHTML = '<h4>개별 이미지를 가져오세요.</h4>';
			
			/* file 타입의 input 요소 재생성 */
			var input = document.createElement('input');
			// input 요소의 타입 지정
			input.type = 'file';
			// input 요소의 id 지정
			input.id = areaId + '-file';
			// 여러 파일 선택이 가능하도록 설정
			input.multiple = true;
			// 모든 이미지 확장자에 대한 선택이 가능하도록 설정
			input.accept = 'image/*';
			// 이미지 업로드 되기 전까지 요소가 표시되지 않도록 설정
			input.style.display = 'none';
			// 설정을 마친 input 요소를 dropArea 변수에 추가
			dropArea.appendChild(input);
		}
    });
});
