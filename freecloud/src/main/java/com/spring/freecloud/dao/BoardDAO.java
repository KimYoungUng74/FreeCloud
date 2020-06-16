	package com.spring.freecloud.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.freecloud.dto.BoardDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.util.SHA256;


//[DB연결 사용법] 3. 인터페이스 받아서 클래스 생성
@Repository
public class BoardDAO {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;

	// 게시글 등록
	public void projectWrite(BoardDTO dto) {
		
		  //mybatis.insert("UserMapper.Signup", dto);
		mybatis.insert("BoardMapper.projectWrite", dto);

	}

	// 게시글 조회
	public BoardDTO viewProject(BoardDTO dto) {
		// TODO Auto-generated method stub
		//return mybatis.selectOne("UserMapper.viewUser", dto);
		
		return null;
	}
	
	// 게시글 수정
	public void projectUpdate(BoardDTO dto) {
		
	}
	
	// 게시글 삭제
	public void projectRemove(BoardDTO dto) {
		
	}


	public UserDTO connectTest() {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserMapper.Test");
	}
}
