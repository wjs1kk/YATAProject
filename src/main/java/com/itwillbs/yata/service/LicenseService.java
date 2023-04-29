package com.itwillbs.yata.service;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.yata.mapper.*;
import com.itwillbs.yata.vo.*;

@Service
public class LicenseService {
	@Autowired
	private LicenseMapper mapper;

	public int insertLicense(LicenseVO license) {
		return mapper.insertLicense(license);
	}
	
	
}
