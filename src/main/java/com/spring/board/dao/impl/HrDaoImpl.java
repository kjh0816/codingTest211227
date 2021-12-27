package com.spring.board.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dao.BoardDao;
import com.spring.board.dao.HrDao;
import com.spring.board.vo.BoardVo;
import com.spring.board.vo.ComVo;
import com.spring.board.vo.HrVo;
import com.spring.board.vo.PageVo;

@Repository
public class HrDaoImpl implements HrDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<HrVo> selectHrList() throws Exception {
		
		return sqlSession.selectList("hr.hrList");
		
	}

	@Override
	public HrVo selectHrById(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("hr.hrById", id);
	}

	@Override
	public int updateHr(HrVo hrVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update("hr.updateHr", hrVo);
	}

	@Override
	public int insertyHr(HrVo hrVo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("hr.insertHr", hrVo);
	}
	
	
	
}
