package com.master.grow;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
public class GrowApplication {

	public static void main(String[] args) {
		SpringApplication.run(GrowApplication.class, args);
	}

}
