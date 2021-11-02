package com.abc.myapp.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abc.myapp.Service.IReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	IReservationService revService;
	
	// 메인페이지에서 예약하기 버튼을 눌렀을 때 날짜 선택 페이지로
	@RequestMapping(value = "/dateselect", method = RequestMethod.GET )
	public String dateselect() {
		return "dateselect";
	}
	
	// 메인페이지에서 조회버튼을 눌렀을 때 번호 입력 조회 페이지로
	@RequestMapping(value = "/phone", method = RequestMethod.GET )
	public String phone() {
		return "phone";
	}
	
	// 날짜 선택후 시간을 선택하는 페이지로 
	@RequestMapping(value = "/timeselect", method = RequestMethod.POST )
	public String time(@RequestParam(value="revDate") Date date, Model model) {
		Date revDate = date;
		model.addAttribute("revDate", revDate);
		return "timeselect";
	}
}
