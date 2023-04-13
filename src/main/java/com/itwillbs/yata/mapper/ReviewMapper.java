package com.itwillbs.yata.mapper;

import java.util.*;


import com.itwillbs.yata.vo.*;

public interface ReviewMapper {
//	public List<ReviewVO> selectReview(ReviewVO review);
	public int insertReview(ReviewVO review);
	public List<ReviewVO> selectReview();
	public List<ReviewVO> selectMyReview(String member_email);
	public Integer selectMyReviewCount(String member_email);
}