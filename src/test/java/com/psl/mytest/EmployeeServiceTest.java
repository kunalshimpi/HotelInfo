package com.psl.mytest;

import junit.framework.Assert;

import org.junit.Test;
//import org.junit.internal.runners.JUnit4ClassRunner;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.psl.service.HotelInfoService;

@RunWith(value = SpringJUnit4ClassRunner.class)
// @ContextConfiguration(classes={EmployeeTestConfig.class})
@ContextConfiguration(locations = "EmployeeServiceTest-context.xml")
public class EmployeeServiceTest {

	@Autowired
	private HotelInfoService service;

	@Test
	public void getAllEmployeesTest() {

		Assert.assertEquals(true, true);
		
	}
}
