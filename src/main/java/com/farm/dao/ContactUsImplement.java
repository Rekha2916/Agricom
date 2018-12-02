package com.farm.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import com.farm.model.ContactUs;

public class ContactUsImplement  implements IContactUs{
	JdbcTemplate jdbcTemplate;
	// setter and getter of jdbcTemplate
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public int saveContatMsg(ContactUs c) {
		System.out.println("in save data..");
		String query="insert into g3_Contact_US values(g3_contact_seq.nextval,'"+c.getFName()+"','"+c.getLName()+"',"+c.getEmail()+",'"+c.getMessage()+"')";
		return jdbcTemplate.update(query);
	}

}
