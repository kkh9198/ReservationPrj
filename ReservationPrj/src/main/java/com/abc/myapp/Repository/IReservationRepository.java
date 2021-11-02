package com.abc.myapp.Repository;

import java.sql.Date;
import java.util.List;

import com.abc.myapp.model.ReservationVO;

public interface IReservationRepository {
	void insertReservation(ReservationVO rev);	// 예약을 추가하는 메서드
	int getReservation(String phone);	// 예약 정보를 받아오는 메서드
	void updateReservation(ReservationVO rev);	// 예약정보를 업데이트하는 메서드
	void deleteReservation(ReservationVO rev);	// 예약정보를 삭제하는 메서드
	List<ReservationVO> getReservationCount(Date revDate); // 예약일의 예약인원수를 받아오는 메서드
}
