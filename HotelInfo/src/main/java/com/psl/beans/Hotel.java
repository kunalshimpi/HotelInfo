package com.psl.beans;

import org.springframework.stereotype.Component;

@Component
public class Hotel {

	private String HotelName;
	private String address;
	private String telephone;
	private String rating;
	public String getHotelName() {
		return HotelName;
	}
	public void setHotelName(String hotelName) {
		HotelName = hotelName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Hotel [HotelName=" + HotelName + ", address=" + address
				+ ", telephone=" + telephone + ", rating=" + rating + "]";
	}
	public Hotel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Hotel(String hotelName, String address, String telephone,
			String rating) {
		super();
		HotelName = hotelName;
		this.address = address;
		this.telephone = telephone;
		this.rating = rating;
	}
	
	
	
	
}
