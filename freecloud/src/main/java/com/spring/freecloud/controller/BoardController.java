package com.spring.freecloud.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.freecloud.dto.BoardDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.service.BoardService;
import com.spring.freecloud.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService boardSer;

	// 프로젝트 등록 화면
	@RequestMapping(value = "projectReg.do")
	public String projectReg(Locale locale, Model model) {
		return "projectReg";
	}
	
	// 프로젝트 조회 화면
	@RequestMapping(value = "projectSearch.do")
	public String projectSearch(Locale locale, Model model) {
		return "projectSearch";
	}
	
	// 프로젝트 등록 처리
	@RequestMapping(value = "projectRegOk.do", method = RequestMethod.POST)
	public String projectWrite(BoardDTO boardDTO) throws Exception {
		
		System.out.println("등록 테스트");
		boardSer.projectWrite(boardDTO);
		
		System.out.println("등록완료");
		return "projectSearch";
	}
	/*
	 * // 회원 가입 처리
	 * 
	 * @RequestMapping(value = "signupOk.do", method = RequestMethod.POST) public
	 * ModelAndView signupOk(Locale locale, UserDTO dto) {
	 * System.out.println("userName : " + dto.getUSER_NAME()); if (1 ==
	 * userSer.signupUser(dto)) { System.out.println("회원가입 되었음"); } else {
	 * System.out.println("회원가입 실패"); } ModelAndView mav = new ModelAndView();
	 * mav.setViewName("home");
	 * 
	 * return mav; }
	 * 
	 * // 로그인 처리
	 * 
	 * @RequestMapping(value = "loginCheck.do") public ModelAndView
	 * loginCheck(@ModelAttribute UserDTO dto, HttpSession sessison,
	 * HttpServletRequest request, HttpServletResponse response) throws Exception {
	 * boolean result = userSer.loginCheck(dto, sessison); ModelAndView mav = new
	 * ModelAndView();
	 * 
	 * if (result) { // 로그인 성공 mav.addObject("dto", dto); mav.setViewName("home");
	 * mav.addObject("msg", "success"); System.out.println("로그인 성공"); } else { //
	 * 로그인 실패 // login.jsp로 이동 mav.setViewName("login"); mav.addObject("msg",
	 * "failure"); System.out.println("로그인 실패"); } return mav; }
	 */

}