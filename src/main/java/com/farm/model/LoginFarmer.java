package com.farm.model;

public class LoginFarmer {
	// login attributes of farmer
	private String FEmail;
	private String FPassword;
	public String getFEmail() {
		return FEmail;
	}
	//setter and getter
	public void setFEmail(String lEmail) {
		FEmail = lEmail;
	}
	public String getFPassword() {
		return FPassword;
	}
	public void setFPassword(String lPassword) {
		FPassword =MD5.getMd5(lPassword);
	}


}
