package com.master.grow.farm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.master.grow.farm.service.FarmService;

@RestController
@RequestMapping("/farm/*")
public class FarmController {

	
	@Autowired
	private FarmService farmService;
	
	ModelMap map = null;
	
	@RequestMapping(value = "/CodeCheckEvent" , method=RequestMethod.GET)
	public ModelMap CodeCheckEvent(HttpServletRequest request , HttpServletResponse response) {
		
		
		String farmCode = request.getParameter("farmCode");
		System.out.println(farmCode);
		
		map = new ModelMap();
		
		int result = farmService.CodeCheckEvent(farmCode);
		
		
		if(result == 1) {
			try {
	            map.put("result", result);
	            map.put("errorCode", 1);
	            map.put("errorMsg", "성공!");

	        }catch(Exception exception){
	            exception.printStackTrace();
	            map.put("errorCode", -1);
	            map.put("errorMsg", exception.getMessage());
	        }
		}else {
			try {
				map.put("result", 0);
	            map.put("errorCode", 1);
	            map.put("errorMsg", "성공!");

	        }catch(Exception exception){
	            exception.printStackTrace();
	            map.put("errorCode", -1);
	            map.put("errorMsg", exception.getMessage());
	        }
		}
		
		
		
		return map;
	}
	
}
