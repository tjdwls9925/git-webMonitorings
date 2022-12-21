package com.master.grow.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.user.mapper.NormalUserMapper;

@Service
public class NormalUserServiceImpl implements NormalUserService{
	@Autowired
	private NormalUserMapper normalUserMapper;
	

	public int SelectNewInsertUserIdCheck(String userID) {
		
		int result = normalUserMapper.SelectNewInsertUserIdCheck(userID);
		
		return result;
	}
	
}
