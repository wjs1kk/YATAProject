package com.itwillbs.yata.service;

import java.util.List;
import java.util.Map;

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
	public int update_car_available(int car_id) {
		return mapper.update_car_available(car_id);
	}
	public List<ReservVO> myReservation(String member_email) {
		return mapper.myReservationList(member_email);
	}
	public List<ReservVO> getReservationList(int startRow, int listLimit, String searchType, String searchKeyword) {
		return mapper.selectgReservationList(startRow, listLimit, searchType, searchKeyword);
	}
	public Map<String, Integer> getStats() {
		return mapper.selectStats();
	}
	public int getReservationListCount(String searchType, String searchKeyword) {
		return mapper.selectgReservationListCount(searchType, searchKeyword);
	}
	
	public ReservVO getReserveList(int res_id) {
		return mapper.selectReserveList(res_id);
	}
	
	public Integer deleteReserve(Integer res_id) {
		return mapper.deleteReserve(res_id);
	}
	//포인트 적립
	public int updatePoint(String member_email, String member_point, String res_totalprice) {
	    return mapper.updatePoint(member_email, member_point , res_totalprice);
	}
	
}
