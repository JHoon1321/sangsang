package com.gr.ssgb.paymentList.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gr.ssgb.paymentList.model.PaymentListService;
import com.gr.ssgb.paymentList.model.PaymentListVO;

@Controller
@RequestMapping("/dashboard/user")
public class PaymentListController {	
	private static final Logger logger
	=LoggerFactory.getLogger(PaymentListController.class);

	private final PaymentListService paymentListService;

	//DI - 생성자에 의한 종속객체 주입
	@Autowired
	public PaymentListController(PaymentListService paymentListService) {
		this.paymentListService = paymentListService;
		logger.info("내 결제목록 생성자주입");
	}
	
	@RequestMapping("/payment") 
	public String paymentList() { 
		return "dashboard/user/payment/payment";
	}
	
	@RequestMapping("/payment/list")
	public String pmList(Model model) {
		//1. 파라미터 읽어오기 - 출력
		logger.info("내 결제목록 페이지");
		
		//2. db작업 => 매퍼 xml에서 작업, dao, service, serviceImpl
		List<PaymentListVO> list=paymentListService.selectPaymentListAll();
		logger.info("내 결제목록 조회,결과 list.size={}", list.size());
		
		//3. model에 결과 저장
		model.addAttribute("list", list);
		
		//4. 뷰페이지 리턴
		return "dashboard/user/payment/list";
	}
	
/*
	
	@RequestMapping(value="/write.do", method = RequestMethod.GET)
	public String write_get() {
		logger.info("글쓰기 화면");

		return "balancing/write";
	}

	@RequestMapping(value="/write.do", method = RequestMethod.POST)
	public String write_post(@ModelAttribute BalancingVO balancingVo) {
		//1
		logger.info("글쓰기 처리, 파라미터 vo={}", balancingVo);

		//2
		int cnt=balancingService.insertBoard(balancingVo);
		logger.info("글쓰기 결과, cnt={}", cnt);

		//3		

		//4
		return "redirect:/balancing/list.do";
	} 
	@RequestMapping("/balancing/list")
	public String list(@ModelAttribute SearchVO searchVo, Model model) {
		//1
		logger.info("글목록, 파라미터 searchVo={}", searchVo);

		//2
		//searchVo에 firstRecordIndex, recordCountPerPage 값을 넣어줘야 함
		//=> PaginationInfo를 이용하여 firstRecordIndex값을 미리 구한다

		//[1] PaginationInfo 객체 생성 - 계산해줌
		PaginationInfo pagingInfo = new PaginationInfo();
		pagingInfo.setBlockSize(ConstUtil.BLOCK_SIZE);
		pagingInfo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		pagingInfo.setCurrentPage(searchVo.getCurrentPage());

		//[2] searchVo에 값 셋팅
		searchVo.setRecordCountPerPage(ConstUtil.RECORD_COUNT);
		searchVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
		logger.info("값 셋팅 후 searchVo={}", searchVo);

		List<BalancingVO> list=balancingService.selectAll(searchVo);
		logger.info("전체조회 결과 list.size={}", list.size());

		//[3] totalRecord 구하기
		int totalRecord=balancingService.selectTotalRecord(searchVo);
		pagingInfo.setTotalRecord(totalRecord);

		//3. model에 결과 저장
		model.addAttribute("list", list);
		model.addAttribute("pagingInfo", pagingInfo);

		//4. 뷰페이지 리턴
		return "dashboard/balancing/balancing";
	}

	@RequestMapping("/detail.do")
	public String detail(@RequestParam(defaultValue = "0") int no, Model model) {
		logger.info("글 상세보기 파라미터 no={}", no);

		if(no==0) {
			model.addAttribute("msg", "잘못된 url입니다.");
			model.addAttribute("url", "/balancing/list.do");

			return "common/message";
		}

		BalancingVO vo=balancingService.selectByNo(no);
		logger.info("상세보기 결과 vo={}", vo);

		model.addAttribute("vo", vo);

		return "balancing/detail";
	}
*/




}
