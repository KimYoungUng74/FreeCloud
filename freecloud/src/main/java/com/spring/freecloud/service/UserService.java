package com.spring.freecloud.service;

import java.sql.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import com.spring.freecloud.dao.UserDAO;
import com.spring.freecloud.dto.UserDTO;

@Service("IUserService")
public class UserService {

	// 인터페이스로 생성해야함
	@Autowired
	public UserDAO dao;

	// 회원 가입
	public int signupUser(UserDTO dto) {
		try {
			dao.signupUser(dto); // 회원가입
		} catch (Exception e) {
			return -1; // 회원가입 실패
		}
		return 1;
	}
	// 회원 로그인 체크
	public boolean loginCheck(UserDTO dto, HttpSession session) {
		boolean result = dao.loginCheck(dto);
		if (result) { // true일 경우 세션에 등록
			UserDTO dto2 = viewUser(dto); // 회원 정보 조회
			// 세션 변수 등록
			session.setAttribute("userId", dto2.getUSER_ID());
			session.setAttribute("userName", dto2.getUSER_NAME());
			session.setAttribute("userEmail", dto2.getUSER_EMAIL());
			session.setAttribute("userinfo", dto2.getFREELANCER_ABOUT_ME());
		}
		return result;
	}

	// 회원 정보 조회
	private UserDTO viewUser(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.viewUser(dto);
	}

	// 회원 로그아웃
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
		// session.removeAttribute("userId");
		// 세션 정보를 초기화 시킴
		session.invalidate();
	}

	public UserDTO Test() {

		return dao.connectTest();
	}
	public boolean checkId(String id){
		// TODO Auto-generated method stub
		return dao.checkId(id);
	}

}
