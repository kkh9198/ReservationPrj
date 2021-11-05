package com.abc.myapp.Repository;

import java.sql.Date;
import java.util.List;

import com.abc.myapp.model.AdminVO;
import com.abc.myapp.model.ReservationVO;

public interface IAdminRepository {
	
	// 로그인 체크 메서드?
	boolean loginCheck(AdminVO admin) throws Exception;
	List<ReservationVO> getReservation(Date date, String time); // 날짜 시간 조회해서 예약정보 모두 불러오는 메서드
}
