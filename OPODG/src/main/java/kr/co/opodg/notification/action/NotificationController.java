package kr.co.opodg.notification.action;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp;
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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

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
			currentPage="0";
		}
		logger.info("NotificationController goBoard() page:{}.::"+WebAppConstant.LOCATION, page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		int count =0;
		nextPage=WebAppConstant.JSP_NOTICE_LIST;
		ArrayList arr = null;
		HashMap hm = new HashMap();
		if(WebAppConstant.KEB.equals(WebAppConstant.LOCATION)){
			hm.put("ROW_CNT", 10);
			hm.put("PAGE", 1);
			count = query.selectOne("test.getAPT");
			arr = (ArrayList) query.selectList("test.getAPTList",hm);	
		}else{
			hm.put("off", 0);
			hm.put("row", 10);
			count = Integer.parseInt((String)query.selectOne("notification.getNoticeCnt"));
			arr = (ArrayList) query.selectList("notification.getNoticeList");
		}
		mv.addObject("arr", arr );
		mv.addObject("count",count);
		mv.addObject("currentPage",currentPage);
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage+"_"+WebAppConstant.LOCATION);
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_DETAIL)
	public ModelAndView goDetail( HttpServletRequest request, HttpServletResponse response) throws Exception{

		String page = request.getParameter("page");
		String code = request.getParameter("code");
		logger.info("NotificationController goBoard() code:{}.", code);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		HashMap hm = new HashMap();
		if(WebAppConstant.KEB.equals(WebAppConstant.LOCATION)){
			nextPage=WebAppConstant.JSP_NOTICE_DETAIL;
			hm.put("code", "'"+code+"'");
			hm = query.selectOne("getAPTDetail", hm);
			mv.addObject("hm", hm );
		}else{
			nextPage=WebAppConstant.JSP_NOTICE_DETAIL;
			hm.put("seq", "'"+code+"'");
			hm = query.selectOne("notification.getNoticeDetail", hm);
			mv.addObject("hm", hm );
			logger.info("NotificationController godetail."+hm);
			logger.info("NotificationController godetail."+hm.get("seq"));
		}
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage+"_"+WebAppConstant.LOCATION);
		return mv;		
	}
	@RequestMapping(value = WebAppConstant.URL_NOTIFICATION_INSERT_FORM)
	public ModelAndView goInsertForm( HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("NotificationController goInsertForm() code:{}.");
		ModelAndView mv = new ModelAndView();
		String nextPage = WebAppConstant.JSP_NOTICE_INSERT_FORM;
		System.out.println(WebAppConstant.CT_NOTIFICATION+nextPage+"_"+WebAppConstant.LOCATION);
		mv.setViewName(WebAppConstant.CT_NOTIFICATION+nextPage+"_"+WebAppConstant.LOCATION);
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