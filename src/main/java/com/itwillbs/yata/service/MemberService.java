package com.itwillbs.yata.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itwillbs.yata.mapper.MemberMapper;
import com.itwillbs.yata.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	public MemberVO checkUser(String member_email, String member_passwd) {
		
		return mapper.selectUser(member_email, member_passwd) != null ? mapper.selectUser(member_email, member_passwd) :null ;
	}
	
	public int insertUser(MemberVO member) {
		return mapper.insertUser(member);
	}

<<<<<<< HEAD
	public String getPasswd(String member_email) {
		return mapper.selectPasswd(member_email);
=======
	public int modifyUser(String member_birth, String member_phone, String member_email) {
		return mapper.modifyUser(member_birth, member_phone,member_email);
>>>>>>> f0a21952a9811bee8336ab57d026da95eb303170
	}
	
}
