package com.itwillbs.yata.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itwillbs.yata.mapper.MemberMapper;
import com.itwillbs.yata.vo.LicenseVO;
import com.itwillbs.yata.vo.MemberVO;


@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	public int insertUser(MemberVO member) {
		return mapper.insertUser(member);
	}

	public String getPasswd(String member_email) {
		return mapper.selectPasswd(member_email);
	}	
	public int modifyUser(MemberVO memberVO) {
		return mapper.modifyUser(memberVO);
	}

	public MemberVO selectUser(String member_email) {
		return mapper.selectUser(member_email);
	}

	public int deleteUser(String member_email) {
		return mapper.deleteUser(member_email);
	}
	public String searchMemberEmail(MemberVO member) {
		return mapper.searchMemberEmail(member);
	}
	
	public int AdminMemberModifyPro(MemberVO member) {
		return mapper.AdminMemberModify(member);
	}

	public int AdminMemberDeletePro(String member_email) {
		return  mapper.AdminMemberDelete(member_email);
	}
	public List<MemberVO> memberList(int startRow, int listLimit, String searchType, String searchKeyword) {
		return mapper.memberList(startRow, listLimit, searchType, searchKeyword);
	}

	public String isAdmin(String member_email) {
		return mapper.isAdmin(member_email);
	}

	public int getMemberListCount(String searchType, String searchKeyword) {
		return mapper.selectMemberListCount(searchType, searchKeyword);
	}
	// 2023-04-27 김동욱 - 이메일 중복 체크
		public String memberEmailCheck(String member_email) {
			return mapper.selectEmailCheck(member_email);
		}
	// 2023-04-27 김동욱 - 라이센스 등록 신청 목록
	public List getLicenseList() {
		return mapper.selectLicenseList();
	}

	// 2023-04-27 김동욱 - 관리자페이지에서 면허증 승인 후 맴버 테이블 member_licence 1로 업데이트
	public int licenseAprovePro(String lic_member_email) {
		return mapper.updateMemberLicense(lic_member_email);
	}
	public String loginLookup(Object member_email) {

		return mapper.loginLookup(member_email);
	}
	public int insertLicense(LicenseVO license) {
		return mapper.insertLicense(license);
	}
}


