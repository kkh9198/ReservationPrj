package com.abc.myapp.controller;

import java.sql.Date;
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
		model.addAttribute("revDate", revDate);
		List<ReservationVO> revList = revService.getReservationCount(revDate);
		model.addAttribute("revList", revList);
		return "timeselect";
	}
	
	// 날짜 시간 선택 후 예약 상세 정보 입력페이지로
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservation(@RequestParam(value = "time") String time, @RequestParam(value = "revDate") Date date, Model model) {
		String revTime = time;
		Date revDate = date;
		model.addAttribute("revDate", revDate);
		model.addAttribute("revTime", revTime);
		return "reservation";
	}
	
	// 예약 상세 정보 입력 후 예약 완료
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	public String complete(ReservationVO rev, Model model) {
		revService.insertReservation(rev);
		model.addAttribute("rev", rev);
		return "redirect:/";
	}
	//예약 조회 
	@RequestMapping(value = "/inform", method = RequestMethod.POST)
	public String getReservation(String phone, Model model) {
		List<ReservationVO> revList = revService.getReservation(phone);
		model.addAttribute("revList", revList);
		return "inform";
	}
	//GET으로 삭제 요청
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(int number, Model model) {
		model.addAttribute("rev", revService.getReservationInfo(number));
		return "deleteform";
	}

	//POST으로 삭제 요청
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(int number,String phone) {
		revService.deleteReservation(number, phone);
		return "redirect:/";
	}
	
//	@RequestMapping(value="/update", method=RequestMethod.GET)
//	public String updateEmp(int empid, Model model) {
//		model.addAttribute("emp", empService.getEmpInfo(empid));
//		model.addAttribute("deptList", empService.getAllDeptId());
//		model.addAttribute("jobList", empService.getAllJobId());
//		model.addAttribute("managerList", empService.getAllManagerId());
//		return "hr/updateform";
//	}
//	
//	@RequestMapping(value="/hr/update", method=RequestMethod.POST)
//	public String updateEmp(EmpVO emp) {
//		empService.updateEmp(emp);
//		return "redirect:/hr/" + emp.getEmployeeId();
//	}
}
