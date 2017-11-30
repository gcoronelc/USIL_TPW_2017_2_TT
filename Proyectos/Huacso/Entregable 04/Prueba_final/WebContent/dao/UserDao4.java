package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.daniel.model.User4;
import com.daniel.util.DbUtil;

public class UserDao4 {

	private Connection connection;

	public UserDao4() {
		connection = DbUtil.getConnection();
	}

	
	
	public void ActualizarUser(User4 user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update auditorio set persona=?, fecha=?, pagoa=?, pagol = ?" +
							"where idauditorio=?");
			preparedStatement.setString(1, user.getPersona());
			preparedStatement.setDate(2, new java.sql.Date(user.getFecha().getTime()));
			preparedStatement.setString(3, user.getPagoa());
			preparedStatement.setString(4, user.getPagol());
			preparedStatement.setInt(5, user.getIdauditorio());

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateUser(User4 user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("INSERT INTO `auditorio`( `PERSONA`, `FECHA`, `PAGOA`, `PAGOL`) VALUES (?,?,'S/250.00','NONE')");
			// Parameters start with 1
			preparedStatement.setString(1, user.getPersona());
			preparedStatement.setDate(2, new java.sql.Date(user.getFecha().getTime()));

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("DELETE FROM auditorio WHERE idauditorio = ?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public User4 getUserById(int userId) {
		User4 user = new User4();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from auditorio where idauditorio=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setIdauditorio(rs.getInt("idauditorio"));
				user.setPersona(rs.getString("persona"));
				user.setFecha(rs.getDate("fecha"));
				user.setPagoa(rs.getString("pagoa"));
				user.setPagol(rs.getString("pagol"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}


	public List<User4> getAllUsers() {
		List<User4> users = new ArrayList<User4>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM persona ");
			while (rs.next()) {
				User4 user = new User4();
				user.setNombre(rs.getString("nombre"));
				user.setApellido(rs.getString("apellido"));

				

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	
	public List<User4> getAllUsersTwo() {
		List<User4> users2 = new ArrayList<User4>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM AUDITORIO ");
			while (rs.next()) {
				User4 user2 = new User4();
				user2.setIdauditorio(rs.getInt("idauditorio"));
				user2.setPersona(rs.getString("persona"));
				user2.setFecha(rs.getDate("fecha"));
				user2.setPagoa(rs.getString("pagoa"));
				user2.setPagol(rs.getString("pagol"));

				users2.add(user2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users2;
	}
	
	
}
