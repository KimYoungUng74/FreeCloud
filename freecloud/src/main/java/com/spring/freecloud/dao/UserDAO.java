package com.spring.freecloud.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.freecloud.dto.PortfolioDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.util.SHA256;

//[DB연결 사용법] 3. 인터페이스 받아서 클래스 생성
@Repository
public class UserDAO {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;

	// 회원가입
	public void signupUser(UserDTO dto) {

		// TODO Auto-generated method stub // 비밀 번호 암호화
		dto.setUSER_PW(SHA256.getSHA256(dto.getUSER_PW()));
		mybatis.insert("UserMapper.signup", dto);

	}

	// 중복아이디 체크
	public boolean checkId(UserDTO dto) {
		String id = mybatis.selectOne("UserMapper.idCheck", dto);
		return (null == id) ? false : true;
	}

	// 중복이메일 체크
	public boolean checkEmail(UserDTO dto) {
		String email = mybatis.selectOne("UserMapper.emailCheck", dto);
		return (null == email) ? false : true;
	}

	// 로그인 처리
	public boolean loginCheck(UserDTO dto) {
		dto.setUSER_PW(SHA256.getSHA256(dto.getUSER_PW()));
		String name = mybatis.selectOne("UserMapper.loginCheck", dto);
		return (null == name) ? false : true;
	}

	// 회원 정보 조회
	public UserDTO viewUser(UserDTO dto) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserMapper.viewUser", dto);
	}

	// 아이디 찾기
	public String seekId(UserDTO dto) {
		String id = mybatis.selectOne("UserMapper.seekId", dto);
		return (null==id) ? "" : id;
	}
	// 비밀번호 찾기
	public String seekPw(UserDTO dto) {
		String id = mybatis.selectOne("UserMapper.seekPw", dto);
		if(null == id) {
			return "notFound";	// 정보가 일치 하지 않을 때
		} else {
			String pw = randomPw1()+randomPw2()+randomPw1()+randomPw2();			
			dto.setUSER_PW(pw);
			dto.setUSER_PW(SHA256.getSHA256(dto.getUSER_PW()));
			if(0==mybatis.update("UserMapper.seekPw2", dto)) {
				return "dbError";	// DB오류
			} else {
				return pw; // 성공
			}	
		}
	}
	
	// 랜덤 문자 생성
	public String randomPw1() {
		String rand = "";
		double dValue = Math.random();
	    char cValue = (char)((dValue * 26) + 65);	// 대문자
	    rand += cValue;
	    dValue = Math.random();
	    cValue = (char)((dValue * 26) + 97); // 소문자
	    rand += cValue;
		return rand;
	}
	// 랜덤 숫자 생성
	public int randomPw2() {
		double dValue = Math.random();

	    int iValue = (int)(dValue * 10) + 1; //1~10
	    
	    return iValue;
	}

	public void changeProfile(UserDTO dto) {
		mybatis.update("UserMapper.profileChange", dto);
	}

	public void addPortfolio(PortfolioDTO dto) {
		mybatis.insert("UserMapper.portfolioAdd", dto);
	}

	public void deletePortfolio(PortfolioDTO dto) {
		mybatis.delete("UserMapper.deletePortfolio", dto);
	}
}
