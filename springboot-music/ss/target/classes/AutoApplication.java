package com.auto.www;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.auto.www.*.mapper")
public class AutoApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutoApplication.class, args);
	}
}

