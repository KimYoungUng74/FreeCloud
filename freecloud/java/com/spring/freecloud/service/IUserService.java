package com.spring.freecloud.service;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import com.spring.freecloud.dto.UserDTO;

// [DB연결 사용법] 5. 서비스 인터페이스 작성
public interface IUserService {
	
	// 회원 가입
	public void signupUser( UserDTO dto);
	
	// 테스트 
	public UserDTO Test();
}

