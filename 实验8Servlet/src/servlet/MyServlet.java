package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet({"/MyServlet"}) // 注解配置Servlet资源的路径
public class MyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String docType = "<!DOCTYPE html> \n";
        String title = "MyServlet";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body>\n" +
                "<ul>\n" +
                "  <li>text1=" + req.getParameter("text1") + "</li>\n" +
                "  <li>text2=" + req.getParameter("text2") + "</li>\n" +
                "  <li>text3=" + req.getParameter("text3") + "</li>\n" +
                "</ul>\n" +
                "</body></html>");
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
