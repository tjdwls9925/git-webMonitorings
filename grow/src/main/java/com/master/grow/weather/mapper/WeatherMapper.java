package com.master.grow.weather.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.master.grow.weather.to.WeatherTO;

@Mapper
public interface WeatherMapper {

	public WeatherTO SelectWeatherLocationName(@Param("nx") String nx, @Param("ny") String ny);

}
