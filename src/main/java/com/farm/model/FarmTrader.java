package com.farm.model;

public class FarmTrader {
	private int Id;
	private String TName;
	private String TEmail;
	private int TMobile;
	private String TPassword;
	
	 public int getId() {
		return Id;
	}
	public void setId(int tId) {
	Id = tId;
	}
	public FarmTrader()
	 {
		 
	 }
	public String getTName() {
		return TName;
	}
	public void setTName(String tName) {
		TName = tName;
	}
	public String getTEmail() {
		return TEmail;
	}
	public void setTEmail(String tEmail) {
		TEmail = tEmail;
	}
	public int getTMobile() {
		return TMobile;
	}
	public void setTMobile(int tMobile) {
		TMobile = tMobile;
	}
	public String getTPassword() {
		return TPassword;
	}
	public void setTPassword(String tPassword) {
		TPassword = tPassword;
	}
	
	

}
