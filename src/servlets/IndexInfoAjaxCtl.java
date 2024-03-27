package servlets;

import classes.CreatJsonComment;
import classes.CreatJsonContact;
import classes.CreatJsonGuide;
import classes.CreatJsonInvite;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "IndexInfoCtl")
public class IndexInfoAjaxCtl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            JSONObject jo = new JSONObject();
            PrintWriter out = response.getWriter();
            CreatJsonComment creatJsonComment = new CreatJsonComment();
            int comment = creatJsonComment.info();
            jo.put("comment", Integer.toString(comment));
            CreatJsonInvite creatJsonInvite = new CreatJsonInvite();
            int invite = creatJsonInvite.info();
            jo.put("invite", Integer.toString(invite));
            CreatJsonContact creatJsonContact = new CreatJsonContact();
            int contact = creatJsonContact.info();
            jo.put("contact", Integer.toString(contact));
            String json = jo.toString();
            out.print(json);


        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
