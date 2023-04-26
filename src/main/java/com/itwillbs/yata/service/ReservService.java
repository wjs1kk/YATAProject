package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.ReservMapper;
import com.itwillbs.yata.vo.ReservVO;

@Service
public class ReservService {
	@Autowired
	private ReservMapper mapper;
	public int insertReserv(ReservVO reservVO) {
		return mapper.insertReserv(reservVO);
	}
	public List<ReservVO> myReservation(String member_email) {
		return mapper.myReservationList(member_email);
	}
	
	//포인트 적립
	public int updatePoint(String member_email, String member_point, String res_totalprice) {
	    return mapper.updatePoint(member_email, member_point , res_totalprice);
	}

}
