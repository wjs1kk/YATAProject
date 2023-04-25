package com.itwillbs.yata.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.*;

public interface ReviewMapper {
//	public List<ReviewVO> selectReview(ReviewVO review);
	public int insertReview(ReviewVO review);
	public List<ReviewVO> selectReview();
	public List<ReviewVO> selectMyReview(String member_email);
	public Integer selectMyReviewCount(String member_email);
	public List<ReviewVO> listReview(String res_place);
	public Integer selectResId(Integer res_id);
}