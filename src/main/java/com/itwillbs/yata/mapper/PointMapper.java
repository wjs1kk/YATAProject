package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.PointVO;

public interface PointMapper {
	public List<PointVO> myPoint(String member_email);
	//포인트 적립
	public int updatePoint(@Param("member_email") String member_email, @Param("member_point") String member_point, @Param("res_totalprice") String res_totalprice, @Param("use_point") int use_point);
	//포인트 사용
	public int usePoint(@Param("member_email") String member_email, @Param("member_point") String member_point, @Param("use_point") int use_point);
	
//	포인트 사용내역
	public int savePoint(PointVO pointVO);
}