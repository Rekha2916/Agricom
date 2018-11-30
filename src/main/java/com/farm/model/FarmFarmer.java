package com.farm.model;

public class FarmFarmer {
	// Properties of farmer
	private int id;
	private String FName;
	private String FEmail;
	private long FMobile;
	private String FPassword;

	//setter and getter
	
	public String getFName() {
		return FName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setFName(String fName) {
		FName = fName;
	}
	public String getFEmail() {
		return FEmail;
	}
	public void setFEmail(String fEmail) {
		FEmail = fEmail;
	}
	public long getFMobile() {
		return FMobile;
	}
	public void setFMobile(long fMobile) {
		FMobile = fMobile;
	}
	public String getFPassword() {
		return FPassword;
	}
	public void setFPassword(String fPassword) {
		FPassword = fPassword;
	}
}
