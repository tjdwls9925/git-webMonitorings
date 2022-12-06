package com.master.grow.user.service;

import org.apache.ibatis.annotations.Param;

public interface UserService {

	public int InsertNewUser(@Param("userId") String userId, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPw")String userPw, @Param("userRePw")String userRePw);

	public int SelectNewInsertUserIdCheck(@Param("userId")String userId);

	public int userLoginEvent(String userId, String userPw);


}
