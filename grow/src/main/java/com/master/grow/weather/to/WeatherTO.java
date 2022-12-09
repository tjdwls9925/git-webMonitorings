package com.master.grow.weather.to;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class WeatherTO {
	@JsonProperty
	private String Area , City , RegionName , InstantX , InstantY;
	
}
