package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.CouponMapper;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.CouponUsedVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.MemberVO;

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

	public int couponEnroll(CouponVO coupon, CouponUsedVO used, String member_email) {
		return mapper.couponEnroll(coupon, used, member_email);
	}

	public String checkCode(String member_email, CouponUsedVO used) {
		return mapper.checkCode(member_email, used);
	}

	public String checkEmail(String member_email) {
		return mapper.checkEmail(member_email);
	}
}
