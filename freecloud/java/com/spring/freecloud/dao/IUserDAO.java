package com.spring.freecloud.dao;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import com.spring.freecloud.dto.UserDTO;

// [DB연결 사용법] 2. Dao인터페이스 생성
public interface IUserDAO {
	
	// 회원 가입
	public void signupUser (UserDTO dto);	// 사용할 추상메소드 정의
	
	// 디비연결 테스트
	public UserDTO connectTest();
}
