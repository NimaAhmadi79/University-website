package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Comment {
    public void insert(String name, String email, String subject, String message) {

        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();

            String query = "insert into comment(name,email,subject,message) values('%s','%s','%s','%s')";
            query = String.format(query, name, email, subject, message);
            state.execute(query);
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }

    }
}
