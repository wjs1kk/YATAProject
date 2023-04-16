package com.itwillbs.yata.mapper;

import java.util.List;

import com.itwillbs.yata.vo.NoticeVO;

public interface NoticeMapper {
	int insertNotice(NoticeVO notice);
	int selectMaxNoticeNum();
	int insertNotice2(NoticeVO notice);
	List<NoticeVO> selectNoticeList();
}
