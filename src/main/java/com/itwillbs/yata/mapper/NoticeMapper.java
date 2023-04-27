package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.NoticeVO;

public interface NoticeMapper {
	// 공지사항 리스트 조회
		List<NoticeVO> getNoticeList(@Param("searchType") String searchType, 
									 @Param("searchKeyword") String searchKeyword, 
									 @Param("startRow") int startRow,
									 @Param("listLimit") int listLimit);
		// 공지사항 리스트 갯수 조회
		int getNoticeListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
		// 공지사항 검색
		List<NoticeVO> searchByNotice(String board_subject);
		// 공지사항 조회
		NoticeVO getNotice(@Param("board_num") String board_num);
}
