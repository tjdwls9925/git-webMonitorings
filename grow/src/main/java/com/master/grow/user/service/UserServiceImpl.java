package com.master.grow.user.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.user.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public int InsertNewUser(@Param("userId") String userId, @Param("userName") String userName,@Param("userEmail") String userEmail, @Param("userPw")String userPw, @Param("userRePw")String userRePw) {
		int result = userMapper.InsertNewUser(userId, userName, userEmail, userPw, userRePw);
		return result;
	}
	
	public int SelectNewInsertUserIdCheck(@Param("userId")String userId) {
		int result = userMapper.SelectNewInsertUserIdCheck(userId);
		return result;
	}
	
	public int userLoginEvent(String userId, String userPw) {
		int result = userMapper.userLoginEvent(userId , userPw);
		return result;
	}
}
