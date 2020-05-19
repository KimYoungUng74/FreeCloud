package com.spring.freecloud.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.util.SHA256;


//[DB연결 사용법] 3. 인터페이스 받아서 클래스 생성
@Repository
public class UserDAO {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;

	
	public void signupUser(UserDTO dto) {
		
		  // TODO Auto-generated method stub // 비밀 번호 암호화
		  dto.setUSER_PW(SHA256.getSHA256(dto.getUSER_PW()));
		  mybatis.insert("UserMapper.Signup", dto);
		 
		
	}


	public UserDTO connectTest() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserMapper.Test");
	}
}
