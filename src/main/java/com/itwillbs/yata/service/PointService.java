package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.PointMapper;
import com.itwillbs.yata.vo.PointVO;

@Service
public class PointService {

	@Autowired
	private PointMapper mapper;

	public List<PointVO> myPoint(String member_email) {
		return mapper.myPoint(member_email);
	}

}