package com.spring.board.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.BoardDao;
import com.spring.board.dao.HrDao;
import com.spring.board.dao.UserDao;
import com.spring.board.service.hrService;
import com.spring.board.service.userService;
import com.spring.board.vo.BoardVo;
import com.spring.board.vo.HrVo;
import com.spring.board.vo.UserVo;

@Service
public class hrServiceImpl implements hrService{
	
	@Autowired
	HrDao hrDao;

	@Override
	public List<HrVo> selecHrList() throws Exception {
		return hrDao.selectHrList();
	}

	@Override
	public HrVo selectHrById(String id) throws Exception {
		// TODO Auto-generated method stub
		return hrDao.selectHrById(id);
	}

	@Override
	public int updateHr(HrVo hrVo) throws Exception {
		// TODO Auto-generated method stub
		return hrDao.updateHr(hrVo);
	}

	@Override
	public int insertHr(HrVo hrVo) throws Exception {
		// TODO Auto-generated method stub
		return hrDao.insertyHr(hrVo);
	}
	
	
	

}
