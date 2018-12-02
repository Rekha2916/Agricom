package com.farm.Controller;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.farm.dao.CropDaoImplement;
import com.farm.dao.FarmDaoImplement;
import com.farm.model.FarmFarmer;
import com.farm.model.FarmerCrop;
import com.farm.model.LoginFarmer;
@Controller										//annotation for declaring class work as controller
public class TBiddingController {
	//dao object for crop
	@Autowired
	CropDaoImplement cdao;  
	//mapping for placing current bid
	@RequestMapping("/placeBid")
	public ModelAndView placeBid()
	{
		System.out.println("test....");
		List<FarmerCrop> list= new LinkedList<FarmerCrop>();
        list=cdao.getBidCrops();  
        ModelAndView map = new ModelAndView("CurrentBid");
        map.addObject("view",list);
        System.out.println("test");
        return map;
	}
	//mapping for bidd submit
	@RequestMapping("/submitBid")
	public ModelAndView updateBid(HttpServletRequest request, HttpServletResponse response) {
		int bidAmount=Integer.parseInt(request.getParameter("bidAmount"));
		String cID=Integer.parseInt(request.getParameter("cID"));
		cdao.insertBid(bidAmount, cID);
		return new ModelAndView("redirect:/placeBid");
	}
	//mapping for result after bid
	@RequestMapping("bidResult")
	public ModelAndView bidResult(){
		List<FarmerCrop> list= new LinkedList<FarmerCrop>();
        list=cdao.getBidCrops();  
        ModelAndView map = new ModelAndView("BidResult");
        map.addObject("view",list);
        System.out.println("test");
        return map;
	}

}
