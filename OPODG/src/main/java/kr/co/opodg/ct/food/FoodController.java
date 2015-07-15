package kr.co.opodg.ct.food;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import util.constants.WebAppConstant;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FoodController {
	
	private static final Logger logger = LoggerFactory.getLogger(FoodController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "foodList.web")
	public String getList(Locale locale, Model model) {
		logger.info("FoodController_getList", locale);
		
		return "/category/food/foodList";
	}
	
	@RequestMapping(value = "foodDetail.web")
	public String getDetail(Locale locale, Model model) {
		logger.info("FoodController_getList", locale);
		
		return "/category/food/foodDetail";
	}
	
}
