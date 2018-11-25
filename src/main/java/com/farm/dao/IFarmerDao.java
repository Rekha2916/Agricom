package com.farm.dao;
import com.farm.model.*;
public interface IFarmerDao {
	public int addFarmer(FarmFarmer f);
	public FarmFarmer validate(LoginFarmer l);

}
