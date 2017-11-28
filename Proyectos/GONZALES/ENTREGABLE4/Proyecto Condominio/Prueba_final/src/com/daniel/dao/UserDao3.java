package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.daniel.model.User3;
import com.daniel.util.DbUtil;

public class UserDao3 {

	private Connection connection;

	public UserDao3() {
		connection = DbUtil.getConnection();
	}

	public void updateUser(User3 user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update inmueble set  idpersona=?,activo='OCUPADO' where idinmueble = ?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getIdpersona());
			preparedStatement.setInt(2, user.getIdinmueble());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User3> getAllUsers() {
		List<User3> users = new ArrayList<User3>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM persona ");
			while (rs.next()) {
				User3 user = new User3();
				user.setNombre(rs.getString("nombre"));
				user.setApellido(rs.getString("apellido"));

				

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	
}
