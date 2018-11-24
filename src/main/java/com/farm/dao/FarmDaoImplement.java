package com.farm.dao;
import org.springframework.jdbc.core.JdbcTemplate;
import com.farm.model.FarmFarmer;

public class FarmDaoImplement implements IFarmerDao {
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public int addFarmer(FarmFarmer f) {
		// TODO Auto-generated method stub
		System.out.println("in save data..");
		//String query="insert into g3_farm_details values('"+f.getFName()+"','"+f.getFEmail()+"',"+f.getFContact()+",'"+f.getFPassword()+"')";
		String query="insert into g3_farm_details values('"+f.getFName()+"','"+f.getFEmail()+"',"+f.getFContact()+",'"+f.getFPassword()+"')";
		return jdbcTemplate.update(query);
	}
}
