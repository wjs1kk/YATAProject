package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.CouponMapper;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.Coupon_usedVO;

@Service
public class CouponService {
	@Autowired
	private CouponMapper mapper;

	public List<CouponVO> couponList() {
		return mapper.couponList()!= null ? mapper.couponList() :null ;
	}

	public int adminCouponRegist(CouponVO coupon) {
		// TODO Auto-generated method stub
		return mapper.couponRegist(coupon);
	}

	public CouponVO selectCoupon(int coup_idx) {
		// TODO Auto-generated method stub
		return mapper.selectCoupon(coup_idx);
	}

	public int deleteCoupon(int coup_idx) {
		// TODO Auto-generated method stub
		return mapper.deleteCoupon(coup_idx);
	}
	public List<Coupon_usedVO> selectCouponUser(String member_email){
		return mapper.selectCouponUser(member_email);
	}
}