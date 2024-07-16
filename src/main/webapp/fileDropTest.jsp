<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	#drop-area {
		margin: 0;
		padding: 0;
		width: 100%;
		cursor: pointer;		
		border: 2px dashed black;
		text-align: center;
		color: black;
		font-weight: normal;
		font-family: Arial, sans-serif;
	}
	#drop-area:hover {
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
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="drop-area">
	  <h3>이미지를 여기에 드래그 앤 드롭 하세요</h3>
	  <input type="file" id="fileElem" multiple accept="image/*" style="display:none">
	  <label class="button" for="fileElem">파일 선택하기</label>
	</div>
</body>
<script>
	document.getElementById('drop-area').ondragover = function(e) {
	  e.preventDefault();
	};
	
	document.getElementById('drop-area').ondrop = function(e) {
	  e.preventDefault();
	  var files = e.dataTransfer.files;
	  uploadFiles(files);
	};
	
	function uploadFiles(files) {
		var existingImg = document.getElementById('uploaded-img');
		if(existingImg) {
			existingImg.remove();
		}
		
		
	  for (var i = 0; i < files.length; i++) {
	    var file = files[i];
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      var img = new Image();
	      img.id = 'uploaded-img';
	      img.src = e.target.result;
	      img.onclick = removeImage;
	      document.getElementById('drop-area').appendChild(img);
	    };
	    reader.readAsDataURL(file);
	  }
	}
	
	
	
	/* 이미지 삭제 */
	function removeImage(e) {
		if(confirm('이미지를 삭제하시겠습니까?')) {
			var img = e.target;
			img.remove();
			alert('이미지가 삭제되었습니다.');
		} else {
			alert('이미지 삭제가 취소되었습니다.');
		}
	}
</script>

</html>