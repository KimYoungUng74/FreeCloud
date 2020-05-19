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
public class UserService{
	
	// 인터페이스로 생성해야함
	@Autowired
	public UserDAO dao;

	// 회원 가입
	public int signupUser(UserDTO dto) {
		try {
			dao.signupUser(dto);		// 회원가입
		} catch (Exception e) {
			return -1;				// 회원가입 실패
		}
		return 1;
	}

	public UserDTO Test() {
		
		return dao.connectTest();
	}
	
}
