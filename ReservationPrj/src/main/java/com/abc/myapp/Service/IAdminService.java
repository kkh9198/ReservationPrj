package com.abc.myapp.Service;

import org.springframework.stereotype.Service;

import com.abc.myapp.model.AdminVO;

@Service
public interface IAdminService {
	boolean loginCheck(AdminVO admin) throws Exception;
}
