package com.farm.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.farm.model.FarmFarmer;
import com.farm.model.FarmerCrop;

public class AdminDaoImplement {
	
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int adminrequest(FarmerCrop e)
	{
		System.out.println("in save data..");
		String query="select * from g3_crops where cRequestStatus=1";
		return jdbcTemplate.update(query);
	}
	public int adminaccept(FarmerCrop e)
	{
		System.out.println("in admin accept status..");
		String query="update g3_crops set cRequestStatus=1 where cId='"+e.getcId()+ "'";
		return jdbcTemplate.update(query);
	}
	public int adminreject(FarmerCrop e)
	{
		System.out.println("in admin reject status..");
		String query="update g3_crops set cRequestStatus=2 where cId='"+e.getcId()+"'";
		return jdbcTemplate.update(query);
	}
	public List<FarmerCrop> getRows(){    
		return jdbcTemplate.query( "select * from g3_crops where cRequestStatus=1", new ResultSetExtractor<List<FarmerCrop>>(){  
			public List<FarmerCrop> extractData(ResultSet rs) throws SQLException, DataAccessException {    
				List<FarmerCrop> list=new ArrayList<FarmerCrop>();  
				while(rs.next()){  
					FarmerCrop f=new FarmerCrop();
					f.setcId(rs.getInt(1));
					f.setcType(rs.getString(2));
					f.setcName(rs.getString(3));
					f.setcFertilizerType(rs.getString(4));
					f.setcQuantity(rs.getInt(5));
					f.setcStatus(rs.getInt(6));
					f.setcBasePrice(rs.getInt(7));
					f.setcBidStatus(rs.getInt(8));
					f.setcRequestStatus(rs.getInt(9));

					list.add(f);  
				}  
				return list;  
			}  
		});
	}
	public List<FarmFarmer> getFarmers(){    
		return jdbcTemplate.query( "select * from g3_farm_details ", new ResultSetExtractor<List<FarmFarmer>>(){  
			public List<FarmFarmer> extractData(ResultSet rs) throws SQLException, DataAccessException {    
				List<FarmFarmer> list=new ArrayList<FarmFarmer>();  
				while(rs.next()){  
					FarmFarmer f=new FarmFarmer();
					f.setId(rs.getInt(1));
					f.setFName(rs.getString(2));;
					f.setFEmail(rs.getString(3));;
					f.setFMobile(rs.getLong(4));;
				
					list.add(f);  
				}  
				return list;  
			}  
		});
	}
	
}
