package com.spring.board.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.board.vo.BoardVo;
import com.spring.board.vo.HrVo;
import com.spring.board.vo.UserVo;

public interface HrDao {

	List<HrVo> selectHrList() throws Exception;

	HrVo selectHrById(String id) throws Exception;

	int updateHr(HrVo hrVo) throws Exception;

	int insertyHr(HrVo hrVo) throws Exception;
	


	

}
