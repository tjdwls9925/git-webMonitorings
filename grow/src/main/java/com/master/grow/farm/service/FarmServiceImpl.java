package com.master.grow.farm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.farm.mapper.FarmMapper;

@Service
public class FarmServiceImpl implements FarmService{
	@Autowired
	private FarmMapper farmMapper;
	
	
	public int CodeCheckEvent(String farmCode) {
		int result = farmMapper.CodeCheckEvent(farmCode);
		return result;
	}
	

}
