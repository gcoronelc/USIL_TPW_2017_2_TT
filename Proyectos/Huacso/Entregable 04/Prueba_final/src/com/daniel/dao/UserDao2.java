package com.daniel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.daniel.model.User2;
import com.daniel.util.DbUtil;

public class UserDao2 {

	private Connection connection;

	public UserDao2() {
		connection = DbUtil.getConnection();
	}

	public void addUser(User2 user) {
			try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into inmueble(piso,descripcion,idpersona,idtinmueble,idtorre,activo) values ( ?, ?,'NONE', ? , ? ,'DISPONIBLE')");
			// Parameters start with 1
			preparedStatement.setString(1, user.getPiso());
			preparedStatement.setString(2, user.getDescripcion());
			preparedStatement.setString(3, user.getIdtinmueble());
			preparedStatement.setString(4, user.getIdtorre());
	
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from inmueble where idinmueble=?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void desUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("UPDATE `inmueble` SET `ACTIVO` = 'DISPONIBLE',`idpersona` = 'NONE' WHERE `inmueble`.`IDINMUEBLE` = ?;");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User2 user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update inmueble set piso=?, descripcion=?, idtinmueble=?, idtorre=? where idinmueble = ?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getPiso());
			preparedStatement.setString(2, user.getDescripcion());
			preparedStatement.setString(3, user.getIdtinmueble());
			preparedStatement.setString(4, user.getIdtorre());
			preparedStatement.setInt(5, user.getIdinmueble());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<User2> getAllUsersCERO() {
		List<User2> users3 = new ArrayList<User2>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM inmueble WHERE ACTIVO='disponible'");
			while (rs.next()) {
				User2 user3 = new User2();
				user3.setIdinmueble(rs.getInt("idinmueble"));
				user3.setPiso(rs.getString("piso"));
				user3.setDescripcion(rs.getString("descripcion"));
				user3.setIdpersona(rs.getString("idpersona"));
				user3.setIdtinmueble(rs.getString("idtinmueble"));
				user3.setIdtorre(rs.getString("idtorre"));
				user3.setActivo(rs.getString("activo"));

				users3.add(user3);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users3;
	}
	
	
	public List<User2> getAllUsersTWO() {
		List<User2> users2 = new ArrayList<User2>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM inmueble WHERE ACTIVO='ocupado'");
			while (rs.next()) {
				User2 user2 = new User2();
				user2.setIdinmueble(rs.getInt("idinmueble"));
				user2.setPiso(rs.getString("piso"));
				user2.setDescripcion(rs.getString("descripcion"));
				user2.setIdpersona(rs.getString("idpersona"));
				user2.setIdtinmueble(rs.getString("idtinmueble"));
				user2.setIdtorre(rs.getString("idtorre"));
				user2.setActivo(rs.getString("activo"));

				users2.add(user2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users2;
	}
	
	
	
	public List<User2> getAllUsersONE() {
		List<User2> users = new ArrayList<User2>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM inmueble");
			while (rs.next()) {
				User2 user = new User2();
				user.setIdinmueble(rs.getInt("idinmueble"));
				user.setPiso(rs.getString("piso"));
				user.setDescripcion(rs.getString("descripcion"));
				user.setIdpersona(rs.getString("idpersona"));
				user.setIdtinmueble(rs.getString("idtinmueble"));
				user.setIdtorre(rs.getString("idtorre"));
				user.setActivo(rs.getString("activo"));

				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	
	
	public User2 getUserById(int userId) {
		User2 user = new User2();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from inmueble where idinmueble=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setIdinmueble(rs.getInt("idinmueble"));
				user.setPiso(rs.getString("piso"));
				user.setDescripcion(rs.getString("descripcion"));
				user.setIdpersona(rs.getString("idpersona"));
				user.setIdtinmueble(rs.getString("idtinmueble"));
				user.setIdtorre(rs.getString("idtorre"));
				user.setActivo(rs.getString("activo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
}
