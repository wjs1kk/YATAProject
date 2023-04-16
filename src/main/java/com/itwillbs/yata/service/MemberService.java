package com.itwillbs.yata.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itwillbs.yata.mapper.MemberMapper;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.Member_modifyVO;

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
	
}


