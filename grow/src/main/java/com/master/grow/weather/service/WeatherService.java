package com.master.grow.weather.service;

import com.master.grow.weather.to.WeatherTO;

public interface WeatherService {

	public WeatherTO SelectWeatherLocationName(String nx, String ny);

}
