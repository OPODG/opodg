package kr.co.opodg.introduction.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import util.constants.WebAppConstant;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IntroductionController {
	
	private static final Logger logger = LoggerFactory.getLogger(IntroductionController.class);
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = WebAppConstant.URL_INTRODUCTION)
	public ModelAndView goIntroduction( HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("mapController goIntroduction() page:{}.", "");
		ModelAndView mv = new ModelAndView();
		
		String nextPage=WebAppConstant.JSP_INTRODUCTION;

		mv.setViewName(WebAppConstant.CT_INTRODUCTION+nextPage);
		return mv;		
	}
}