package com.farm.Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.farm.dao.FarmDaoImplement;
import com.farm.dao.TraderDaoImplement;
import com.farm.model.FarmFarmer;
import com.farm.model.FarmTrader;
import com.farm.model.LoginFarmer;
import com.farm.model.LoginTrader;
@Controller
public class TraderController {
	@Autowired
	TraderDaoImplement tdao;
	// mapping for signup form 
	@RequestMapping(value="/SignupTrader",method=RequestMethod.POST)
	public ModelAndView register( ) 
	{
		
		return new ModelAndView("SignupTrader");
		
	}
	@RequestMapping("/loginT")
	public ModelAndView login( ) 
	{

		return new ModelAndView("LoginTrader");

	}
	// mapping for login form
	@RequestMapping(value="/LoginTrader",method=RequestMethod.POST)
	public ModelAndView loginTrader( ) 
	{
		
		return new ModelAndView("LoginTrader");
		
	}
	// mapping for signup submit
	@RequestMapping(value="/SubmitTrader", method=RequestMethod.POST)
	public ModelAndView registerFarmer(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmTrader trader ) 
	{
		
		//ModelAndView mv=new ModelAndView();
		//mv.addObject(farmer);
		System.out.println(trader);
		int i=tdao.addTrader(trader);
		if(i>0)
		{
		
			return new ModelAndView("index");
		}
		return new ModelAndView("SignupTrader");
		
	}
	// mapping  for submit login
	@RequestMapping(value="/SubmitLoginT",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute LoginTrader ltrader) 
	{
		
		FarmTrader farmer = tdao.validate(ltrader);
		String user=farmer.getTEmail();
		HttpSession session=request.getSession();
		session.setAttribute("tuser", user);
	    if (null != farmer) {
	    	return new ModelAndView("TraderWelcome","user",user);
	    
	    } 
	    else {
	    	return new ModelAndView("LoginTrader","user",user);
	    }
		
	}
	@RequestMapping("/RegisterT")
	public ModelAndView signup( ) 
	{

		return new ModelAndView("SignupTrader");

	}

}
