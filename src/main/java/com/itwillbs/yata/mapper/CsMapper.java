package com.itwillbs.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.NoticeVO;

public interface CsMapper {
	int insertCs(NoticeVO cs);
	int selectMaxCsNum();
	int insertCs2(NoticeVO cs);
	List<NoticeVO> selectCsList();
	List<NoticeVO> searchByCs(String board_subject);
	List<MailFormVO> selectMailFormList();
	int insertMailForm2(MailFormVO mailForm);
	int deleteView(int board_num);
	MailFormVO getMailForm(@Param("board_num") String board_num);
	int deleteCsView(int board_num);
	NoticeVO getCs(@Param("board_num") String board_num);
}
