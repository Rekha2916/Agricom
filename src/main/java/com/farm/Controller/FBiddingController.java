package com.farm.Controller;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.farm.dao.CropDaoImplement;
import com.farm.dao.FarmDaoImplement;
import com.farm.model.FarmFarmer;
import com.farm.model.FarmerCrop;
import com.farm.model.LoginFarmer;
@Controller
public class FBiddingController {
	@Autowired
	CropDaoImplement cdao;
	@RequestMapping("/placerequest")
	public ModelAndView requestforsell()
	{
		System.out.println("test....");
		return new ModelAndView("PlaceSellRequest");
	}

	@RequestMapping("/SubmitCropRequest")
	public ModelAndView submitRequest(@ModelAttribute FarmerCrop f)
	{
		System.out.println("test....");
		int i=cdao.saveData(f);
		if(i>0)
		{
		return new ModelAndView("FarmerWelcome");
		}
		return new ModelAndView("placesellrequest");
	}
	@RequestMapping("/viewcrophistory")
	public ModelAndView viewCrop()
	{
		System.out.println("test....");
		 List<FarmerCrop> list= new LinkedList<FarmerCrop>();
	        list=cdao.getCrops();  
	        ModelAndView map = new ModelAndView("ViewCrop");
	        map.addObject("crops",list);
	        return map;
	}
	@RequestMapping("/viewmarketplace")
	public ModelAndView viewMarket()
	{
		System.out.println("test....");
		 List<FarmerCrop> list= new LinkedList<FarmerCrop>();
	        list=cdao.getBidCrops();  
	        ModelAndView map = new ModelAndView("ViewMarket");
	        map.addObject("view",list);
	        System.out.println("test");
	        return map;

	}
}
