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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

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
		if (1 == userSer.signupUser(dto)) {
			System.out.println("회원가입 되었음");
		} else {
			System.out.println("회원가입 실패");
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");

		return mav;
	}

	// 아이디 중복 체크
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	public @ResponseBody String AjaxView(@RequestParam("id") String id) {
		String str = "";
		boolean idcheck = userSer.checkId(id);
		if (idcheck) { // 이미 존재하는 계정
			str = "NO";
		} else { // 사용 가능한 계정
			str = "YES";
		}
		return str;
	}

	// 이메일 중복 체크
	@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
	public @ResponseBody String AjaxView2(@RequestParam("email") String email) {
		String str = "";
		boolean emailcheck = userSer.checkEmail(email);
		if (emailcheck) { // 이미 존재하는 계정
			str = "NO";
		} else { // 사용 가능한 계정
			str = "YES";
		}
		return str;
	}

	// 로그인 화면
	@RequestMapping(value = "login.do")
	public String login(Locale locale, Model model) {
		return "login";
	}

	// 로그인 처리
	@RequestMapping(value = "loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserDTO dto, HttpSession sessison, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		boolean result = userSer.loginCheck(dto, sessison);
		ModelAndView mav = new ModelAndView();

		if (result) { // 로그인 성공
			mav.setViewName("home");
			mav.addObject("msg", "success");
			System.out.println("로그인 성공");
		} else { // 로그인 실패
			// login.jsp로 이동
			mav.setViewName("login");
			mav.addObject("msg", "failure");
			System.out.println("로그인 실패");
		}
		return mav;
	}

	// 로그아웃
	@RequestMapping(value = "logout.do")
	public ModelAndView logOut(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		userSer.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg", "logout");
		return mav;
	}

	// 아이디 찾기
	@RequestMapping(value = "/seekId", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String seekid(@RequestParam("name") String name, @RequestParam("email") String email) {
		System.out.println("seekid에 접근함");

		String str = "";
		String idcheck = userSer.seekId(name, email);
		if (idcheck != "") { // 정보가 일치할 경우
			str = "찾으신 아이디는 \'" + idcheck + "\'입니다.";
		} else { // 가입된 회원이 아닐경우
			str = "가입된 정보가 없습니다 입력한 정보를 확인하세요";
		}

		return str;
	}

	// 아이디 찾기
	@RequestMapping(value = "/seekPw", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String seekpw(@RequestParam("id") String id, @RequestParam("name") String name,
			@RequestParam("email") String email) {
		System.out.println("seekpw에 접근함");
		String str = "";
		String pwcheck = userSer.seekPw(id, name, email);
		if (pwcheck == "dbError") { // 정보가 일치할 경우
			str = "DB오류가 발생했습니다 다시 시도해주세요";
		} else if (pwcheck == "notFound") { // 가입된 회원아 아닐경우
			str = "가입된 정보가 없습니다 입력한 정보를 확인하세요";
		} else {
			str = "임시비밀번호 : \'" + pwcheck + " \'로그인시 변경해주세요";
		}

		return str;
	}

	// 마이페이지
	@RequestMapping(value = "mypage.do")
	public String mypage(Locale locale, Model model) {
		return "mypage";
	}

}
