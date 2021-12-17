package com.spring.board.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.BoardDao;
import com.spring.board.dao.UserDao;
import com.spring.board.service.userService;
import com.spring.board.vo.BoardVo;
import com.spring.board.vo.UserVo;

@Service
public class userServiceImpl implements userService{
	
	@Autowired
	UserDao userDao;
	
	@Override
	public int userInsert(UserVo userVo) throws Exception {
		// TODO Auto-generated method stub
		return userDao.userInsert(userVo);
	}
	

}
