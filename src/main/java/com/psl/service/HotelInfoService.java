package com.psl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.DAO.IHotelInfoDAO;
import com.psl.beans.Hotel;

@Service
public class HotelInfoService {
	@Autowired
	@Qualifier("dao")
	private IHotelInfoDAO dao;

	public List<Hotel> getInfoFromDB(String city) {
		return dao.getInfoFromDB(city);
	}

	public void addInfoToDB(Hotel h) {
		dao.addInfoToDB(h);
	}
}
