package classes;

import org.json.JSONException;
import org.json.JSONObject;

import java.sql.*;

public class CreatJsonGuide {
    String json = "[";
    int maxId;

    public String creat() {


        try {


            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "select * from guide";
            ResultSet result = state.executeQuery(query);

            while (result.next()) {
                maxId = result.getInt(5);
            }
            result.first();


            JSONObject jo = new JSONObject();
            jo.put("subject", result.getString(1));
            jo.put("link", result.getString(2));
            jo.put("message", result.getString(3));
            jo.put("part", result.getString(4));
            if (result.getInt(5) == maxId) {
                json += jo.toString();

            } else {
                json += jo.toString() + ",";

            }

            while (result.next()) {
                jo.put("subject", result.getString(1));
                jo.put("link", result.getString(2));
                jo.put("message", result.getString(3));
                jo.put("part", result.getString(4));
                if (result.getInt(5) == maxId) {
                    json += jo.toString();

                } else {
                    json += jo.toString() + ",";

                }

            }

            json += "]";

            conect.close();
            state.close();

        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException | JSONException
                e) {
            e.printStackTrace();

        }
        return json;


    }


}

