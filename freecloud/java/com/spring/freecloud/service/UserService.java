package com.spring.freecloud.service;

import java.sql.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import com.spring.freecloud.dao.IUserDAO;
import com.spring.freecloud.dto.UserDTO;

@Service("IUserService")
public class UserService implements IUserService {
	
	// 인터페이스로 생성해야함
	@Autowired
	public IUserDAO dao;

	// 회원 가입
	@Override
	public void signupUser(UserDTO dto) {
		dao.signupUser(dto);
	}

	@Override
	public UserDTO Test() {
		
		return dao.connectTest();
	}
	
}
