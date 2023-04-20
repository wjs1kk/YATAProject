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
	
	public int registNotice(NoticeVO board) {
		return mapper.insertNotice2(board);
	}
	
	public List<NoticeVO> getNoticeList() {
		
		return mapper.selectNoticeList();
	}
	public List<NoticeVO> searchByNotice(String board_subject) {
		return mapper.searchByNotice(board_subject);
	}

	public NoticeVO getNotice(String board_num) {
		return mapper.getNotice(board_num);
	}

	public int deleteNoticeView(int board_num) {
		return mapper.deleteNoticeView(board_num);
	}
}
