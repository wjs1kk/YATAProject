package com.itwillbs.yata.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.yata.service.NoticeService;
import com.itwillbs.yata.vo.NoticeVO;

@Controller
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private NoticeService noticeService;

	// 공지사항 글쓰기
	@GetMapping("write.no")
	public String writeForm() {
		return "notice/write_form";
	}

	@PostMapping("writePro.no")
	public String writePro(NoticeVO notice) {
		int insertCount = noticeService.registNotice(notice);
		return "redirect:/notice";
	}

	// 공지사항 검색
	@GetMapping("search.no")
	public String noticeSearch(String board_subject, Model model) {
		List<NoticeVO> noticeList = noticeService.searchByNotice(board_subject);
		model.addAttribute("noticeList", noticeList);
		return "notice/notice";
	}

	// 공지사항 뷰(폼)페이지
	@GetMapping("view.no")
	public String viewNotice(NoticeVO notice, Model model, String board_num) {
		notice = noticeService.getNotice(board_num);
		model.addAttribute("notice", notice);
		return "notice/view_notice_form";
	}
	
	@GetMapping("deleteView.no")
	public String deleteNoticeView(int board_num, Model model) {
		int deleteCount = noticeService.deleteNoticeView(board_num);
		if (deleteCount > 0) {
			model.addAttribute("msg", "삭제 완료!");
			model.addAttribute("target", "redirect:/");
			return "redirect:/customer_service";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}

}
