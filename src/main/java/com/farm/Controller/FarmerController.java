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
@Controller
public class FarmerController {
	@Autowired
	FarmDaoImplement fdao;
	
	@RequestMapping(value="/RegisterFarmer",method=RequestMethod.GET)
	public ModelAndView register( ) 
	{
		
		return new ModelAndView("RegisterFarmer");
		
	}
	@RequestMapping(value="/FarmerWelcome", method=RequestMethod.POST)
	public ModelAndView registerFarmer(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmFarmer farmer ) 
	{
		
		//ModelAndView mv=new ModelAndView();
		//mv.addObject(farmer);
		System.out.println(farmer);
		int i=fdao.addFarmer(farmer);
		if(i>0)
		{
			return new ModelAndView("FarmerWelcome");
		}
		return new ModelAndView("RegisterFarmer");
		
	}
}



