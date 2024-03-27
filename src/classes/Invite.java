package classes;

import java.sql.*;

public class Invite {
//    int id;

    public Invite() {


    }

    public void insert(String email, String address, String phone, String name, String family, String message) {
        try {


            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query1 = "insert into invite(name,family,email,phone,address,message) values('%s','%s','%s','%s','%s','%s')";
            query1 = String.format(query1, name, family, email, phone, address, message);
            state.execute(query1);
            conect.close();
            state.close();


        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();

        }


    }


}
