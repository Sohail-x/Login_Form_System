package com.sohail.util;

public class Query {
	public static final String insert = "INSERT INTO users (userName,email,password) VALUES (?,?,?)";
	public static final String readData =  "SELECT * FROM users where userName = ? AND password = ?";
}

