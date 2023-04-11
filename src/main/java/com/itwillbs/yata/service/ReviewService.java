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

}
