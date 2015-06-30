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
		int rowNum = WebAppConstant.LIST_CNT_NOTIFICATION;
		String nextPageNum = request.getParameter("nextPageNum");
		logger.info("NotificationController goList() nextPageNum:{}.", nextPageNum);
		System.out.println("nextPageNum:1:"+nextPageNum);
		if(nextPageNum==null){
			nextPageNum="0";
		}
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		int totalCnt =0;
		nextPage=WebAppConstant.JSP_NOTICE_LIST;
		ArrayList arr = null;
		HashMap hm = new HashMap();
		int start = 0;
		int end = 0;
		start = Integer.parseInt(nextPageNum) * rowNum;
		end = start+rowNum;
		System.out.println("start::"+start+"//end::"+end);
		hm.put("start", start);
		hm.put("end", end);
		totalCnt = Integer.parseInt((String)query.selectOne("notification.getNoticeCnt"));
		arr = (ArrayList) query.selectList("notification.getNoticeList",hm);
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		mv.addObject("arr", arr );
		mv.addObject("totalCnt",totalCnt);
		mv.addObject("currentPage",nextPageNum);
		
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_DETAIL)
	public ModelAndView goDetail( HttpServletRequest request, HttpServletResponse response) throws Exception{

		String page = request.getParameter("page");
		String seq = request.getParameter("seq");
		logger.info("NotificationController goBoard() code:{}.", seq);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		HashMap hm = new HashMap();
		nextPage=WebAppConstant.JSP_NOTICE_DETAIL;
		hm.put("seq", "'"+seq+"'");
		hm = query.selectOne("notification.getNoticeDetail", hm);
		mv.addObject("hm", hm );
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_INSERT_FORM)
	public ModelAndView goInsertForm( HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("NotificationController goInsertForm() code:{}.");
		ModelAndView mv = new ModelAndView();
		String nextPage = WebAppConstant.JSP_NOTICE_INSERT_FORM;
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);			
		return mv;		
	}
	
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_INSERT)
	public String goInsert( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		HashMap hm = new HashMap();
		hm.put("category", "00");
		hm.put("title", title);
		hm.put("link_url", "");
		hm.put("content", contents);
		hm.put("search_yn", "Y");
		hm.put("search_end_date", "99991231");
		hm.put("reg_id", id);
		hm.put("reg_date", "20150628");
		query.insert("setNotice", hm);
		logger.info("NotificationController goInsert() code:{}.");	
		return "redirect:"+WebAppConstant.URL_NOTIFICATION_LIST;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_MODIFY_FORM)

	public ModelAndView goModifyForm( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String seq = request.getParameter("seq");
		logger.info("NotificationController goModifyForm() code:{}.", seq);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		HashMap hm = new HashMap();
		nextPage=WebAppConstant.JSP_NOTICE_MODIFY_FORM;
		hm.put("seq", "'"+seq+"'");
		hm = query.selectOne("notification.getNoticeDetail", hm);
		mv.addObject("hm", hm );
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage);
		
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_MODIFY)
	public String goModify( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String seq = request.getParameter("seq");
		logger.info("NotificationController goDelete() seq:{}.",seq);
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		HashMap hm = new HashMap();
		hm.put("seq", "'"+seq+"'");
		hm.put("category", "00");
		hm.put("title", title);
		hm.put("link_url", "");
		hm.put("content", contents);
		hm.put("search_yn", "Y");
		hm.put("search_end_date", "99991231");
		hm.put("reg_id", id);
		hm.put("reg_date", "20150930");
		hm.put("up_id", id);
		hm.put("up_date", "20150630");
		query.update("doModify", hm);
		return "redirect:"+WebAppConstant.URL_NOTIFICATION_LIST;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_DELETE)
	public String goDelete( HttpServletRequest request, HttpServletResponse response) throws Exception{
		String seq = request.getParameter("seq");
		logger.info("NotificationController goDelete() seq:{}.",seq);
		HashMap hm = new HashMap();
		hm.put("seq", "'"+seq+"'");
		query.delete("delNotice", hm);
		return "redirect:"+WebAppConstant.URL_NOTIFICATION_LIST;		
	}
	
}