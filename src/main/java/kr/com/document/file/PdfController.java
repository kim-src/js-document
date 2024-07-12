package kr.com.document.file;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.kernel.pdf.PdfWriter;

@Controller
public class PdfController {

    @Autowired
    private ServletContext servletContext;

    @GetMapping("/cavitydown")
    public void downloadPdf(HttpServletResponse response) {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"document.pdf\"");

        try {
            String fullPath = servletContext.getRealPath("/document.html");
            PdfWriter writer = new PdfWriter(response.getOutputStream());
            HtmlConverter.convertToPdf(new FileInputStream(fullPath), writer);
        } catch (IOException e) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            System.err.println("Error occurred: " + e.getMessage());
        }
    }
}
