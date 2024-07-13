package kr.com.document.file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.kernel.pdf.PdfWriter;

@Controller
public class PdfController {

    @Autowired
    private ServletContext servletContext;
    private static final Logger logger = LoggerFactory.getLogger(PdfController.class);

    @GetMapping("/pdf.do")
    public void downloadPdf(HttpServletResponse response) throws IOException {
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=\"document.pdf\"");

        String fullPath = servletContext.getRealPath("/document.jsp");

        try (PdfWriter writer = new PdfWriter(response.getOutputStream());
             FileInputStream htmlSource = new FileInputStream(fullPath)) {
            HtmlConverter.convertToPdf(htmlSource, writer);
        } catch (FileNotFoundException e) {
            logger.error("File not found: " + fullPath, e);
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            response.getWriter().write("Error: File not found - " + fullPath);
        } catch (IOException e) {
            logger.error("IO Error occurred: " + e.getMessage(), e);
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Internal server error occurred while processing the PDF conversion.");
        } catch (Exception e) {
            logger.error("Unexpected error occurred: " + e.getMessage(), e);
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("Unexpected error occurred: " + e.getMessage());
        }
    }
}
