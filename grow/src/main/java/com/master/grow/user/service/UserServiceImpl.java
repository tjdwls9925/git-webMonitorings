package com.master.grow.user.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.user.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public int newInsertUser(String userCode, String userID, String userName, String userEmail, String userPassword,
			String userPhone, String userGender, String userBirth) {
		int result = userMapper.newInsertUser(userCode,userID,userName,userEmail,userPassword,userPhone,userGender,userBirth);
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
