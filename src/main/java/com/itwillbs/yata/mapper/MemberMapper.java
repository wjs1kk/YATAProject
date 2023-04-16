package com.itwillbs.yata.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.Member_modifyVO;



public interface MemberMapper {
	
	public MemberVO selectUser(String member_email);
	public int insertUser(MemberVO member);
	public String selectPasswd(String member_email);
	public int modifyUser(MemberVO memberVO);
	public int deleteUser(String member_email);

}
