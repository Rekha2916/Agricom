package com.farm.model;

public class LoginTrader {
	//login attributes of Trader
	private String TEmail;
	private String TPassword;
	// default constructor
	public LoginTrader()
	{

	}
	// setter and getter
	public String getTEmail() {
		return TEmail;
	}

	public void setTEmail(String tEmail) {
		TEmail = tEmail;
	}

	public String getTPassword() {
		return TPassword;
	}

	public void setTPassword(String tPassword) {
		TPassword = MD5.getMd5(tPassword);
	}

}
