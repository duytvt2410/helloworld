package com.laptrinhjavaweb.controller.admin;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "ControllerOfAdmin")
public class HomeController {

	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView homePage() {

		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}

	@RequestMapping(value = "/ajax/notification", method = RequestMethod.GET)
	public ModelAndView notificationPage(@RequestParam Map<String, String> params) {

		ModelAndView mav = new ModelAndView("ajax/notification");
		mav.addAllObjects(params);
		return mav;
	}
}
