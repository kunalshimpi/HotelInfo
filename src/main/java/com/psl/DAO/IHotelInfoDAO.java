package com.psl.DAO;

import java.util.List;

import com.psl.beans.Hotel;
import com.psl.beans.User;

public interface IHotelInfoDAO {

	public List<Hotel> getInfoFromDB(String city);
	public void addInfoToDB(Hotel h); 
	public void addUser(User u);
	public boolean checkLogIn(User user);
	
}
