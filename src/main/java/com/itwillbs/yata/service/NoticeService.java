package com.itwillbs.yata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.yata.mapper.NoticeMapper;
import com.itwillbs.yata.vo.NoticeVO;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeMapper mapper;

	// 공지사항 리스트 조회
	public List<NoticeVO> getNoticeList(String searchType, String searchKeyword, int startRow, int listLimit) {
		return mapper.getNoticeList(searchType, searchKeyword, startRow, listLimit);
	}
	// 공지사항 리스트 갯수 조회
	public int getNoticeListCount(String searchType, String searchKeyword) {
		return mapper.getNoticeListCount(searchType, searchKeyword);
	}
	// 공지사항 검색
	public List<NoticeVO> searchByNotice(String board_subject) {
		return mapper.searchByNotice(board_subject);
	}
	// 공지사항 조회
	public NoticeVO getNotice(String board_num) {
		return mapper.getNotice(board_num);
	}
}
