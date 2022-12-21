package com.master.grow.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.master.grow.user.service.NormalUserService;

@RestController
@RequestMapping("/normalUser/*")
public class NormalUserController {
	
	@Autowired
	private NormalUserService normalUserService;
	
	ModelMap map = null;
	
	@RequestMapping(value = "/SelectNewInsertUserIdCheck", method = RequestMethod.GET)
	public ModelMap SelectNewInsertUserIdCheck(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		String userID = request.getParameter("userID");

		System.out.println(userID);
		
		
		int result = normalUserService.SelectNewInsertUserIdCheck(userID);
		
		try {
			map.put("result", result);
            map.put("errorCode", 1);
            map.put("errorMsg", "성공!");

        }catch(Exception exception){
            exception.printStackTrace();
            map.put("errorCode", -1);
            map.put("errorMsg", exception.getMessage());
        }
		return map;
	}
	

}
