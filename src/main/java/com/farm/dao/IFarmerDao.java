package com.farm.dao;
import com.farm.model.*;
// interface for farmer
public interface IFarmerDao {
	public int addFarmer(FarmFarmer f);
	public FarmFarmer validate(LoginFarmer l);
	int fogetUser(LoginFarmer l);

}
