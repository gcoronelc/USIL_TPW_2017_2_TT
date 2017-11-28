package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.daniel.model.User5;
import com.daniel.util.DbUtil;

public class UserDao5 {

	private Connection connection;

	public UserDao5() {
		connection = DbUtil.getConnection();
	}

	
	
	public void InsertarUser(User5 user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("INSERT INTO `gastos`( `motivo`, `importe`, `fecha`)  VALUES (?,?,?)");
			// Parameters start with 1
			preparedStatement.setString(1, user.getMotivo());
			preparedStatement.setString(2, user.getImporte());
			preparedStatement.setDate(3, new java.sql.Date(user.getFecha().getTime()));

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("DELETE FROM gastos WHERE idgasto = ?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

	public List<User5> getAllUsers() {
		List<User5> users = new ArrayList<User5>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM gastos ");
			while (rs.next()) {
				User5 user = new User5();
				user.setIdgasto(rs.getInt("idgasto"));
				user.setMotivo(rs.getString("motivo"));
				user.setImporte(rs.getString("importe"));
				user.setFecha(rs.getDate("fecha"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	
	
	
	
}
