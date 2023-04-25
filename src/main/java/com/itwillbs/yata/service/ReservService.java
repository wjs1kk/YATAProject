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
	public ReservVO getReserveList(int res_id) {
		return mapper.selectReserveList(res_id);
	}
	public Integer deleteReserve(Integer res_id) {
		return mapper.deleteReserve(res_id);
	}
}
