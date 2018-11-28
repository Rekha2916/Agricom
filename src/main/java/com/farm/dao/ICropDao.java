package com.farm.dao;

import java.util.List;

import com.farm.model.FarmerCrop;

public interface ICropDao {
	public int saveData(FarmerCrop e);
	public List<FarmerCrop> getCrops();
}
