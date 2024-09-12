<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>js-document</title>
<!-- ���̺� �԰� -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tableSet.css">
<!-- ��� ���̵� �̹��� ��Ÿ�� -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssLocation.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssFront.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssBack.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssLeft.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssRight.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssFlatSection.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssLongSection.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssCrossSection.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssCavity.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/cssSurface.css">
<style>
	/* �⺻ ��Ÿ�� */
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
	
	.img-container {
		margin: 10% 0;
	}
	
	.header {
		margin-top: 1%;
		display: flex;
	    justify-content: center;
	    width: 100%;
	}
	
	.main {
		display: flex;
		justify-content: center;
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
	
	
	
	/* ���� ��Ÿ�� */
	.container {
		margin-bottom: 3%;
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
	
	.button {
		 display: flex;
		 justify-content: center;
		 align-items: center;
		 
		 margin: auto;
		 padding: 0;
		 width: 100px;
		 height: 30px;
		 color: black;
		 background-color: #f2f2f2;
		 cursor: pointer;
		 border-radius: 5px;
		 border: 1px solid black;
	}
	
	.button:hover {
		background: #ddd;
	}
	
	.folder-container {
		width: 985px;
		height: 50px;
		display: flex;
		text-align: center;
		justify-content: flex-end;
		align-items: center;
	}
	
	.folder-upload-button {
		display: flex;
		justify-content: center;
		align-items: center;
		width: 100px;
		height: 30px;
		color: black;
		background-color: #f2f2f2;
		cursor: pointer;
		border-radius: 5px;
		border: 1px solid black;
	}
	
	.folder-upload-button:hover {
		background: #ddd;
	}
	
	.none {
		display: none;
	}
</style>
</head>
<body>
	<section class="header">
		<!-- ���� ���ε� ��ư -->
		<div class="folder-container">
			<input type="file" id="folder-input" class="none" webkitdirectory directory multiple>
			<label for="folder-input" class="folder-upload-button"><strong>���� ����</strong></label>
		</div>
	</section>
	<section class="container">
		<div class="main" id="full-document">
			<table class="table total-size">
				<tbody class="document-text">
					<tr>
						<th colspan="11" class="title"><strong>�м� �������缭</strong>
							<table class="inner-table">
								<tr>
									<td class="record-1"><strong>����������ȣ</strong></td>
									<td class="record-1">A010</td>
								</tr>
							</table>
						</th>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1 sub-title">Ž�� / õ��</td>
						<td colspan="1" class="record-2-2">Ž���� 2024.07.04.</td>
						<td colspan="1" class="record-2-3 sub-title" rowspan="4">��<p class="gap-2-3"></p>ġ</td>
						<td colspan="1" class="record-2-4 sub-title">����</td>
						<td colspan="1" class="record-2-5">37.464973</td>
						<td colspan="1" class="record-2-6 sub-title" rowspan="4">��<p class="gap-2-6"></p>��<p class="gap-2-6"></p>��<p class="gap-2-6"></p>��</td>
						<td colspan="1" class="record-2-7 sub-title">����(��)</td>
						<td colspan="1" class="record-2-8">25</td>
						<td colspan="1" class="record-2-9 sub-title" rowspan="2">����<span class="gap-2-9"></span>����</td>
						<td colspan="1" class="record-2-10 sub-title">��ȣ</td>
						<td colspan="1" class="record-2-11">2024-001-087</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1 sub-title">�� �� �� ��</td>
						<td colspan="1" class="record-2-2">���� ������ ��� 121</td>
						<td colspan="1" class="record-2-4 sub-title">�浵</td>
						<td colspan="1" class="record-2-5">127.106565</td>
						<td colspan="1" class="record-2-7 sub-title">�������� ����(��)</td>
						<td colspan="1" class="record-2-8">117</td>
						<td colspan="1" class="record-2-10 sub-title">���</td>
						<td colspan="1" class="record-2-11">�Ϲݵ��</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1 sub-title">���θ�</td>
						<td colspan="1" class="record-2-2">�帪��</td>
						<td colspan="1" class="record-2-4 sub-title">����</td>
						<td colspan="1" class="record-2-5">�߾Ӽ� ���� 2����</td>
						<td colspan="1" class="record-2-7 sub-title">����Ⱦ�� ��(��)</td>
						<td colspan="1" class="record-2-8">53</td>
						<td colspan="1" class="record-2-9 sub-title" rowspan="2">�м�<span class="gap-2-9"></span>����</td>
						<td colspan="1" class="record-2-10 sub-title">��ȣ</td>
						<td colspan="1" class="record-2-11">038-1</td>
					</tr>
					<tr>
						<td colspan="1" class="record-2-1 sub-title">Ž �� �� ��</td>
						<td colspan="1" class="record-2-2">����</td>
						<td colspan="1" class="record-2-4 sub-title">����</td>
						<td colspan="1" class="record-2-5">������ �Ĺ� 11.07m</td>
						<td colspan="1" class="record-2-7 sub-title">�ٴ� ����(��)</td>
						<td colspan="1" class="record-2-8">37</td>
						<td colspan="1" class="record-2-10 sub-title">���</td>
						<td colspan="1" class="record-2-11">�Ϲݵ��</td>
					</tr>


					<!-- location data -->
					<tr class="strong-row">
						<td colspan="5" class="record-3-1"><strong>���� ��ġ��</strong></td>
						<td colspan="6" class="record-3-2" colspan="2"><strong>���� �ֺ�����</strong></td>
					</tr>
					<tr>
						<td colspan="5" class="record-4-1 img-area" id="css-location" data-img-key="location" rowspan="2">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-location" multiple accept="image/*" style="display: none">
								<label class="button" for="img-location">�̹��� ����</label>
								
							</div>
						</td>
						<td colspan="3" class="record-4-2 img-area" id="css-front" data-img-key="front">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-front" multiple accept="image/*" style="display: none">
								<label class="button" for="img-front">�̹��� ����</label>
							</div>
						</td>
						<td colspan="3" class="record-4-2 img-area" id="css-back" data-img-key="back">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-back" multiple accept="image/*" style="display: none">
								<label class="button" for="img-back">�̹��� ����</label>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="3" class="record-4-2 img-area" id="css-left" data-img-key="left">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-left" multiple accept="image/*" style="display: none">
								<label class="button" for="img-left">�̹��� ����</label>
							</div>
						</td>
						<td colspan="3" class="record-4-2 img-area" id="css-right" data-img-key="right">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-right" multiple accept="image/*" style="display: none">
								<label class="button" for="img-right">�̹��� ����</label>
							</div>
						</td>
					</tr>


					<!-- cavity data -->
					<tr class="strong-row">
						<td colspan="4" class="record-5-1"><strong>(���) Ž�翵�� ��� / (�ϴ�) ��鿵��</strong></td>
						<td colspan="1" class="record-5-2"><strong>���ܸ�</strong></td>
						<td colspan="3" class="record-5-3"><strong>Ⱦ�ܸ�</strong></td>
						<td colspan="3" class="record-5-4"><strong>����Ȯ�� ���ð� ����</strong></td>
					</tr>
					<tr>
						<td colspan="4" class="record-6-1 img-area" id="css-flat-section" data-img-key="flat-section">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-flat-section" multiple accept="image/*" style="display: none">
								<label class="button" for="img-flat-section">�̹��� ����</label>
							</div>
						</td>
						<td colspan="1" class="record-6-2 img-area" rowspan="2" id="css-long-section" data-img-key="long-section">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-long-section" multiple accept="image/*" style="display: none">
								<label class="button" for="img-long-section">�̹��� ����</label>
							</div>
						</td>
						<td colspan="3" class="record-6-3 img-area" rowspan="2" id="css-cross-section" data-img-key="cross-section">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-cross-section" multiple accept="image/*" style="display: none">
								<label class="button" for="img-cross-section">�̹��� ����</label>
							</div>
						</td>
						<td colspan="3" class="record-6-4 img-area" rowspan="2" id="css-cavity" data-img-key="cavity">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-cavity" multiple accept="image/*" style="display: none">
								<label class="button" for="img-cavity">�̹��� ����</label>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="4" class="record-6-5 img-area" id="css-surface" data-img-key="surface">
							<div class="img-container">
								<h4>�̹����� ����������.</h4>
								<img style="display: none">
								<input type="file" id="img-surface" multiple accept="image/*" style="display: none">
								<label class="button" for="img-surface">�̹��� ����</label>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</body>
<!-- �巡�׸� �̿��� �̹��� ���� ���ε� ��� -->
<script src="${pageContext.request.contextPath}/resources/js/imgUploadHandler.js"></script>
<!-- �巡�׸� �̿��� ���� �� ���� ���ε� ��� -->
<script src="${pageContext.request.contextPath}/resources/js/folderUploadHandler.js"></script>
</html>
