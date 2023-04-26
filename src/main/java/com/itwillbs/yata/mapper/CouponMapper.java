package com.itwillbs.yata.mapper;

import java.util.List;

import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.Coupon_usedVO;

public interface CouponMapper {

	List<CouponVO> couponList();

	int couponRegist(CouponVO coupon);

	CouponVO selectCoupon(int coup_idx);

	int deleteCoupon(int coup_idx);
	List<Coupon_usedVO> selectCouponUser(String member_email);
}
