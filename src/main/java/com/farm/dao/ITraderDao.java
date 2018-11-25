package com.farm.dao;
import com.farm.model.*;
public interface ITraderDao {
	public int addTrader(FarmTrader t);
	public FarmTrader validate(LoginTrader l);

}
