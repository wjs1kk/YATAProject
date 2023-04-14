package com.itwillbs.yata.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.MemberVO;



public interface MemberMapper {
	
	public MemberVO selectUser(@Param("member_email") String member_email,@Param("member_passwd") String member_passwd);
	public int insertUser(MemberVO member);
	public String selectPasswd(String member_email);
	// 회원정보 수정 
	public int modifyUser(String member_birth, String member_phone, String member_email);
	//회원 정보 조회
	public List<MemberVO> memberList(MemberVO member);
	
}
