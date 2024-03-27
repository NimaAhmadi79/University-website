package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Guide {

    public void insert(String subject, String link, String message, String part) {
        try {


            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "insert into guide(subject,link,message,part) values('%s','%s','%s','%s')";
            query = String.format(query, subject, link, message, part);
            state.execute(query);
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }


    }
}
