package servlets;

import classes.Guide;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "GuidCtl")
public class GuideCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String subject = request.getParameter("subject");
        String link = request.getParameter("link");
        String message = request.getParameter("message");
        String part = request.getParameter("part");
        Guide guide = new Guide();
        guide.insert(subject, link, message, part);
        HttpSession session = request.getSession();
        session.setAttribute("guid", true);
        session.setAttribute("news", false);
        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
        rd.forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
