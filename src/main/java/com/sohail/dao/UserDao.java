package com.sohail.dao;

public interface UserDao {

	boolean isValidUser(String userName, String password);

	boolean createData(String userName, String password,String email);

}
