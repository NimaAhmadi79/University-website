package servlets;

import classes.Invite;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class InviteCtl extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String family = request.getParameter("family");
        String message = request.getParameter("message");
        Invite invite = new Invite();
        invite.insert(email, address, phone, name, family, message);
        HttpSession session = request.getSession();
        session.setAttribute("invite", true);
        RequestDispatcher rd = request.getRequestDispatcher("invite.jsp");
        rd.forward(request, response);

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
