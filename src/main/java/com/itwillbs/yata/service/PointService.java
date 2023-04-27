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
	
	//포인트 적립
	public int updatePoint(String member_email, String member_point, String res_totalprice, int use_point) {
	    return mapper.updatePoint(member_email, member_point , res_totalprice, use_point);
	}
	//포인트 사용
	public int usePoint(String member_email, String member_point,  int use_point) {
	    return mapper.usePoint(member_email, member_point , use_point);
	}
//	포인트 사용내역 insert
	public int savePoint(PointVO pointVO) {
		return mapper.savePoint(pointVO);
	}

}