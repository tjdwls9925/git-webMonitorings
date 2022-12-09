package com.master.grow.weather.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.master.grow.weather.service.WeatherService;
import com.master.grow.weather.to.WeatherTO;

@RestController
@RequestMapping("/weather/*")
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	
	ModelMap map = null;
	
	@RequestMapping(value = "/SelectWeatherLocationName", method = RequestMethod.GET)
	public ModelMap SelectWeatherLocationName(HttpServletRequest request, HttpServletResponse response) {
		
		map = new ModelMap();
		
		String nx = request.getParameter("nx");
		String ny = request.getParameter("ny");
		
		
		System.out.println(nx);
		System.out.println(ny);

		
		WeatherTO location = weatherService.SelectWeatherLocationName(nx , ny);
		
		
		try {
			map.put("location", location);
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
