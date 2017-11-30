package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.daniel.model.User;
import com.daniel.util.DbUtil;

public class UserDao {

	private Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}

	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into persona(idtpersona,nombre,apellido,dni,telefono,direccion,email) values (?, ?, ?, ?, ?, ?, ?)");
			// Parameters start with 1
			preparedStatement.setString(1, user.getIdtpersona());
			preparedStatement.setString(2, user.getNombre());
			preparedStatement.setString(3, user.getApellido());
			preparedStatement.setInt(4, user.getDni());
			preparedStatement.setInt(5, user.getTelefono());
			preparedStatement.setString(6, user.getDireccion());
			preparedStatement.setString(7, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("DELETE FROM persona WHERE idpersona = ?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update persona set idtpersona=?, nombre=?, apellido=?,dni=?, telefono=?, direccion=? ,email=?" +
							"where idpersona=?");
			// Parameters s	tart with 1
			preparedStatement.setString(1, user.getIdtpersona());
			preparedStatement.setString(2, user.getNombre());
			preparedStatement.setString(3, user.getApellido());
			preparedStatement.setInt(4, user.getDni());
			preparedStatement.setInt(5, user.getTelefono());
			preparedStatement.setString(6, user.getDireccion());
			preparedStatement.setString(7, user.getEmail());
			preparedStatement.setInt(9, user.getIdpersona());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from persona");
			while (rs.next()) {
				User user = new User();
				user.setIdpersona(rs.getInt("idpersona"));
				user.setIdtpersona(rs.getString("idtpersona"));
				user.setNombre(rs.getString("nombre"));
				user.setApellido(rs.getString("apellido"));
				user.setDni(rs.getInt("dni"));
				user.setTelefono(rs.getInt("telefono"));
				user.setDireccion(rs.getString("direccion"));
				user.setEmail(rs.getString("email"));
				users.add(user);
			}
		} 
		
		
		
		catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
		
	}
	
	
	
	public User getUserById(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from persona where idpersona=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setIdpersona(rs.getInt("idpersona"));
				user.setIdtpersona(rs.getString("idtpersona"));
				user.setNombre(rs.getString("nombre"));
				user.setApellido(rs.getString("apellido"));
				user.setDni(rs.getInt("dni"));
				user.setTelefono(rs.getInt("telefono"));
				user.setDireccion(rs.getString("direccion"));
				user.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
}
