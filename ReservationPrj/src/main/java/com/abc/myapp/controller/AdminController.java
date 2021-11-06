package com.abc.myapp.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abc.myapp.Service.IAdminService;
import com.abc.myapp.Service.IReservationService;
import com.abc.myapp.model.AdminVO;
import com.abc.myapp.model.ReservationVO;

@Controller
public class AdminController {
	
	@Autowired
	IAdminService adminservice;
	@Autowired
	IReservationService revService;
	
	// 메인페이지에서 관리자 로그인 버튼 클릭
	@RequestMapping(value = "/adminLogin")
	public String adminLogin() {
		return "admin";
	}
	
	// 메인페이지에서 관리자 로그아웃 버튼 클릭
	@RequestMapping(value = "/adminLogout", method = RequestMethod.POST)
	public String adminLogout(HttpSession session) {
		session.invalidate();	
		return "redirect:/";
	}
	
	// 관리자 로그인페이지에서 로그인 체크
	@RequestMapping(value = "/adminOK", method = RequestMethod.POST)
	public String adminOK(AdminVO admin, HttpSession session) throws Exception {
		try {
			boolean result = adminservice.loginCheck(admin, session); // 로그인 체크 메서드 실행
			if (result) {	// 성공시
				return "redirect:/";	// 메인페이지
			}
		} catch (Exception e) {	// 실패시
			return "redirect:adminNo";	// 로그인 실패를 띄우는 로그인창으로
		}
		return "redirect:/";
	}
	
	// 관리자 로그인 실패시 
	@RequestMapping(value = "/adminNo")
	public String adminNo(Model model) {
		String fail = "fail";
		model.addAttribute("fail", fail);
		return "admin";
	}
	
	// 관리자 메뉴에서 날짜로 조회페이지
	@RequestMapping("adminDate")
	public String adminDate() {
		return "admindate";
	}
	
	// 날짜 선택 페이지에서 시간선택 페이지로 보내기
	@RequestMapping(value = "/adminDetail", method = RequestMethod.POST)
	public String adminDetail(@RequestParam(value="revDate") Date date, Model model) {
		Date revDate = date;
		model.addAttribute("revDate", revDate);
		List<ReservationVO> revList = revService.getReservationCount(revDate);
		model.addAttribute("revList", revList);
		return "adminlist";
	}
	
	//시간별조회 페이지에서 시간별로 디테일 조회페이지로 보내기
	@RequestMapping(value = "/detail", method = RequestMethod.POST)
	public String timeDetail(@RequestParam(value = "revDate") Date date,
			@RequestParam(value = "time") String time,
			Model model) {
		List<ReservationVO> revList = adminservice.getReservation(date, time);
		model.addAttribute("revList", revList);
		// 오늘날짜를 받아옴
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String ss=sdf.format(new java.util.Date());
		java.sql.Date today= java.sql.Date.valueOf(ss);
		model.addAttribute("today", today);
		return "admindetails";
	}
}