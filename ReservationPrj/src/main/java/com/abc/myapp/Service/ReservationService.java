package com.abc.myapp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.myapp.Repository.IReservationRepository;
import com.abc.myapp.model.ReservationVO;

@Service
public class ReservationService implements IReservationService {
	
	@Autowired
	IReservationRepository reservationrepository;
	
	@Override
	public void insertReservation(ReservationVO rev) {
		reservationrepository.insertReservation(rev); 
	}

	@Override
	public int getReservation(String phone) {
		return reservationrepository.getReservation(phone);
	}

	@Override
	public void updateReservation(ReservationVO rev) {
		reservationrepository.updateReservation(rev);	
	}

	@Override
	public void deleteReservation(ReservationVO rev) {
		reservationrepository.deleteReservation(rev);
	}

}
