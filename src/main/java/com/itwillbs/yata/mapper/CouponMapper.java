package com.itwillbs.yata.mapper;

import java.sql.Date;
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


	Integer checkCode(@Param("coup_idx") int coup_idx,@Param("member_email") String member_email);

	String checkEmail(String member_email);

	CouponVO coupNext(CouponVO coupon);

	int couponEnroll(@Param("coup_idx") int coup_idx,@Param("member_email") String member_email);


}
