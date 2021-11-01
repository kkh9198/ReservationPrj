package com.abc.myapp.Service;

import com.abc.myapp.model.ReservationVO;

public interface IReservationService {
	void insertReservation(ReservationVO rev);
	int getReservation(String phone);
	void updateReservation(ReservationVO rev);
	void deleteReservation(ReservationVO rev);
}
