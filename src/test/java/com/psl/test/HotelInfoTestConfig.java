package com.psl.test;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.psl.DAO.IHotelInfoDAO;
import com.psl.service.HotelInfoService;

@Configuration
public class HotelInfoTestConfig {

	@Bean
	HotelInfoService getService(){
		return new HotelInfoService();
	}
	
	@Bean
	IHotelInfoDAO getDAO(){
		return new HotelInfoDAOStub();
	}
}
