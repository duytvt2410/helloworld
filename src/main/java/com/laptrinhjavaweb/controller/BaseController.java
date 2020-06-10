package com.laptrinhjavaweb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.laptrinhjavaweb.utils.LoginFB;

@Controller
public class BaseController {

	@Autowired LoginFB restFB;

	@RequestMapping(value = {"/login" })
	public String login(@RequestParam(required = false) String message, final Model model) {
		if (message != null && !message.isEmpty()) {
			if (message.equals("logout")) {
				model.addAttribute("message", "Logout!");
			}
			if (message.equals("error")) {
				model.addAttribute("message", "Login Failed!");
			}
			if (message.equals("facebook_denied")) {
				model.addAttribute("message", "Login by Facebook Failed!");
			}
		}
		return "login";
	}

	@RequestMapping(value = "/loginfacebook", method = RequestMethod.GET)
	public String loginFacebook(@RequestParam("code") String code, HttpServletRequest request) {
		
		String accessToken = "";
		try {
			accessToken = restFB.getToken(code);
		} catch (IOException e) {
			return "redirect:/login?message=facebook_denied";
		}

		com.restfb.types.User user = restFB.getUserInfo(accessToken);
		UserDetails userDetail = restFB.buildUser(user);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/user";
	}
		

}