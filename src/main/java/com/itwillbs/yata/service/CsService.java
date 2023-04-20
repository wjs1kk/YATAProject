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

	public int registCs(NoticeVO cs) {
		return mapper.insertCs2(cs);
	}

	public List<NoticeVO> getCsList() {
		return mapper.selectCsList();
	}

	public List<NoticeVO> searchByCs(String board_subject) {
		return mapper.searchByCs(board_subject);
	}

	public List<MailFormVO> getMailFormList() {
		return mapper.selectMailFormList();
	}

	public int registMailForm(MailFormVO mailForm) {
		int listLimit = 10;
		int pageNum = 1;

		return mapper.insertMailForm2(mailForm);
	}

	public int deleteView(int board_num) {
		return mapper.deleteView(board_num);
	}

	public MailFormVO getMailForm(String board_num) {
		return mapper.getMailForm(board_num);
	}

	public int deleteCsView(int board_num) {
		return mapper.deleteCsView(board_num);
	}

	public NoticeVO getCs(String board_num) {
		return mapper.getCs(board_num);
	}

}
