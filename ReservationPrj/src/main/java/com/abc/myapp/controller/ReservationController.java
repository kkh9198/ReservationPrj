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
	
	// 예약 상세 정보 입력 후 예약 완료 -- 인원 제한 기능 추가 전
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	public String complete(ReservationVO rev, Model model) {
		revService.insertReservation(rev);
		model.addAttribute("rev", rev);
		return "result";
	}
	
	// 예약 상세 정보 입력 후 예약 완료 -- 인원 제한 기능 추가 전
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String result() {
		return "redirect:/";
	}
	
//	// 예약 상세 정보 입력 후 예약 완료 
//	@RequestMapping(value = "/complete", method = RequestMethod.POST)
//	public String complete(ReservationVO rev,
//			@RequestParam(value="cnt") int cnt,
//			Model model) {
//		int available_cnt = revService.getAvailableCnt(rev); // targetNumber에 해당하는 예약을 제외한 cnt 를 int로 받아옴
//		// T면 오류행 / F면 정상 업데이트
//		if (available_cnt + cnt <= 10) { // 받아온 cnt를 입력한 rev.cnt와 합쳐서 10이 넘는지 T/F반환
//			revService.insertReservation(rev);
////			model.addAttribute("rev", rev);
//			return "redirect:/";
//		}else {
//			return "redirect:/";
//		}
//	}
//	
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
		return "dresult";
	}
	
	// 예약 수정버튼을 누르면 날짜 선택 페이지로
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@RequestParam(value = "targetNumber") int targetNumber,
			@RequestParam(value = "targetName") String targetName,
			@RequestParam(value = "targetPhone") String targetPhone,
			@RequestParam(value = "targetCnt") String targetCnt,
			@RequestParam(value = "targetDetails") String targetDetails,
			Model model) {
		model.addAttribute("targetNumber", targetNumber);
		model.addAttribute("targetName", targetName);
		model.addAttribute("targetPhone", targetPhone);
		model.addAttribute("targetCnt", targetCnt);
		model.addAttribute("targetDetails", targetDetails);
		return "udateselect";
	}
	
	// 수정할 날짜 선택후 수정할 시간을 선택하는 페이지로 
	@RequestMapping(value = "/updateTimeselect", method = RequestMethod.POST )
	public String updateTime(@RequestParam(value="updateDate") Date date, 
			@RequestParam(value="targetNumber") int targetNumber,
			@RequestParam(value = "targetName") String targetName,
			@RequestParam(value = "targetPhone") String targetPhone,
			@RequestParam(value = "targetCnt") String targetCnt,
			@RequestParam(value = "targetDetails") String targetDetails,
			Model model) {
		Date updateDate = date;
		model.addAttribute("updateDate", updateDate);
		model.addAttribute("targetNumber", targetNumber);
		model.addAttribute("targetName", targetName);
		model.addAttribute("targetPhone", targetPhone);
		model.addAttribute("targetCnt", targetCnt);
		model.addAttribute("targetDetails", targetDetails);
		List<ReservationVO> revList = revService.getUpdateReservationCount(updateDate, targetNumber);
		model.addAttribute("revList", revList);
		return "utimeselect";
	}
	
	// 날짜 시간 선택 후 예약 업데이트 상세 정보 입력페이지로
	@RequestMapping(value = "/updateReservation", method = RequestMethod.POST)
	public String updateReservation(@RequestParam(value = "time") String time, 
			@RequestParam(value = "updateDate") Date date, 
			@RequestParam(value="targetNumber") int targetNumber,
			@RequestParam(value = "targetName") String targetName,
			@RequestParam(value = "targetPhone") String targetPhone,
			@RequestParam(value = "targetCnt") String targetCnt,
			@RequestParam(value = "targetDetails") String targetDetails,
			@RequestParam(value = "cnt") int revCnt,
			Model model) {
		String updateTime = time;
		Date updateDate = date;
		model.addAttribute("updateDate", updateDate);
		model.addAttribute("updateTime", updateTime);
		model.addAttribute("targetNumber", targetNumber);
		model.addAttribute("targetName", targetName);
		model.addAttribute("targetPhone", targetPhone);
		model.addAttribute("targetCnt", targetCnt);
		model.addAttribute("targetDetails", targetDetails);
		model.addAttribute("cnt", revCnt);
		return "ureservation";
	}
	
//	// 예약 업데이이트 상세 정보 입력 후 업데이트 완료 -- 인원제한 전 완성본
//	@RequestMapping(value = "/updateComplete", method = RequestMethod.POST)
//	public String updateComplete(ReservationVO rev, @RequestParam(value="targetNumber") int target, Model model) {
//		int targetNumber = target;
//		revService.getAvailableCnt(rev, targetNumber); // 테스트용이었음
//		model.addAttribute("targetNumber", targetNumber);
//		revService.updateReservation(rev, targetNumber);
//		model.addAttribute("rev", rev);
//		return "redirect:/";
//	}
	
	// 인원 제한 확인 후  - 예약 업데이트 상세 정보 입력 후 업데이트 완료
	@RequestMapping(value = "/updateComplete", method = RequestMethod.POST)
	public String updateComplete(ReservationVO rev, 
			@RequestParam(value="targetNumber") int targetNumber,
			@RequestParam(value="cnt") int cnt,
			Model model) {
		model.addAttribute("targetNumber", targetNumber);
		
		int available_cnt = revService.getAvailableCnt(rev, targetNumber); // targetNumber에 해당하는 예약을 제외한 cnt 를 int로 받아옴
		// T면 오류행 / F면 정상 업데이트
		if (available_cnt + cnt <= 10) { // 받아온 cnt를 입력한 rev.cnt와 합쳐서 10이 넘는지 T/F반환
			revService.updateReservation(rev, targetNumber);
//			model.addAttribute("rev", rev);
			return "uresult";
		}else {
			return "runtime";
		}
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
