/* WORD 변환 기능 */

// 클라이언트 사이드에서 WORD 변환 버튼을 누르면 실행되도록 설정

function getDocx() {
    var content = document.getElementById('full-document').outerHTML;
    if (!content) {
        alert('문서를 변환할 수 있는 영역을 찾을 수 없습니다.');
        return;
    }
    var converted = htmlDocx.asBlob(content, {
        orientation: 'portrait',
        margins: { top: 720 }
    });

    if (!converted) {
        alert('문서 변환 중 문제가 발생했습니다.');
        return;
    }

    saveAs(converted, '분석공동조사서.docx');
}
