package com.abc.myapp.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abc.myapp.Service.IReservationService;
import com.abc.myapp.Service.ReservationService;
import com.abc.myapp.model.ReservationVO;



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
//		System.out.println(LocalDate.now());
		model.addAttribute("revDate", revDate);
		List<ReservationVO> revList = revService.getReservationCount(revDate);
		model.addAttribute("revList", revList);
		return "timeselect";
	}
	
	// 날짜 시간 선택 후 예약 상세 정보 입력페이지로
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservation(@RequestParam(value = "time") String time,
			@RequestParam(value = "revDate") Date date,
			@RequestParam(value = "cnt") int cnt,
			Model model) {
		String revTime = time;
		Date revDate = date;
		int revCnt = cnt;
		model.addAttribute("revDate", revDate);
		model.addAttribute("revTime", revTime);
		model.addAttribute("cnt", revCnt);
		return "reservation";
	}
	
	// 예약 상세 정보 입력 후 예약 완료 -- 인원제한은 jsp에서 제한
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	public String complete(ReservationVO rev, Model model) {
		revService.insertReservation(rev);
		model.addAttribute("rev", rev);
		return "result";
	}
	
	// 완료 페이지에서 메인으로 보내기
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String result() {
		return "redirect:/";
	}

	// 핸드폰 번호로 예약 조회 
	@RequestMapping(value = "/inform", method = RequestMethod.POST)
	public String getReservation(@RequestParam(value = "revPhone") String phone, Model model) {
		List<ReservationVO> revList = revService.getReservation(phone);
		model.addAttribute("revList", revList);
		// 오늘날짜를 받아옴
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String ss=sdf.format(new java.util.Date());
		java.sql.Date today= java.sql.Date.valueOf(ss);
		model.addAttribute("today", today);
		return "inform";
	}

	// 예약 상세조회에서 삭제페이지로 이동
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(@RequestParam("number") int number,
			@RequestParam("targetPhone") String phone,
			Model model) {
		model.addAttribute("rev", revService.getReservationInfo(number));
		return "deleteform";
	}
	
	// 삭제페이지에서 삭제완료하고 결과창으로 이동
	@RequestMapping(value = "/deleteresult", method=RequestMethod.POST)
	public String deleteResult(@RequestParam("number") int number,
			@RequestParam("phone") String phone,
			@RequestParam("revPhone") String revPhone,
			Model model) {
		if(phone.equals(revPhone)) { // 입력 번호랑 예약의 전화번호랑 일치시
			revService.deleteReservation(number, phone); // 삭제
			return "dresult";
		}else {
			model.addAttribute("rev", revService.getReservationInfo(number));
			return "deleteform";
		}
	}
	
	// 예약 수정버튼을 누르면 날짜 선택 페이지로
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@RequestParam(value = "targetNumber") int targetNumber,
			Model model) {
		model.addAttribute("targetNumber", targetNumber);
		return "udateselect";
	}
	
	// 수정할 날짜 선택후 수정할 시간을 선택하는 페이지로 
	@RequestMapping(value = "/updateTimeselect", method = RequestMethod.POST )
	public String updateTime(@RequestParam(value="updateDate") Date date, 
			@RequestParam(value="targetNumber") int targetNumber,
			Model model) {
		Date updateDate = date;
		model.addAttribute("updateDate", updateDate);
		model.addAttribute("targetNumber", targetNumber);
		List<ReservationVO> revList = revService.getUpdateReservationCount(updateDate, targetNumber);
		model.addAttribute("revList", revList);
		return "utimeselect";
	}
	
	// 날짜 시간 선택 후 예약 업데이트 상세 정보 입력페이지로
	@RequestMapping(value = "/updateReservation", method = RequestMethod.POST)
	public String updateReservation(@RequestParam(value = "time") String time, 
			@RequestParam(value = "updateDate") Date date, 
			@RequestParam(value="targetNumber") int targetNumber,
			@RequestParam(value = "cnt") int revCnt,
			Model model) {
		String updateTime = time;
		Date updateDate = date;
		model.addAttribute("updateDate", updateDate);
		model.addAttribute("updateTime", updateTime);
		model.addAttribute("targetNumber", targetNumber);
		model.addAttribute("cnt", revCnt);
		model.addAttribute("prevRev", revService.getReservationInfo(targetNumber));
		return "ureservation";
	}
	
	// 인원 제한 확인 후  - 예약 업데이트 상세 정보 입력 후 업데이트 완료
	@RequestMapping(value = "/updateComplete", method = RequestMethod.POST)
	public String updateComplete(ReservationVO rev, 
			@RequestParam(value="targetNumber") int targetNumber,
			@RequestParam(value="cnt") int cnt,
			Model model) {
		model.addAttribute("targetNumber", targetNumber);
		revService.updateReservation(rev, targetNumber);
		return "uresult";
	}

}
