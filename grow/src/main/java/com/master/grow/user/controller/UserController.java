package com.master.grow.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.master.grow.user.service.UserService;

@RestController
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService userService;
	
	ModelMap map = null;

	@RequestMapping(value = "/InsertNewUser", method = RequestMethod.POST)
	public ModelMap InsertNewUser(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String userPw = request.getParameter("userPw");
		String userRePw = request.getParameter("userRePw");
		System.out.println(userId);
		
		
		int result = userService.InsertNewUser(userId,userName,userEmail,userPw,userRePw);
		
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
	
	@RequestMapping(value = "/SelectNewInsertUserIdCheck", method = RequestMethod.GET)
	public ModelMap SelectNewInsertUserIdCheck(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		String userId = request.getParameter("userId");

		System.out.println(userId);
		
		
		int result = userService.SelectNewInsertUserIdCheck(userId);
		
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
	
	@RequestMapping(value = "/userLoginEvent", method = RequestMethod.GET)
	public ModelMap userLoginEvent(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");

		System.out.println(userId);
		
		
		int result = userService.userLoginEvent(userId,userPw);
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("user", userId);
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
				map.put("result", result);
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
