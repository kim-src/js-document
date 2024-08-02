package kr.com.document.file;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.UnderlinePatterns;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DocxController {
    
    @GetMapping("/word.do")
    public String createWord(Model model) {
        try {
            getWord();
            model.addAttribute("message", "문서가 성공적으로 생성되었습니다.");
            return "file/getWordSuccess";
        } catch(Exception e) {
            model.addAttribute("error", "문서 생성에 실패하였습니다.");
            return "file/getWordFail";
        }
    }
    
    public void getWord() throws Exception {
        try (XWPFDocument doc = new XWPFDocument()) {
            String htmlContent = new String(Files.readAllBytes(Paths.get("resources/html/document.html")), StandardCharsets.UTF_8);
            Document parsedHtml = Jsoup.parse(htmlContent);
            
            parseElements(doc, parsedHtml.body());

            String safePath = System.getProperty("user.home") + "/downloads/document.docx";
            try (OutputStream os = new FileOutputStream(safePath)) {
                doc.write(os);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("문서 생성 실패", e);
        }
    }
    
    private void parseTable(XWPFDocument doc, Element table) throws Exception {
        XWPFTable xwpfTable = doc.createTable();
        for (Element row : table.select("tr")) {
            XWPFTableRow xwpfRow = xwpfTable.createRow();
            for (Element cell : row.select("td, th")) {
                XWPFTableCell xwpfCell = xwpfRow.addNewTableCell();
                parseElements(doc, cell);
            }
        }
    }

    private void parseElements(XWPFDocument doc, Element element) throws Exception {
        for (Node node : element.childNodes()) {
            if (node instanceof Element) {
                Element elem = (Element) node;
                switch (elem.tagName()) {
                    case "p":
                        XWPFParagraph para = doc.createParagraph();
                        XWPFRun run = para.createRun();
                        run.setText(elem.text());
                        applyStyles(run, elem);
                        break;
                    case "table":
                        parseTable(doc, elem);
                        break;
                    case "img":
                        handleImage(doc, elem);
                        break;
                    // Add more tag cases as needed
                }
                parseElements(doc, elem); // Recursively parse inner elements
            }
        }
    }
    
    private void handleImage(XWPFDocument doc, Element img) throws Exception {
        XWPFParagraph p = doc.createParagraph();
        XWPFRun run = p.createRun();
        String src = img.absUrl("src");  // Use absUrl for absolute path resolution
        try (InputStream is = Files.newInputStream(Paths.get(src))) {
            run.addPicture(is, XWPFDocument.PICTURE_TYPE_PNG, src, Units.toEMU(200), Units.toEMU(200));
        }
    }
    
    private void applyStyles(XWPFRun run, Element element) {
        String style = element.attr("style");
        if (style.contains("font-weight:bold")) {
            run.setBold(true);
        }
        if (style.contains("text-decoration:underline")) {
            run.setUnderline(UnderlinePatterns.SINGLE);
        }
    }
}
