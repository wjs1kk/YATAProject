package com.itwillbs.yata.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.LicenseVO;
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
	
	//2023-04-27 김동욱 면허증 등록 신청 목록
	public List selectLicenseList();
	// 2023-04-27 김동욱 - 관리자페이지에서 면허증 승인 후 맴버 테이블 member_licence 1로 업데이트
	public int updateMemberLicense(String lic_member_email);
	public String loginLookup(Object member_email);
	//2023-04-27 김동욱 이메일 중복체크
	public String selectEmailCheck(String member_email);
	int insertLicense(LicenseVO license);
}
