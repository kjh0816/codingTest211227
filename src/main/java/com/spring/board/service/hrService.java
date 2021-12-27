package com.spring.board.service;

import java.util.HashMap;
import java.util.List;

import com.spring.board.vo.HrVo;
import com.spring.board.vo.UserVo;

public interface hrService {

	List<HrVo> selecHrList() throws Exception;

	HrVo selectHrById(String id) throws Exception;

	int updateHr(HrVo hrVo) throws Exception;



	

}
