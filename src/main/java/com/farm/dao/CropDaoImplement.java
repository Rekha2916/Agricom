package com.farm.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.farm.model.FarmerCrop;

public class CropDaoImplement {
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int saveData(FarmerCrop e)
	{
		System.out.println("in save data..");
		String query="insert into g3_crops values (crops_seq.nextval,'"+e.getcType()+"','"+e.getcName()+"','"+e.getcFertilizerType()+"','"+e.getcQuantity()+"',default,"+e.getcBasePrice()+",default,default,default)";
		return jdbcTemplate.update(query);
	}

}
