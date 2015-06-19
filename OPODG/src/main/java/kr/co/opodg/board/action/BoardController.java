package kr.co.opodg.board.action;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
    private SqlSession query;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/board.web", method = RequestMethod.GET)
	public ModelAndView goBoard( HttpServletRequest request, HttpServletResponse response, @RequestParam(value="page", required=true) String page) throws Exception{
		logger.info("BoardController goBoard() page:{}.", page);
		ModelAndView mv = new ModelAndView();
		
		String nextPage = "";
		String count ="k";
		if("list".equals(page)){
			nextPage="list";
			count = query.selectOne("test.getAPT");
			ArrayList arr = (ArrayList) query.selectList("test.getAPTList");
			mv.addObject("arr", arr );
		}
		mv.setViewName("/board/"+nextPage);
		mv.addObject("count", count );
		return mv;		
	}
}
