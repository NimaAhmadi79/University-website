package classes;

import org.json.JSONException;
import org.json.JSONObject;

import java.sql.*;

public class CreatJsonNews {
    int id;
    int maxId;
    String json = "[";

    public String creat() {

        try {


            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://localhost:3306/mianterm?user=root";
            Connection conect = DriverManager.getConnection(url);
            Statement state = conect.createStatement();
            String query = "select * from news";
            ResultSet result = state.executeQuery(query);
            while (result.next()) {
                id = result.getInt(4);
            }
            maxId = id;


            result.first();
            if (id < 7) {
                JSONObject jo = new JSONObject();
                jo.put("subject", result.getString(1));
                jo.put("link", result.getString(2));
                jo.put("message", result.getString(3));
                jo.put("date", result.getString(5));
                if (result.getInt(4) == maxId) {
                    json += jo.toString();

                } else {
                    json += jo.toString() + ",";

                }


                while (result.next()) {
                    jo.put("subject", result.getString(1));
                    jo.put("link", result.getString(2));
                    jo.put("message", result.getString(3));
                    jo.put("date", result.getString(5));
                    if (result.getInt(4) == maxId) {
                        json += jo.toString();

                    } else {
                        json += jo.toString() + ",";

                    }

                }
            }
            if (id > 6) {
                id = id - 5;
                while (result.next()) {
                    if (result.getInt(4) >= id) {
                        JSONObject jo = new JSONObject();
                        jo.put("subject", result.getString(1));
                        jo.put("link", result.getString(2));
                        jo.put("message", result.getString(3));
                        jo.put("date", result.getString(5));
                        if (result.getInt(4) == maxId) {
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
}
