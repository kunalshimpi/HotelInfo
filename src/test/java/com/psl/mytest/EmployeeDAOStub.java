package com.psl.mytest;

import java.util.List;

import com.psl.DAO.IHotelInfoDAO;
import com.psl.beans.Hotel;
import com.psl.beans.User;


public class EmployeeDAOStub implements IHotelInfoDAO{

	@Override
	public List<Hotel> getInfoFromDB(String city) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addInfoToDB(Hotel h) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addUser(User u) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean checkLogIn(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
