package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.ReservVO;

public interface ReservMapper {
	public int insertReserv(ReservVO reservVO);
	List<ReservVO> myReservationList(String member_email);
	
	//포인트 적립
	public int updatePoint(@Param("member_email") String member_email, @Param("member_point") String member_point, @Param("res_totalprice") String res_totalprice);
}
