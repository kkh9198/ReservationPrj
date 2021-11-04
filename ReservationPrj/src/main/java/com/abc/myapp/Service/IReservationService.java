package com.abc.myapp.Service;

import java.sql.Date;
import java.util.List;

import com.abc.myapp.model.ReservationVO;

public interface IReservationService {
	void insertReservation(ReservationVO rev);
	List<ReservationVO> getReservation(String phone);
	void updateReservation(ReservationVO rev);
	void deleteReservation(int number, String phone);
	List<ReservationVO> getReservationCount(Date revDate);
	ReservationVO getReservationInfo(int number);// 예약정보를 받아오는 메서드(serialnumber)
	List<ReservationVO> getUpdateReservationCount(Date updateDate, int targetNumber); // 해당 시리얼 넘버의 예약을 제외한 예약인원을 받아오는 메서드
	void updateReservation(ReservationVO rev, int targetNumber); // 해당 시리얼 넘버의 예약을 업데이트 하는 메서드
	int getAvailableCnt(ReservationVO rev, int targetNumber); // 해당 시리얼 넘버를 제외한 예약인원수를 조회할 메서드 - 업데이트시
	int getAvailableCnt(ReservationVO rev); // 해당 시리얼 넘버를 제외한 예약인원수를 조회할 메서드 - 새로 예약시
}
