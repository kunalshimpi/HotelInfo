package com.psl.beans;

public class User {

	private String firstName;
	private String lastName;
	private String userId;
	private String country;
	private String emailId;
	private String password;

	public User() {
		super();
	}


	public User(String firstName, String lastName, String userId,
			String country, String emailId, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userId = userId;
		this.country = country;
		this.emailId = emailId;
		this.password = password;
	}


	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName
				+ ", userId=" + userId + ", country=" + country + ", emailId="
				+ emailId + "]";
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

}
