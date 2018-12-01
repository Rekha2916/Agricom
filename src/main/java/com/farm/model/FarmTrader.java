package com.farm.model;

public class FarmTrader {
	// Properties of Trader
	private int Id;
	private String TName;
	private String TEmail;
	private long TMobile;
	private String TPassword;
	// setter and getter
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
	public long getTMobile() {
		return TMobile;
	}
	public void setTMobile(long tMobile) {
		TMobile = tMobile;
	}
	public String getTPassword() {
		return TPassword;
	}
	public void setTPassword(String tPassword) {
		TPassword =MD5.getMd5(tPassword);
	}



}
