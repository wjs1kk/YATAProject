package com.itwillbs.yata.mapper;

import java.util.List;

import com.itwillbs.yata.vo.PointVO;

public interface PointMapper {
	public List<PointVO> myPoint(String member_email);

}