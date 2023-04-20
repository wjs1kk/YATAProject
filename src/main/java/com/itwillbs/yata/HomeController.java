package com.itwillbs.yata;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.yata.service.CsService;
import com.itwillbs.yata.service.NoticeService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.MailFormVO;
import com.itwillbs.yata.vo.NoticeVO;
import com.itwillbs.yata.vo.ReviewVO;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	@Autowired
	private ReviewService service;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private CsService csService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<ReviewVO> reviewList = service.getReview();
	    model.addAttribute("review", reviewList);
	    return "index";
	}
	
	
	@GetMapping("event")
	public String event() {
		return "notice/event";
	}
	@GetMapping("notice")
	public String notice(Model model) {
		// 공지사항 리스트
		List<NoticeVO> noticeList = noticeService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/notice";
	}
	@GetMapping("customer_service")
	public String customer_service(Model model, MailFormVO mailForm) {
		// 자주묻는질문 리스트
		List<NoticeVO> csList = csService.getCsList();
		model.addAttribute("csList", csList);

		// 1:1문의 리스트
		List<MailFormVO> mailFormList = csService.getMailFormList();
		model.addAttribute("mailFormList", mailFormList);

		return "customer/customer_service";
	}
}
