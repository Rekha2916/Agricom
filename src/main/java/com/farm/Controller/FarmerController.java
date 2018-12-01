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
import com.farm.model.FarmFarmer;
import com.farm.model.LoginFarmer;
@Controller							//annotation
public class FarmerController {
	@Autowired
	FarmDaoImplement fdao;					//object of farmer dao

	//signup mapping 
	@RequestMapping(value="/SignupFarmer",method=RequestMethod.POST)
	public ModelAndView register( ) 
	{

		return new ModelAndView("SignupFarmer");

	}

	//login mapping
	@RequestMapping("/login")
	public ModelAndView login( ) 
	{

		return new ModelAndView("LoginFarmer");

	}
	//back button mapping
	@RequestMapping("/back")
	public ModelAndView back( ) 
	{

		return new ModelAndView("FarmerWelcome");

	}
	//loginbutton action mapping
	@RequestMapping(value="/LoginFarmer",method=RequestMethod.POST)
	public ModelAndView loginFarmer( ) 
	{

		return new ModelAndView("LoginFarmer");

	}
	//loginsubmit action mapping
	@RequestMapping(value="/SubmitLoginF",method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @ModelAttribute LoginFarmer lfarmer) 
	{

		FarmFarmer farmer = fdao.validate(lfarmer);
		String user=farmer.getFEmail();
		HttpSession session=request.getSession();  //session created for farmer user
		session.setAttribute("user", user);

		if (null != farmer) {
			return new ModelAndView("FarmerWelcome");    //redirect to farmer welcome page

		} else {
			return new ModelAndView("LoginFarmer");
		}

	}
	//addfarmer after signup to db
	@RequestMapping(value="/SubmitFarmer", method=RequestMethod.POST)
	public ModelAndView registerFarmer(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmFarmer farmer ) 
	{
		System.out.println(farmer);
		int i=fdao.addFarmer(farmer);
		if(i>0)
		{
			return new ModelAndView("index");
		}
		return new ModelAndView("SignupFarmer");

	}

	@RequestMapping("/RegisterF")
	public ModelAndView signup( ) 
	{

		return new ModelAndView("SignupFarmer");

	}
	@RequestMapping("/forgotPswd")
	public ModelAndView forgotpswd( ) 
	{

		return new ModelAndView("ForgotPassword");

	}
	@RequestMapping(value = "/forgotProcess", method = RequestMethod.POST)
	public ModelAndView ForgetProcess(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("login") LoginFarmer l) {
		ModelAndView mav = null;
		int user =fdao.fogetUser(l);
			mav = new ModelAndView("LoginFarmer");
						
			return mav;
		
	}
	
	
}



