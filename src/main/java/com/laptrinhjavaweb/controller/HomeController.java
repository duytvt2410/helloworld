package com.laptrinhjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView getHome() {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("home");
    	return mav;
    }
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView getLogin() {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("login");
    	return mav;
    }
}