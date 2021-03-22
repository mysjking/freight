package com.xue;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xue.repository.dao")
public class DsFreightApplication {

	public static void main(String[] args) {
		SpringApplication.run(DsFreightApplication.class, args);
	}

}
