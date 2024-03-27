package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

public class News {

    public void insert(String subject, String link, String message) {

        try {


            LocalDate localDate = LocalDate.now();
            String time = localDate.toString();
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "insert into news(subject,link,message,date) values('%s','%s','%s','%s')";
            query = String.format(query, subject, link, message, time);
            state.execute(query);
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }


    }
}
