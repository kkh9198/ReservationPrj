package com.abc.myapp.Service;

import java.sql.Date;
import java.util.List;

import com.abc.myapp.model.ReservationVO;

public interface IReservationService {
	void insertReservation(ReservationVO rev);
	List<ReservationVO> getReservation(String phone);
	void updateReservation(ReservationVO rev);
	void deleteReservation(int number);
	List<ReservationVO> getReservationCount(Date revDate);
}
