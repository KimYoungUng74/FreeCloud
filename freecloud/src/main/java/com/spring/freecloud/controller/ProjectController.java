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
import com.spring.freecloud.dto.ProjectDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.service.BoardService;
import com.spring.freecloud.service.ProjectService;
import com.spring.freecloud.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProjectController {

	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);

	@Autowired
	ProjectService projectSer;

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
	public ModelAndView projectWrite(Locale local, ProjectDTO dto, HttpServletRequest request) throws Exception {
		
		System.out.println("등록 테스트");
		
		int budget = Integer.parseInt(request.getParameter("PROJECT_BUDGET"));
		int cBudget = Integer.parseInt(request.getParameter("PROOJECT_BUDGET_COORDINATION"));
		String start_date = request.getParameter("PROJECT_START_DATE");
		String end_date = request.getParameter("PROJECT_END_DATE");
		
		java.sql.Date SD = java.sql.Date.valueOf(start_date);
		java.sql.Date ED = java.sql.Date.valueOf(end_date);
		
		dto.setPROJECT_BUDGET(budget);
		dto.setPROJECT_BUDGET_COORDINATION(cBudget);
		dto.setPROJECT_START_DATE(SD);
		dto.setPROJECT_END_DATE(ED);
		
		System.out.println("대분류 " + dto.getPROJECT_MAIN_KETEGORY());
		System.out.println("중분류 " + dto.getPROJECT_MIDDLE_KATEGORY());
		System.out.println("제목 : " + dto.getPROJECT_SUBJECT() );
		System.out.println("내용 : " + dto.getPROJECT_CONTENT());
		System.out.println("근무 형태 : " + dto.getWORKING_KIND());
		System.out.println("근무 위치 : " + dto.getPROJECT_ADDRESS());
		System.out.println("예산 : " + dto.getPROJECT_BUDGET() );
		System.out.println("예산 조율 여부 " + dto.getPROJECT_BUDGET_COORDINATION());
		System.out.println("시작일 : " + dto.getPROJECT_START_DATE() );
		System.out.println("마감일 : " + dto.getPROJECT_END_DATE() );
		
		projectSer.projectWrite(dto);
		
		System.out.println("등록완료");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("projectSearch");
		return mav;
	}
	
	//프리랜서 조회 화면
	@RequestMapping(value = "freelancerSearch.do")
	public String freelancerSearch(Locale locale, Model model) {
		return "freelancerSearch";
	}
	
	// 
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
