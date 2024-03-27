package servlets;

import classes.CreatJsonInvite;
import classes.CreatJsonNews;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NewsAjaxCtl")
public class NewsAjaxCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json;
        PrintWriter out=response.getWriter();
        CreatJsonNews creatJsonNews=new CreatJsonNews();
        json= creatJsonNews.creat();
        out.print(json);


    }
}
