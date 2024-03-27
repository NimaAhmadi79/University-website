package servlets;

import classes.Contact;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class ContactCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String subject = request.getParameter("subject");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        Contact contact = new Contact();
        contact.insert(name, email, subject, message);
        HttpSession session = request.getSession();
        session.setAttribute("contact", true);
        RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
        rd.forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String subject = request.getParameter("subject");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        Contact contact = new Contact();
        contact.insert(name, email, subject, message);
        HttpSession session = request.getSession();
        session.setAttribute("contact", true);
        RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
        rd.forward(request, response);


    }
}
