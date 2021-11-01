package com.abc.myapp.Repository;

import com.abc.myapp.model.ReservationVO;

public interface IReservationRepository {
	void insertReservation(ReservationVO rev);
	int getReservation(String phone);
	void updateReservation(ReservationVO rev);
	void deleteReservation(ReservationVO rev);
}
