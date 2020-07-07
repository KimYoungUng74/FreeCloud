package com.spring.freecloud.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.freecloud.dto.ProjectJoinDTO;
import com.spring.freecloud.dto.ProjectDTO;
import com.spring.freecloud.dto.UserDTO;
import com.spring.freecloud.util.PagingDTO;
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

	public String getImage(String USER_ID) {
		return mybatis.selectOne("BoardMapper.getImage", USER_ID);
	}
	
	// 프로젝트 참여
	public void projectJoin(ProjectJoinDTO dto) {

		mybatis.insert("BoardMapper.projectJoin", dto);
	}

	// 프로젝트 목록 조회
	public List<ProjectDTO> listAll() {
		// TODO Auto-generated method stub
		// return mybatis.selectOne("UserMapper.viewUser", dto);

		return mybatis.selectList("BoardMapper.projectListAll");
	}

	// 프로젝트 조회
	public ProjectDTO projectRead(int PROJECT_IDX) {
		return mybatis.selectOne("BoardMapper.projectView", PROJECT_IDX);
	}

	// 게시글 총 갯수

	public int countBoard() {
		return mybatis.selectOne("BoardMapper.countBoard");
	}

	// 페이징 처리 게시글 조회

	public List<ProjectDTO> selectProject(PagingDTO dto) {
		return mybatis.selectList("BoardMapper.selectBoard", dto);
	}

	// 프로젝트 수정
	public void projectUpdate(ProjectDTO dto) {

	}

	// 프로젝트 삭제
	public void projectRemove(ProjectDTO dto) {

	}

}
