package com.farm.Controller;

//import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.farm.dao.AdminDaoImplement;
import com.farm.dao.CropDaoImplement;
import com.farm.model.AdminLogin;
import com.farm.model.FarmFarmer;
import com.farm.model.FarmTrader;
import com.farm.model.FarmerCrop;

@Controller
public class AdminController {
	@Autowired
	CropDaoImplement cdao;
	@Autowired
	AdminDaoImplement adao;
	PrintWriter out;
	@RequestMapping("/AdminWelcome")				//Admin index page
	public ModelAndView adminIndex(){

		return new ModelAndView("LoginAdmin");
	}
	@RequestMapping("/logoutAdmin")					//Admin Login
	public ModelAndView logout(){

		return new ModelAndView("index");
	}
	@RequestMapping("/SubmitLoginA")					//Admin Login Submit
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
	@RequestMapping("/viewfarmer")					//Admin views farmer list
	public ModelAndView farmerList(){
		List<FarmFarmer> list= new LinkedList<FarmFarmer>();
		list=adao.getFarmers();
		ModelAndView map = new ModelAndView("FarmerList");
		map.addObject("farmers",list);
		return map;
	}
	
	@RequestMapping("/viewtrader")					//Admin views farmer list
	public ModelAndView traderList(){
		List<FarmTrader> list= new LinkedList<FarmTrader>();
		list=adao.getTraders();
		ModelAndView map = new ModelAndView("TraderList");
		map.addObject("traders",list);
		return map;
	}

	@RequestMapping("/viewcropreq")					//Admin views crop request
	public ModelAndView viewCropReq(){
		System.out.println("test....");
		List<FarmerCrop> list= new LinkedList<FarmerCrop>();
		list=cdao.getPendingCrops();  
		if(list.isEmpty()) {
			ModelAndView map = new ModelAndView("Message","message","No pending crops.");
			return map;
		}
		else {
		ModelAndView map = new ModelAndView("AViewCropReq");
		map.addObject("crops",list);
		return map;
		}
	}
	@RequestMapping("/viewcurrentbid")
	public ModelAndView viewCurrentBid()
	{
		System.out.println("test....");
		 List<FarmerCrop> list= new LinkedList<FarmerCrop>();
	        list=cdao.getBidCrops();  
	        ModelAndView map = new ModelAndView("ViewCurrentBid");
	        map.addObject("view",list);
	        System.out.println("test");
	        return map;

	}
	@RequestMapping("/accept/{cId}")
	public ModelAndView adminaccept(HttpServletRequest request, HttpServletResponse response, @PathVariable int cId)
	{
		cdao.adminaccept(cId);
		System.out.println("adminaccept....");
		return new ModelAndView("ACurrentBid");
	}

	@RequestMapping("/closeBid")
	public ModelAndView closeBid(@ModelAttribute FarmCrop crop, HttpServletRequest request, HttpServletResponse response){
		adao.finalizeBid(crop);
		adao.closeBid(crop.getcID());
		return new ModelAndView("AdminWelcome");
	}

	@RequestMapping("/adreject")
	public ModelAndView adminreject(HttpServletRequest request, HttpServletResponse response, @ModelAttribute FarmerCrop e)
	{
		cdao.adminreject(e);
		System.out.println("adminreq....");
		return new ModelAndView("FarmerWelcome");
	}
	
}