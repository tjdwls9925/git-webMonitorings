package com.master.grow.user.service;

public interface NormalUserService {

	public int SelectNewInsertUserIdCheck(String userID);

	public int newInsertUser(String userID, String userName, String userEmail, String userPassword, String userPhone,
			String userGender, String userBirth);

}
