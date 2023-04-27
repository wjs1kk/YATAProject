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

	public List<ReviewVO> listReview(String place) {
		return mapper.listReview(place);
	}
<<<<<<< HEAD
	public Integer getResId(Integer res_id) {
		return mapper.selectResId(res_id);
	}
=======

	public Integer getResId(Integer res_id) {
		return mapper.selectResId(res_id);
	}

>>>>>>> 61ba629b93b9000f0b9f6ef50559c8f0ce11df9b
}