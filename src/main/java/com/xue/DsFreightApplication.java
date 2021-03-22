package com.xue;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xue.repository.dao")
public class DsFreightApplication {

	public static void main(String[] args) {
		System.out.println("==启动==springboot");
		SpringApplication.run(DsFreightApplication.class, args);
	}

}
