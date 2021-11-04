package com.abc.myapp.Repository;


import java.sql.Date;
import java.util.List;

import com.abc.myapp.model.ReservationVO;

public interface IReservationRepository {
	void insertReservation(ReservationVO rev);	// 예약을 추가하는 메서드
	List<ReservationVO> getReservation(String phone);	// 예약 정보를 받아오는 메서드(phone)
	void updateReservation(ReservationVO rev);	// 예약정보를 업데이트하는 메서드
	void deleteReservation(int number, String phone);	// 예약정보를 삭제하는 메서드
	List<ReservationVO> getReservationCount(Date revDate); // 예약일의 예약인원수를 받아오는 메서드
	ReservationVO getReservationInfo(int number);// 예약정보를 받아오는 메서드(serialnumber)
	List<ReservationVO> getUpdateReservationCount(Date updateDate, int targetNumber); //업데이트된 예약일의 인원을 받아오는 메서드
	void updateReservation(ReservationVO rev, int targetNumber); // 해당 시리얼 넘버의 예약을 업데이트 하는 메서드
}
