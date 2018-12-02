package com.farm.dao;

import java.util.List;

import com.farm.model.ContactUs;
import com.farm.model.FarmFarmer;
import com.farm.model.FarmTrader;
import com.farm.model.FarmerCrop;

public interface IAdminDao {
	public int adminrequest(FarmerCrop e);
	public int adminaccept(FarmerCrop e);
	public int adminreject(FarmerCrop e);
	public List<FarmerCrop> getRows();
	public List<FarmFarmer> getFarmers();
	public List<FarmTrader> getTraders();
	public List<ContactUs> getMessages();
	
}
