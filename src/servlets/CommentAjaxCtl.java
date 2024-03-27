package servlets;

import classes.CreatJsonComment;
import classes.CreatJsonContact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CommentAjaxCtl")
public class CommentAjaxCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json;
        PrintWriter out = response.getWriter();
        CreatJsonComment creatJsonComment = new CreatJsonComment();
        json = creatJsonComment.creat();
        out.print(json);

    }
}
