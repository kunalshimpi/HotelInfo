package com.psl.test;


import static org.junit.Assert.*;

import org.junit.Test;
//import org.junit.internal.runners.JUnit4ClassRunner;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Assert;

import com.psl.service.HotelInfoService;

@RunWith(value = SpringJUnit4ClassRunner.class)
// @ContextConfiguration(classes={EmployeeTestConfig.class})
@ContextConfiguration(locations = "HotelInfoServiceTest-context.xml")
public class HotelInfoServiceTest {

	@Autowired
	private HotelInfoService service;

	@Test
	public void getServiceClassTest() {
		assertEquals( "class com.psl.service.HotelInfoService", this.service.getClass().toString());
		
	}
	
	
	
	/*@Test
	public void getHotelListTest() {
		
		String dburl = ${db.connectionURL};
		
		if(${db.connectionURL}.equalsIgnoreCase("jdbc:mysql://localhost:3306/hotel_region_us"))
		{
			Assert.notEmpty((service.getInfoFromDB("New York")));
		}else(${db.connectionURL}.toString().equalsIgnoreCase("jdbc:mysql://localhost:3306/hotel_region_in"))
		{
			Assert.notEmpty((service.getInfoFromDB("Pune")));
		}
			
	}*/
	
}
