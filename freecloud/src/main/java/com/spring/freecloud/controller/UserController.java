package com.spring.freecloud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userSer;
	
	// 회원가입 화면
		@RequestMapping(value = "signup.do")
		public String signup(Locale locale, Model model) {
			return "signup";
		}
		
	// 회원 가입 처리
		@RequestMapping(value = "signupOk.do", method = RequestMethod.POST)
		public ModelAndView signupOk(Locale locale, UserDTO dto) {
			System.out.println("userName : " + dto.getUSER_NAME());
			if(1==userSer.signupUser(dto)) {
				System.out.println("회원가입 되었음");
			} else {
				System.out.println("회원가입 실패");
			}
			
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("home");
			
			return mav;
		}
	
}
