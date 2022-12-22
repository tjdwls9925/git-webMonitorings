package com.master.grow.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.user.mapper.NormalUserMapper;
import com.master.grow.user.to.UserTO;

@Service
public class NormalUserServiceImpl implements NormalUserService{
	@Autowired
	private NormalUserMapper normalUserMapper;
	

	public int SelectNewInsertUserIdCheck(String userID) {
		
		int result = normalUserMapper.SelectNewInsertUserIdCheck(userID);
		
		return result;
	}
	
	
	public int newInsertUser(String userID, String userName, String userEmail, String userPassword, String userPhone,
			String userGender, String userBirth) {
		int result = normalUserMapper.newInsertUser(userID,userName,userEmail,userPassword,userPhone,userGender,userBirth);
		return result;
	}
	
	
	public int userLoginEvent(String userId, String userPw) {
		int result = normalUserMapper.userLoginEvent(userId , userPw);
		return result;
	}
	
	public UserTO getSelectedUser(String user) {
		UserTO selectUser = normalUserMapper.getSelectedUser(user);
		return selectUser;
	}
	
	public int getFarmCode(String code) {
		int result = normalUserMapper.getFarmCode(code);
		return result;
		
	}
	
	public int userFarmCodeUpdate(String userID, String code) {
		int setPoint = normalUserMapper.userFarmCodeUpdate(userID , code);
		return setPoint;
	}
}
