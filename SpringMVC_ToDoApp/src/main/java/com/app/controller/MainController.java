package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.service.IService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController 
{
	@Autowired
	private IService service;
	
	@GetMapping("/")
	public String showHome()
	{
		return "welcome";
	}
	
	@GetMapping("/add")
	public String addTask()
	{
		return "addTask";
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@PostMapping("login")
	public String loginSuccess()
	{
		return "dashboard";
	}
	
	@GetMapping("profileVisit")
	public String profileVisit()
	{
		
		return "profile";
	}
	@GetMapping("/signup")
	public String signup()
	{
		return "signup";
	}
	
//	@PostMapping("/signup")
//	public String checkOut()
//	{
//		return "otpVerification";
//	}
	
	@GetMapping("/forgotPW")
	public String forgotPassword()
	{
		return "forgotPW";
	}
	
//	@PostMapping("verifyOTP")
//	public String verifyOTP(@RequestParam("otp") String enteredOTP,Model model,HttpSession session)
//	{
//		return service.verifyOTP(enteredOTP);
//	}

}
