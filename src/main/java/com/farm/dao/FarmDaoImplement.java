package com.farm.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.RowMapper;


import org.springframework.jdbc.core.JdbcTemplate;
import com.farm.model.FarmFarmer;
import com.farm.model.LoginFarmer;

public class FarmDaoImplement implements IFarmerDao {
	//template for farmer dao
	JdbcTemplate jdbcTemplate;
	// setter and getter of jdbcTemplate
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	// add farmer to DB
	public int addFarmer(FarmFarmer f) {
		// TODO Auto-generated method stub
		System.out.println("in save data..");
		String query="insert into g3_farm_details values(g3_farm_seq.nextval,'"+f.getFName()+"','"+f.getFEmail()+"',"+f.getFMobile()+",'"+f.getFPassword()+"')";
		return jdbcTemplate.update(query);
	}
// validate farmer credentials
	public FarmFarmer validate(LoginFarmer l) {
		// TODO Auto-generated method stub
		String sql = "select * from g3_farm_details where FEmail='" + l.getFEmail() + "' and FPassword='" + l.getFPassword()
	    + "'";
	   List<FarmFarmer> list=jdbcTemplate.query(sql, new FarmMapper());

	    return list.size() > 0 ? list.get(0) : null;
	    }
	public int fogetUser(LoginFarmer l) {
		// TODO Auto-generated method stub
		String query="update g3_farm_details set FPassword='"+ l.getFPassword()+"' where FEmail='"+l.getFEmail()+"'";
		return jdbcTemplate.update(query);
		
	
	}
}

//rowmapper class for farmer
class FarmMapper implements RowMapper<FarmFarmer> {
	  public FarmFarmer mapRow(ResultSet rs, int arg1) throws SQLException {
	    FarmFarmer farmer = new FarmFarmer();
	    farmer.setFName(rs.getString("FName"));
	    farmer.setFEmail(rs.getString("FEmail"));
	    farmer.setFMobile(rs.getLong("FMobile"));
	    farmer.setFPassword(rs.getString("FPassword"));
	    
	    return farmer;
	  }
	}
