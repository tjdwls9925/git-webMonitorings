package com.master.grow.weather.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.master.grow.weather.mapper.WeatherMapper;
import com.master.grow.weather.to.WeatherTO;

@Service
public class WeatherServiceImpl implements WeatherService{

	@Autowired
	private WeatherMapper weatherMapper;
	
	public WeatherTO SelectWeatherLocationName(String nx, String ny) {
		
		System.out.println("service 호출");
		System.out.println(nx + "" + ny);
		
		
		WeatherTO locationName = weatherMapper.SelectWeatherLocationName(nx,ny);
		
		return locationName;
	}
}
