package com.farm.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.farm.model.FarmFarmer;
import com.farm.model.FarmTrader;
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
	public void finalizeBid(FarmerCrop e){
		String sql="update g3_bidding set bidStatus = 1 where bID="+e.getcId();
		jdbcTemplate.update();
	}
	public void closeBid(int id){
		String sql="select cSellPrice from g3_bidding where cID="+i;
		int cSellPrice = jdbcTemplate.query(sql);
		String sql="update g3_crops set cSellPrice = "+cSellPrice+", cstatus = 1 where cID = "+id;
		jdbcTemplate.update(sql);
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
	
	public List<FarmTrader> getTraders(){    
		return jdbcTemplate.query( "select * from g3_trad_details ", new ResultSetExtractor<List<FarmTrader>>(){  
			public List<FarmTrader> extractData(ResultSet rs) throws SQLException, DataAccessException {    
				List<FarmTrader> list=new ArrayList<FarmTrader>();  
				while(rs.next()){  
					FarmTrader f=new FarmTrader();
					f.setId(rs.getInt(1));
					f.setTName(rs.getString(2));;
					f.setTEmail(rs.getString(3));;
					f.setTMobile(rs.getLong(4));;
				
					list.add(f);  
				}  
				return list;  
			}  
		});
	}
	
}
