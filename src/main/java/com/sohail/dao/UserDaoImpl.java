package com.sohail.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sohail.util.DBConnection;
import com.sohail.util.Query;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean isValidUser(String userName, String password) {
		String query = Query.readData;
		try(Connection con = DBConnection.connect();
				PreparedStatement preparedStatement = con.prepareStatement(query)){
				
				preparedStatement.setString(1,userName);
				preparedStatement.setString(2,password);
				
				ResultSet resultSet = preparedStatement.executeQuery();
				
				//System.out.println("Query ran");
				return resultSet.next();
		}
			catch(Exception e) {
				e.printStackTrace();
				return false;
			}
		}

	@Override
	public boolean createData(String userName, String password,String email) {
		String query = Query.insert;
		try(Connection con = DBConnection.connect();
				PreparedStatement preparedStatement = con.prepareStatement(query)){
				
				preparedStatement.setString(1,userName);
				preparedStatement.setString(2,email);
				preparedStatement.setString(3,password);
				
				preparedStatement.executeUpdate();
				
				//System.out.println("Query ran");
				return true;
		}
			catch(Exception e) {
				e.printStackTrace();
				return false;
			}
	}
	}

