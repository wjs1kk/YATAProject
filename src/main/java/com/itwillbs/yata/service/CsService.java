package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.CsMapper;
import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.NoticeVO;

@Service
public class CsService {

	@Autowired
	private CsMapper mapper;
	
	// 자주묻는질문 리스트 조회
	public List<NoticeVO> getCsList() {
		return mapper.selectCsList();
	}
	// 자주묻는질문 검색
	public List<NoticeVO> searchByCs(String board_subject) {
		return mapper.searchByCs(board_subject);
	}
	
	// 1:1문의 리스트 조회
	public List<MailFormVO> myMail(String member_email, int listLimit, int startRow) {
		return mapper.selectMyMail(member_email, listLimit, startRow);
	}
	// 1:1문의 리스트 갯수 조회
	public Integer selectMyMailCount(String member_email) {
		return mapper.selectMyMailCount(member_email);
	}
	// 1:1문의 조회
	public MailFormVO getMailForm(int board_num) {
		return mapper.getMailForm(board_num);
	}
	// 1:1문의 작성
	public int registMailForm(MailFormVO mailForm) {
		int listLimit = 10;
		int pageNum = 1;

		return mapper.insertMailForm(mailForm);
	}
	// 1:1문의 삭제
	public int deleteView(int board_num) {
		return mapper.deleteView(board_num);
	}
	
}
