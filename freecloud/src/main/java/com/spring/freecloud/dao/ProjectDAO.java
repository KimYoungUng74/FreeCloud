	package com.spring.freecloud.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.spring.freecloud.dto.ProjectDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.util.SHA256;


//[DB연결 사용법] 3. 인터페이스 받아서 클래스 생성
@Repository
public class ProjectDAO {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;

	// 프로젝트 등록
	public void projectWrite(ProjectDTO dto) {
		
		 
		mybatis.insert("BoardMapper.projectWrite", dto);

	}

	// 프로젝트 조회
	public ProjectDTO viewProject(ProjectDTO dto) {
		// TODO Auto-generated method stub
		//return mybatis.selectOne("UserMapper.viewUser", dto);
		
		return null;
	}
	
	// 프로젝트 수정
	public void projectUpdate(ProjectDTO dto) {
		
	}
	
	// 프로젝트 삭제
	public void projectRemove(ProjectDTO dto) {
		
	}

}
