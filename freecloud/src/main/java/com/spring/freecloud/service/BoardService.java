package com.spring.freecloud.service;

import java.sql.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import com.spring.freecloud.dao.BoardDAO;
import com.spring.freecloud.dao.UserDAO;
import com.spring.freecloud.dto.BoardDTO;
import com.spring.freecloud.dto.UserDTO;

@Service("IBoardService")
public class BoardService {

	// 인터페이스로 생성해야함
	@Autowired
	public BoardDAO dao;

	// 게시글 등록
	public int projectWrite(BoardDTO dto) {
		try {
			dao.projectWrite(dto); // 게시글 등록
		} catch (Exception e) {
			return -1; // 게시글 등록 실패
		}
		return 1;
	}
	
	// 게시글 조회
	private BoardDTO viewProject(BoardDTO dto) {
		// TODO Auto-generated method stub
		
		return dao.viewProject(dto);
	}

	// 게시글 수정
	private int projectUpdate() {
		
		return 0;
	}
	
	// 게시글 삭제
	private int projcetRemove() {
		
		return 0;
	}

}
