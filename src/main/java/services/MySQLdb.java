package services;

import models.AttributeModel;
import models.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLdb {
    String url = "jdbc:mysql://localhost:3306/webgame";
    String username = "root";
    String password = "root";

    Connection connection = null;
    static MySQLdb instance = null;

    public MySQLdb() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException | ClassNotFoundException exception) {
            exception.printStackTrace();
        }
    }

    public static synchronized MySQLdb getInstance() {
        if (instance == null) {
            instance = new MySQLdb();
        }

        return instance;
    }

    public UserModel doLogin(String email, String password) throws SQLException {
        UserModel userModel = null;

        String qLogin = "SELECT name FROM users WHERE email = ? AND password = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(qLogin);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, password);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            String name = resultSet.getString("name");
            userModel = new UserModel(name, name, email);
        }

        return userModel;
    }

    public List<AttributeModel> FetchAttribute() throws SQLException {
        List<AttributeModel> list = new ArrayList<>();

        String qGetAttr = "SELECT score, time FROM webgame.attribute as A, webgame.users as B where A.userid = B.userID;";
        PreparedStatement preparedStatement = connection.prepareStatement(qGetAttr);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            String score = resultSet.getString("score");
            String time = resultSet.getString("time");
            AttributeModel attributeModel = new AttributeModel(score, time);
            list.add(attributeModel);
        }

        return list;
    }
}
