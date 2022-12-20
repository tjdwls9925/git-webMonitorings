package com.master.grow.user.service;

import org.apache.ibatis.annotations.Param;

public interface UserService {

	

	public int SelectNewInsertUserIdCheck(@Param("userId")String userId);

	public int userLoginEvent(String userId, String userPw);

	public int newInsertUser(String userCode, String userID, String userName, String userEmail, String userPassword,
			String userPhone, String userGender, String userBirth);


}
