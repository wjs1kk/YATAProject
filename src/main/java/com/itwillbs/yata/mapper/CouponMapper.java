package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CouponVO;


public interface CouponMapper {

	List<CouponVO> couponList();

	int couponRegist(CouponVO coupon);

	CouponVO selectCoupon(int coup_idx);

	int deleteCoupon(int coup_idx);

	String getNum(String coup_code);

	Integer checkCode(@Param("coup_idx") int coup_idx,@Param("member_email") String member_email);

	int couponEnroll(@Param("coup_idx") int coup_idx,@Param("member_email") String member_email);
	
	List<CouponVO> userCoupon(String member_email);
	int couponUsed(@Param("coup_idx") String coup_idx, @Param("member_email") String member_email);
}
