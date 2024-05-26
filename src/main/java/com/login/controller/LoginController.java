package com.login.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.login.entity.User;
import com.login.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(path = "/home")
	public String login(Model m) {
		return "index";
	}
	
	@RequestMapping(path = "/login", method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute User user, Model m) {
		boolean result = userService.verifyUser(user);
		if(result) {
			return "success";
		}
		return "index";
	}
	
	@RequestMapping(path = "/register", method = RequestMethod.POST)
	public String handleRegister(@ModelAttribute User user, Model m) {
		System.out.println(user);
		boolean result = userService.insert(user);
		if(result) {
			return "success";
		}
		return "index";
	}
	
}
