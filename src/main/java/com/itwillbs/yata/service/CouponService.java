package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.CouponMapper;
import com.itwillbs.yata.vo.CouponVO;


@Service
public class CouponService {
	@Autowired
	private CouponMapper mapper;

	public List<CouponVO> couponList() {
		return mapper.couponList()!= null ? mapper.couponList() :null ;
	}

	public int adminCouponRegist(CouponVO coupon) {
		return mapper.couponRegist(coupon);
	}

	public CouponVO selectCoupon(int coup_idx) {
		return mapper.selectCoupon(coup_idx);
	}

	public int deleteCoupon(int coup_idx) {
		return mapper.deleteCoupon(coup_idx);
	}

	public String getCouponNum(String coup_code) {
		return mapper.getNum(coup_code);
	}

	public int couponEnroll(int coup_idx, String member_email) {
		return mapper.couponEnroll(coup_idx, member_email);
	}

	public Integer checkCode(int coup_idx, String member_email) {
		return mapper.checkCode(coup_idx, member_email);
	}
	
	public List<CouponVO> userCoupon(String member_email){
		return mapper.userCoupon(member_email)!= null ? mapper.userCoupon(member_email) :null ;
	}
	public int couponUsed(String coup_idx, String member_email) {
		return mapper.couponUsed(coup_idx,member_email);
	}

	public int couponExpired() {
		return mapper.couponExpired();
	}
}
