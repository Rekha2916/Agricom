package com.farm.dao;

import java.util.List;

import com.farm.model.FarmerCrop;
// interface for crop
public interface ICropDao {
	public int saveData(FarmerCrop e);
	public List<FarmerCrop> getCrops();
	public List<FarmerCrop> getBidCrops();
	public void insertBid(int bidAmount, String cName);
	public int adminrequest(FarmerCrop e);
	public int adminaccept(FarmerCrop e);
	public int adminreject(FarmerCrop e);
	public List<FarmerCrop> getRows();
}
