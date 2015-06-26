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
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_LIST)
	public ModelAndView goList( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String page = request.getParameter("page");
		String code = request.getParameter("code");
		String currentPage = request.getParameter("currentPage");
		if(currentPage==null){
			currentPage="1";
		}
		logger.info("NotificationController goBoard() page:{}.", page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		int count =0;
		if("list".equals(page)){
			nextPage=WebAppConstant.JSP_NOTICE_LIST;
			ArrayList arr = null;
			HashMap hm = new HashMap();
			hm.put("ROW_CNT", 10);
			hm.put("PAGE", 1);
			if(WebAppConstant.KEB.equals(WebAppConstant.LOCATION)){
				count = query.selectOne("test.getAPT");
				arr = (ArrayList) query.selectList("test.getAPTList",hm);	
			}else{
				arr = (ArrayList) query.selectList("test.getAPTList");
			}
			mv.addObject("arr", arr );
		}else if("detail".equals(page)){
			nextPage=WebAppConstant.URL_NOTIFICATION_DETAIL;
			HashMap hm = new HashMap();
			hm.put("code", "");
			query.selectOne("getAPTDetail", hm);
		}
		System.out.println(">>>>>>>>>>>>>"+count);
		System.out.println(">>>>>>>>>>>>>"+currentPage);
		
		mv.addObject("count",count);
		mv.addObject("currentPage",currentPage);
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.JSP_NOTICE_DETAIL)
	public ModelAndView goDetail( HttpServletRequest request, HttpServletResponse response) throws Exception{

		String page = request.getParameter("page");
		String code = request.getParameter("code");
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
			hm.put("code", "'"+code+"'");
			hm = query.selectOne("getAPTDetail", hm);
			mv.addObject("hm", hm );
		}
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		mv.addObject("count", count );
		return mv;		
	}
}