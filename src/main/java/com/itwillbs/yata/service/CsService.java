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
	
	// 김동욱 -  1:1 문의 답변
	public int MailFormReplyPro(MailFormVO mailform) {
		mapper.updateBoardProgress(mailform);
		return mapper.insertMailformReply(mailform);
	}
	
	public int getMailFormListCount(String searchType, String searchKeyword) {
		return mapper.selectMailFormListCount(searchType, searchKeyword);
	}


	public List<MailFormVO> getAdminMailFormList(int startRow, int listLimit, String searchType, String searchKeyword) {
		return mapper.selectAdminMailFormList(startRow, listLimit, searchType, searchKeyword);
	}

	public List<MailFormVO> getAdminUnansweredMailFormList(int startRow, int listLimit, String searchType, String searchKeyword) {
		return mapper.selectAdminUnansweredMailFormList(startRow, listLimit, searchType, searchKeyword);
	}

	public int getUnansweredMailFormListCount(String searchType, String searchKeyword) {
		return mapper.selectUnansweredMailFormListCount(searchType, searchKeyword);
	}
	public MailFormVO getMailFormDetail(int board_num) {
		return mapper.SelectMailFormDetail(board_num);
	}
	// 2023-04-28 김동욱 1:1 문의 내역 삭제
	public int AdminMailFormDelete(String board_num) {
		return mapper.deleteMailFormDelete(board_num);
	}

}
