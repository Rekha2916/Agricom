package com.farm.Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	@RequestMapping(value="/SignupTrader",method=RequestMethod.POST)
	public ModelAndView register( ) 
	{
		
		return new ModelAndView("SignupTrader");
		
	}
	@RequestMapping(value="/LoginTrader",method=RequestMethod.POST)
	public ModelAndView loginFarmer( ) 
	{
		
		return new ModelAndView("LoginTrader");
		
	}
	@RequestMapping(value="/SubmitTrader", method=RequestMethod.POST)
	public ModelAndView registerFarmer(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmTrader trader ) 
	{
		
		//ModelAndView mv=new ModelAndView();
		//mv.addObject(farmer);
		System.out.println(trader);
		int i=tdao.addTrader(trader);
		if(i>0)
		{
			String str="Registered Successfully";
			return new ModelAndView("index","message",str);
		}
		return new ModelAndView("SignupTrader");
		
	}
	@RequestMapping(value="/SubmitLoginT",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute LoginTrader ltrader) 
	{
		
		FarmTrader farmer = tdao.validate(ltrader);
		String user=farmer.getTEmail();
	    if (null != farmer) {
	    	return new ModelAndView("TraderWelcome","user",user);
	    
	    } 
	    else {
	    	return new ModelAndView("LoginTrader","user",user);
	    }
		
	}

}
