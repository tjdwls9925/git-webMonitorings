package com.master.grow.user.service;

import com.master.grow.user.to.UserTO;

public interface NormalUserService {

	public int SelectNewInsertUserIdCheck(String userID);

	public int newInsertUser(String userID, String userName, String userEmail, String userPassword, String userPhone,
			String userGender, String userBirth);

	public int userLoginEvent(String userId, String userPw);

	public UserTO getSelectedUser(String user);

	public int getFarmCode(String code);

	public int userFarmCodeUpdate(String userID, String code);

}
