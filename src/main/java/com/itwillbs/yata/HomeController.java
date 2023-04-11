package com.itwillbs.yata;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.yata.service.*;
import com.itwillbs.yata.vo.*;

@Controller
public class HomeController {

	@Autowired
	private ReviewService service;

	@GetMapping("/")
	public String home(Model model) {
		List<ReviewVO> reviewList = service.getReview();
	    System.out.println(reviewList);
	    model.addAttribute("review", reviewList);
	    return "index";
	}
	
	@GetMapping("event")
	public String event() {
		return "notice/event";
	}

	@GetMapping("notice_view")
	public String notice_view() {
		return "notice/notice_view";
	}

	@GetMapping("customer_service")
	public String notice_service() {
		return "customer/customer_service";
	}
}
