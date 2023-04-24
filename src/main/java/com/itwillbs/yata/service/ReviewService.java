package com.itwillbs.yata.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.yata.mapper.*;
import com.itwillbs.yata.vo.*;

@Service
public class ReviewService {
	@Autowired
	private ReviewMapper mapper;
	
	public List<ReviewVO> getReview() {
		return mapper.selectReview();
	}
	
	public int insertReview(ReviewVO review) {
		return mapper.insertReview(review);
	}
	
	public List<ReviewVO> myReview(String member_email) {
		return mapper.selectMyReview(member_email);
	}

	public Integer selectMyReviewCount(String member_email) {
		return mapper.selectMyReviewCount(member_email);
	}
	public List<ReviewVO> listReview(String place) {
		return mapper.listReview(place);
	}

	public ReviewVO getResId(String member_email, int res_id) {
		return mapper.selectResId(member_email, res_id);
	}
}