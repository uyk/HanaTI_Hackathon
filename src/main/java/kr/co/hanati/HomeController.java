package kr.co.hanati;

import java.text.DateFormat;
import java.util.Date;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/newtab", method = RequestMethod.GET)
	public String newTab(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "newTab";
	}
	
	
	/* 모바일 카드 등록 화면 */
	@RequestMapping(value = "/mobile/card", method = RequestMethod.GET)
	public String mobileCard() {
		logger.info("카드 등록 화면 요청");
		return "mobile_card";
	}
	
	/* 모바일 카드 등록 */
	@RequestMapping(value = "/mobile/card/regist", method = RequestMethod.POST)
//	public ResponseEntity<String> mobileCardRegist(@RequestBody CardDao cardDao) {
	public ResponseEntity<String> mobileCardRegist() {
		logger.info("카드를 DB에 등록");
		// 카드 등록 서비스 호출
		//service.cardRegist("");		//카드정보 보내기
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	/* 모바일 알람 화면 */
	@RequestMapping(value = "/mobile/push", method = RequestMethod.GET)
	public String mobilePush() {
		logger.info("결제 요청 알림을 모바일로 보냄");
		return "mobile_push";
	}
	
}
