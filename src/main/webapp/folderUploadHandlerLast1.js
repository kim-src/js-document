document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('folder-input').addEventListener('change', function(event) {
        const files = event.target.files;

        // 파일이 업로드될 위치의 ID를 파일 이름과 매핑
		// 자동 저장되는 파일 이름을 기반으로 img 태그의 ID를 매핑
        const fileToImgKeyMap = {
            'front': 'front',
            'left': 'folder-img-left',
            'map': 'location',
            'rear': 'folder-img-back',
            'right': 'folder-img-right',
            'road': 'folder-img-surface',
            'xy': 'folder-img-flat-section',
            'xz': 'folder-img-cross-section',
            'yz': 'folder-img-long-section'
        };
		
		/*const fileToImgKeyMap = {
		            'front': 'folder-img-front',
		            'left': 'folder-img-left',
		            'map': 'folder-img-location',
		            'rear': 'folder-img-back',
		            'right': 'folder-img-right',
		            'road': 'folder-img-surface',
		            'xy': 'folder-img-flat-section',
		            'xz': 'folder-img-cross-section',
		            'yz': 'folder-img-long-section'
        };*/
		
		// 업로드 된 각 파일에 대한 처리
        /*for(let i = 0; i < files.length; i++) {
            let file = files[i];*/
			
		Array.from(files).forEach(file => {
			// toLowerCase() = 파일 이름을 소문자로 변환
			// split('.') = 문자열의 이미지 파일 이름을 점을 기준으로 분할
			// [0] = 분할된 문자열의 첫 번째 요소 참조
            let fileKey = file.name.toLowerCase().split('.')[0];
			
			
			// data-img-key 속성에 해당되는 이미지 영역 탐색
			document.querySelectorAll(`.img-area[data-img-key="${fileKey}"]`).forEach(area => {
				const img = area.querySelector('img');
				if (img) {
					img.style.display = 'block';
					img.src = URL.createObjectURL(file);
					img.onload = () => URL.revokeObjectURL(img.src);
				}
			});
			
			// h4 태그에 포함되는 텍스트 숨기기
			const placeholder = area.querySelector('h4');
			if (placeholder) placeholder.style.display = 'none';

            // 파일 이름에 해당하는 업로드 위치 ID가 있는지 확인
            /*if (fileToImgIdMap.hasOwnProperty(fileName)) {
				let imgId = fileToImgIdMap[fileName];
                let imgElement = document.getElementById(imgId);

                // 해당하는 img 요소에 이미지 URL 설정
                if (imgElement) {
					// 이미지 태그를 보이도록 설정
					imgElement.style.display = 'block';
                    imgElement.src = URL.createObjectURL(file);
                    imgElement.onload = function() {
						// 메모리 해제
                        URL.revokeObjectURL(this.src);
                    };
                }
            }*/
		});
    });
});
