package com.abc.myapp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.myapp.Repository.AdminRepository;
import com.abc.myapp.model.AdminVO;

@Service
public class AdminService implements IAdminService {
	
	@Autowired
	AdminRepository adminrepository;
	
	@Override
	public boolean loginCheck(AdminVO admin) throws Exception {
		boolean result = adminrepository.loginCheck(admin);
//		//로그인 성공
//		if(result) {
//			session.setAttribute("admin_id", admin.getAdminId());
//	        session.setAttribute("admin_pw", admin.getAdminPw());
//	    }		
	    return result;
	}
}
