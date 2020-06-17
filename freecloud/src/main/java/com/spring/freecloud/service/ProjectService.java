package com.spring.freecloud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.freecloud.dao.ProjectDAO;
import com.spring.freecloud.dto.ProjectDTO;

@Service("IProjectService")
public class ProjectService {

	// 인터페이스로 생성해야함
	@Autowired
	public ProjectDAO dao;

	// 게시글 등록
	public void projectWrite(ProjectDTO dto) {
		dao.projectWrite(dto); // 게시글 등록

	}
	
	// 게시글 조회
	private ProjectDTO viewProject(ProjectDTO dto) {
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
