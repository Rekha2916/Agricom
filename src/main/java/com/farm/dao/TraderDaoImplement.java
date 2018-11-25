package com.farm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.farm.model.FarmFarmer;
import com.farm.model.FarmTrader;
import com.farm.model.LoginTrader;
public class TraderDaoImplement implements ITraderDao{
	JdbcTemplate jdbcTemplate;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int addTrader(FarmTrader t) {
		// TODO Auto-generated method stub
		System.out.println("in save data..");
		String query="insert into g3_trad_details values(g3_trad_seq.nextval,'"+t.getTName()+"','"+t.getTEmail()+"',"+t.getTMobile()+",'"+t.getTPassword()+"')";
		return jdbcTemplate.update(query);
	}
	public FarmTrader validate(LoginTrader l) {
		// TODO Auto-generated method stub
		String sql = "select * from g3_trad_details where TEmail='" + l.getTEmail() + "' and TPassword='" + l.getTPassword()
	    + "'";
	   List<FarmTrader> list=jdbcTemplate.query(sql, new TradMapper());

	    return list.size() > 0 ? list.get(0) : null;
	    }
}
class TradMapper implements RowMapper<FarmTrader> {
	  public FarmTrader mapRow(ResultSet rs, int arg1) throws SQLException {
	    FarmTrader trader = new FarmTrader();
	    trader.setTName(rs.getString("TName"));
	    trader.setTEmail(rs.getString("TEmail"));
	    trader.setTMobile(rs.getInt("TMobile"));
	    trader.setTPassword(rs.getString("TPassword"));
	    
	    return trader;
	  }
	}
