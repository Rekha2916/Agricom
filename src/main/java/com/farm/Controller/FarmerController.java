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
import com.farm.model.FarmFarmer;
import com.farm.model.LoginFarmer;
@Controller
public class FarmerController {
	@Autowired
	FarmDaoImplement fdao;
	
	@RequestMapping(value="/SignupFarmer",method=RequestMethod.POST)
	public ModelAndView register( ) 
	{
		
		return new ModelAndView("SignupFarmer");
		
	}
	@RequestMapping(value="/LoginFarmer",method=RequestMethod.POST)
	public ModelAndView loginFarmer( ) 
	{
		
		return new ModelAndView("LoginFarmer");
		
	}
	@RequestMapping(value="/SubmitLoginF",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute LoginFarmer lfarmer) 
	{
		
		FarmFarmer farmer = fdao.validate(lfarmer);
		String user=farmer.getFEmail();
	    if (null != farmer) {
	    	return new ModelAndView("FarmerWelcome","user",user);
	    
	    } else {
	    	return new ModelAndView("LoginFarmer","user",user);
	    }
		
	}
	@RequestMapping(value="/SubmitFarmer", method=RequestMethod.POST)
	public ModelAndView registerFarmer(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmFarmer farmer ) 
	{
		
		//ModelAndView mv=new ModelAndView();
		//mv.addObject(farmer);
		System.out.println(farmer);
		int i=fdao.addFarmer(farmer);
		if(i>0)
		{
			String str="Registered Successfully";
			return new ModelAndView("index","message",str);
		}
		return new ModelAndView("RegisterFarmer");
		
	}
}



