package ms.com.msapp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
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
	public String home() {
		return "home";
	}
	
	//달력으로 매핑하기 (임시) 
	@RequestMapping(value = "/calendar.do")
	public String Calendar() {
		return "Calendar/Calendar";
	}
	
	
	@RequestMapping(value = "/insertMem")
	public String insertMember() {
		
		return "insert.mem";
	}
	
}
