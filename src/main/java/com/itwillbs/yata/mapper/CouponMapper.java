package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CouponUsedVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.MemberVO;

public interface CouponMapper {

	List<CouponVO> couponList();

	int couponRegist(CouponVO coupon);

	CouponVO selectCoupon(int coup_idx);

	int deleteCoupon(int coup_idx);

	String getNum(String coup_code);

	int couponEnroll(@Param("coupon") CouponVO coupon, @Param("coupon_used") CouponUsedVO used, @Param("member_email") String member_email);

	String checkCode(@Param("member_email")String member_email, CouponUsedVO used);

	String checkEmail(String member_email);

	int couponEnroll2(@Param("coupon") CouponVO coupon, @Param("coupon_used") CouponUsedVO used, @Param("member_email") String member_email);

	String checkCode2(@Param("member_email")String member_email, CouponUsedVO used);

}
