package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.NoticeVO;

public interface NoticeMapper {
	int insertNotice(NoticeVO notice);
	int selectMaxNoticeNum();
	int insertNotice2(NoticeVO notice);
	List<NoticeVO> selectNoticeList();
	List<NoticeVO> searchByNotice(String board_subject);
	int deleteNoticeView(int board_num);
	NoticeVO getNotice(@Param("board_num") String board_num);
}
