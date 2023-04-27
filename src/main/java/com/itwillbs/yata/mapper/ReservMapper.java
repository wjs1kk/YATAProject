package com.itwillbs.yata.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.ReservVO;

public interface ReservMapper {
	public int insertReserv(ReservVO reservVO);
	List<ReservVO> myReservationList(String member_email);
<<<<<<< HEAD
	List<ReservVO> selectgReservationList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	Map<String, Integer> selectTotalReservation();
	Map<String, Integer> selectStats();
	int selectgReservationListCount(@Param("searchType")String searchType, @Param("searchKeyword")String searchKeyword);
	public ReservVO selectReserveList(int res_id);
	
	public Integer deleteReserve(Integer res_id);
	//포인트 적립
	public int updatePoint(@Param("member_email") String member_email, @Param("member_point") String member_point, @Param("res_totalprice") String res_totalprice);
=======
	public ReservVO selectReserveList(int res_id);
	public Integer deleteReserve(Integer res_id);
>>>>>>> 61ba629b93b9000f0b9f6ef50559c8f0ce11df9b
}
