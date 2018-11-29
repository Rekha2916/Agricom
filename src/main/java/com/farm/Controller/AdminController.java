package com.farm.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.farm.model.AdminLogin;

@Controller
public class AdminController {
	PrintWriter out;
	@RequestMapping("/AdminWelcome")
	public ModelAndView adminIndex(){

		return new ModelAndView("LoginAdmin");
	}
	@RequestMapping("/logoutAdmin")
	public ModelAndView logout(){

		return new ModelAndView("index");
	}
	@RequestMapping("/SubmitLoginA")
	public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute AdminLogin l){
		String useremail="Admin@agri.co";
		String passwd="Admin123";
		if(l.getAEmail().equals(useremail)){
			if(l.getAPassword().equals(passwd)){
				return new ModelAndView("AdminWelcome");
			}

		}	 
		return new ModelAndView("index");


	}
	@RequestMapping("/ViewFarmer")
	public ModelAndView farmerList(){

		return new ModelAndView("FarmerList");
	}
}
