package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.NoticeVO;

public interface CsMapper {
	// 자주묻는질문 리스트 조회
	List<NoticeVO> selectCsList();
	// 자주묻는질문 검색
	List<NoticeVO> searchByCs(String board_subject);
	
	// 1:1문의 리스트 조회
	List<MailFormVO> selectMyMail(@Param("member_email") String member_email, @Param("listLimit") int listLimit, @Param("startRow") int startRow);
	// 1:1문의 리스트 갯수 조회
	Integer selectMyMailCount(String member_email);
	// 1:1문의 조회
	MailFormVO getMailForm(@Param("board_num") int board_num);
	// 1:1문의 작성
	int insertMailForm(MailFormVO mailForm);
	// 1:1문의 삭제
	int deleteView(int board_num);
	
	//admin
	MailFormVO SelectMailFormDetail(int board_num);
	int insertMailformReply(MailFormVO mailform);
	void updateBoardProgress(MailFormVO mailform);
	int selectMailFormListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	List<MailFormVO> selectAdminMailFormList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	List<MailFormVO> selectAdminUnansweredMailFormList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	int selectUnansweredMailFormListCount(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword);
	// 2023-04-28 김동욱 - 1:1 문의 답변 삭제
	int deleteMailFormDelete(String board_num);
}
