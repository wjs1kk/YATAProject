package com.itwillbs.yata.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.itwillbs.yata.vo.MemberVO;

public interface MemberMapper {
	
	public MemberVO selectUser(String member_email);
	public int insertUser(MemberVO member);
	public String selectPasswd(String member_email);

	public int modifyUser(MemberVO memberVO);
	public int deleteUser(String member_email);
	
	//쿠폰에서 회원 이메일 조회
	public String searchMemberEmail(MemberVO member);
	//관리자 회원 정보 수정
	public int AdminMemberModify(MemberVO member);
	//관리자 회원 삭제
	public int AdminMemberDelete(@Param("member_email") String member_email);
	public List<MemberVO> memberList(@Param("startRow")int startRow, @Param("listLimit")int listLimit, @Param("searchType")String searchType, @Param("searchKeyword")String searchKeyword);
	public String isAdmin(String member_email);
	public int selectMemberListCount(@Param("searchType")String searchType, @Param("searchKeyword")String searchKeyword);
	public int loginLookup(MemberVO member);
}
