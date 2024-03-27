package classes;

import org.json.JSONException;
import org.json.JSONObject;

import java.sql.*;

public class CreatJsonComment {

    int id;
    int maxId;
    int info;
    String json = "[";

    public String creat() {
        try {


            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "select * from comment";
            ResultSet result = state.executeQuery(query);
            while (result.next()) {
                id = result.getInt(5);
            }
            maxId = id;


            result.first();
            if (id < 7) {
                JSONObject jo = new JSONObject();
                jo.put("name", result.getString(1));
                jo.put("email", result.getString(2));
                jo.put("subject", result.getString(3));
                jo.put("message", result.getString(4));

                if (result.getInt(5) == maxId) {
                    json += jo.toString();

                } else {
                    json += jo.toString() + ",";

                }


                while (result.next()) {
                    jo.put("name", result.getString(1));
                    jo.put("email", result.getString(2));
                    jo.put("subject", result.getString(3));
                    jo.put("message", result.getString(4));
                    if (result.getInt(5) == maxId) {
                        json += jo.toString();

                    } else {
                        json += jo.toString() + ",";

                    }

                }
            }
            if (id > 6) {
                id = id - 5;
                while (result.next()) {
                    if (result.getInt(5) >= id) {
                        JSONObject jo = new JSONObject();
                        jo.put("name", result.getString(1));
                        jo.put("email", result.getString(2));
                        jo.put("subject", result.getString(3));
                        jo.put("message", result.getString(4));
                        if (result.getInt(5) == maxId) {
                            json += jo.toString();

                        } else {
                            json += jo.toString() + ",";

                        }

                    }

                }

            }
            json += "]";

            conect.close();
            state.close();

        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException | JSONException e) {
            e.printStackTrace();

        }

        return json;


    }

    public int info() throws ClassNotFoundException, IllegalAccessException, InstantiationException, SQLException {


        Class.forName("com.mysql.jdbc.Driver").newInstance();
        String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
        Connection conect = DriverManager.getConnection(url);
        Statement state = conect.createStatement();
        String query = "select * from comment";
        ResultSet result = state.executeQuery(query);
        while (result.next()) {
            info = result.getInt(5);
        }
        conect.close();
        state.close();
        return info;


    }


}
