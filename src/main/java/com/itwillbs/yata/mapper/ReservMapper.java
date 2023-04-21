package com.itwillbs.yata.mapper;

import java.util.List;

import com.itwillbs.yata.vo.ReservVO;

public interface ReservMapper {
	public int insertReserv(ReservVO reservVO);
	List<ReservVO> myReservationList(String member_email);
	public ReservVO selectReserveList(int res_id);
}
