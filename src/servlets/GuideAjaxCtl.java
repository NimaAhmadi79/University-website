package servlets;

import classes.CreatJsonContact;
import classes.CreatJsonGuide;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GuidAjaxCtl")
public class GuideAjaxCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json;
        PrintWriter out = response.getWriter();
        CreatJsonGuide creatJsonGuide = new CreatJsonGuide();
        json = creatJsonGuide.creat();
        out.print(json);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json;
        PrintWriter out = response.getWriter();
        CreatJsonGuide creatJsonGuide = new CreatJsonGuide();
        json = creatJsonGuide.creat();
        out.print(json);

    }
}
