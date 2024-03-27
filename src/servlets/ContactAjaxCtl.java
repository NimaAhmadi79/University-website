package servlets;

import classes.CreatJsonContact;
import classes.CreatJsonInvite;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ContactAjaxCtl")
public class ContactAjaxCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String json;
        PrintWriter out = response.getWriter();
        CreatJsonContact creatJsonContact = new CreatJsonContact();
        json = creatJsonContact.creat();
        out.print(json);

    }
}
