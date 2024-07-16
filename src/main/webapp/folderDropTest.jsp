<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
    #drop-zone {
        width: 300px;
        height: 200px;
        border: 2px dashed #ccc;
        text-align: center;
        line-height: 200px;
        color: #ccc;
        margin: 20px;
    }
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="drop-zone">여기에 폴더를 드래그하세요.</div>
    <div id="image-container"></div>
</body>
<script>
    document.getElementById('folder-input').addEventListener('change', function(event) {
        const files = event.target.files;
        const imageContainer = document.getElementById('image-container');
        imageContainer.innerHTML = ''; // Clear existing images

        for (let i = 0; i < files.length; i++) {
            if (files[i].type.startsWith('image/')) { // Check if the file is an image
                const img = document.createElement('img');
                img.src = URL.createObjectURL(files[i]);
                img.style.width = '100px'; // Set image size
                img.style.height = '100px';
                img.style.margin = '5px';
                img.onload = function() {
                    URL.revokeObjectURL(img.src); // Free up memory
                };
                imageContainer.appendChild(img);
            }
        }
    });
</script>
</html>