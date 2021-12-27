package com.spring.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.HomeController;
import com.spring.board.service.hrService;
import com.spring.board.vo.ComVo;
import com.spring.board.vo.HrVo;
import com.spring.board.vo.UserVo;
import com.spring.common.CommonUtil;
import com.spring.board.service.boardService;

@Controller
public class UsrController {
	
	@Autowired 
	hrService hrService;
	
	@Autowired 
	boardService boardService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/hr/main.do", method = RequestMethod.GET)
	public String showMain(
			Model model
			) throws Exception{
		
		List<HrVo> hrList = new ArrayList<HrVo>();
		
		hrList = hrService.selecHrList();
		
		model.addAttribute("hrList", hrList);
		
		return "hr/index";
		
	}
	
	@RequestMapping(value = "/hr/modify.do", method = RequestMethod.GET)
	public String showModify(
			Model model
			, @RequestParam() String id
			) throws Exception{
		
		HrVo hrVo = hrService.selectHrById(id);
		
		
		String[] temp = hrVo.getIdentifyNum().split("-");
		
		hrVo.setIdentifyNum(temp[0]);
		hrVo.setIdentifyNum2(temp[1]);
		
		String[] temp2 = hrVo.getPhone().split("-");
		hrVo.setPhone(temp2[0]);
		hrVo.setPhone2(temp2[1]);
		hrVo.setPhone3(temp2[2]);
		
		String[] temp3 = hrVo.getBirthYear().split("-");
		hrVo.setBirthYear(temp3[0]);
		hrVo.setBirthYear2(temp3[1]);
		hrVo.setBirthYear3(temp3[2]);
		
		String[] temp4 = hrVo.getAddr().split("-");
		hrVo.setPostNo(temp4[0]);
		hrVo.setAddr(temp4[1]);
		
		
		
		
		model.addAttribute("hrVo", hrVo);
		
		
		
		return "hr/modify";
		
	}
	
	@RequestMapping(value = "/hr/doModify.do", method = RequestMethod.POST)
	@ResponseBody
	public String doModify(
			Model model
			, HrVo hrVo
			) throws Exception{

		hrVo.setIdentifyNum(hrVo.getIdentifyNum() + "-" + hrVo.getIdentifyNum2());
		hrVo.setPhone(hrVo.getPhone() + "-" + hrVo.getPhone2() + "-" + hrVo.getPhone3());
		hrVo.setBirthYear(hrVo.getBirthYear() + "-" + hrVo.getBirthYear2() + "-" + hrVo.getBirthYear3());
		hrVo.setAddr(hrVo.getPostNo() + "-" +hrVo.getAddr());
		
		int resultCnt = hrService.updateHr(hrVo);
		
		
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		CommonUtil commonUtil = new CommonUtil();
		
		String callbackMsg = commonUtil.getJsonCallBackString(" ",result);
		
		return callbackMsg;
	}

}
