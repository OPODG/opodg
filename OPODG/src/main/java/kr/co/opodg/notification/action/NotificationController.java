package kr.co.opodg.notification.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import util.constants.WebAppConstant;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NotificationController {
	
	private static final Logger logger = LoggerFactory.getLogger(NotificationController.class);
	@Autowired
    private SqlSession query;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_LIST, method = RequestMethod.GET)
	public ModelAndView goBoard( HttpServletRequest request, HttpServletResponse response, @RequestParam(value="page", required=true) String page) throws Exception{
		logger.info("NotificationController goBoard() page:{}.", page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		String count ="k";
		if("list".equals(page)){
			nextPage=WebAppConstant.JSP_NOTICE_LIST;
			count = query.selectOne("test.getAPT");
			ArrayList arr = (ArrayList) query.selectList("test.getAPTList");
			mv.addObject("arr", arr );
		}else if("detail".equals(page)){
			nextPage=WebAppConstant.URL_NOTIFICATION_DETAIL;
			HashMap hm = new HashMap();
			hm.put("code", "");
			query.selectOne("getAPTDetail", hm);
		}
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		mv.addObject("count", count );
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.JSP_NOTICE_DETAIL, method = RequestMethod.GET)
	public ModelAndView goBoard( HttpServletRequest request, HttpServletResponse response, @RequestParam(value="page", required=true) String page, @RequestParam(value="code", required=true) String code) throws Exception{
		logger.info("NotificationController goBoard() page:{}.", page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		String count ="k";
		if("list".equals(page)){
			nextPage=WebAppConstant.JSP_NOTICE_LIST;
			count = query.selectOne("getNoticeCnt");
			ArrayList arr = (ArrayList) query.selectList("test.getAPTList");
			mv.addObject("arr", arr );
		}else if("detail".equals(page)){
			nextPage=WebAppConstant.JSP_NOTICE_DETAIL;
			HashMap hm = new HashMap();
			hm.put("code", code);
			hm = query.selectOne("getAPTDetail", hm);
			mv.addObject("hm", hm );
		}
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		mv.addObject("count", count );
		return mv;		
	}
	
	@RequestMapping(value = "/detail1.web", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView goBoardDetail1( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String page = request.getParameter("page");
		String code = request.getParameter("code");
		logger.info("NotificationController goBoardDetail1() page:{}.", page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		String count ="k";
		if("list".equals(page)){
			nextPage=WebAppConstant.JSP_NOTICE_LIST;
			count = query.selectOne("test.getAPT");
			ArrayList arr = (ArrayList) query.selectList("test.getAPTList");
			mv.addObject("arr", arr );
		}else if("detail".equals(page)){
			nextPage=WebAppConstant.URL_NOTIFICATION_DETAIL;
			HashMap hm = new HashMap();
			hm.put("code", code);
			hm = query.selectOne("getAPTDetail", hm);
			mv.addObject("hm", hm );
		}
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		mv.addObject("count", count );
		return mv;		
	}
}