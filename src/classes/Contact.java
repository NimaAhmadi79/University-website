package classes;

import java.sql.*;

public class Contact {

    public void insert(String name, String email, String subject, String message) {
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();

            String query1 = "insert into contact(name,email,subject,message) values('%s','%s','%s','%s')";
            query1 = String.format(query1, name, email, subject, message);
            state.execute(query1);
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }

    }


}

