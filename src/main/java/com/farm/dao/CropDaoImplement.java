package com.farm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

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
	public List<FarmerCrop> getCrops(){    
		return jdbcTemplate.query( "select * from g3_crops order by cId", new ResultSetExtractor<List<FarmerCrop>>(){  
			public List<FarmerCrop> extractData(ResultSet rs) throws SQLException, DataAccessException {    
				List<FarmerCrop> list=new ArrayList<FarmerCrop>();  
				while(rs.next()){  
					FarmerCrop f=new FarmerCrop();
					f.setcId(rs.getInt(1));
					f.setcType(rs.getString(2));
					f.setcName(rs.getString(3));
				
					f.setcQuantity(rs.getInt(5));
				
					f.setcBasePrice(rs.getInt(7));
					f.setcSellPrice(rs.getInt(8));
					list.add(f);  
				}  
				return list;  
			}  
		});
	}

	public List<FarmerCrop> getBidCrops(){    
		return jdbcTemplate.query( "select * from g3_crops where cRequestStatus=0 and rownum=1 order by cId desc", new ResultSetExtractor<List<FarmerCrop>>(){  
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
					f.setcSellPrice(rs.getInt(8));
					f.setcBidStatus(rs.getInt(9));
					f.setcRequestStatus(rs.getInt(10));

					list.add(f);  
				}  
				return list;  
			}  
		});
	}
	public void insertBid(int bidAmount, String cName) {
		String sql="update g3_crops set CSELLPRICE="+bidAmount+" where CNAME='"+cName+"'";
		jdbcTemplate.update(sql);
	}
	
	



}
