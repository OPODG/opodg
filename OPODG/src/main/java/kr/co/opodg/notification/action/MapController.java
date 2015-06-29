package kr.co.opodg.notification.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import util.constants.WebAppConstant;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = WebAppConstant.URL_MAP, method = RequestMethod.GET)
	public ModelAndView goMap( HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("mapController goMap() page:{}.", "");
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "map2";

		mv.setViewName("/map/"+nextPage);
		return mv;		
	}
}
