package com.abc.myapp.Repository;

import com.abc.myapp.model.AdminVO;

public interface IAdminRepository {
	
	// 로그인 체크 메서드?
	boolean loginCheck(AdminVO admin) throws Exception;
}
