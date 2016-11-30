package com.psl.beans;

import org.springframework.stereotype.Component;

@Component
public class Hotel {

	private int HotelId;
	private String HotelName;
	private String address;
	private String city;
	private String state;
	private String telephone;
	private String rating;
	private String longitude;
	private String latitude;

	public Hotel() {
		super();
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getHotelId() {
		return HotelId;
	}

	public void setHotelId(int hotelId) {
		HotelId = hotelId;
	}

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
		return "Hotel [HotelId=" + HotelId + ", HotelName=" + HotelName
				+ ", address=" + address + ", city=" + city + ", state="
				+ state + ", telephone=" + telephone + ", rating=" + rating
				+ ", longitude=" + longitude + ", latitude=" + latitude + "]";
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public Hotel(int hotelId, String hotelName, String address, String city,
			String state, String telephone, String rating, String longitude,
			String latitude) {
		super();
		HotelId = hotelId;
		HotelName = hotelName;
		this.address = address;
		this.city = city;
		this.state = state;
		this.telephone = telephone;
		this.rating = rating;
		this.longitude = longitude;
		this.latitude = latitude;
	}

}
