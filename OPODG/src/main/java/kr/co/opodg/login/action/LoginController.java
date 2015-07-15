package kr.co.opodg.login.action;

import javax.servlet.http.HttpSession;

import kr.co.opodg.security.CustomUserDetails;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class LoginController {
     
    private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
     
    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "login.web", method = RequestMethod.GET)
    public String login(HttpSession session) {
        logger.info("Welcome login! {}", session.getId());
        return "/login_tmp/login";
    }
     
    @RequestMapping(value = "logout.web", method = RequestMethod.GET)
    public void logout(HttpSession session) {
        CustomUserDetails userDetails = (CustomUserDetails)session.getAttribute("userLoginInfo");
         
        logger.info("Welcome logout! {}, {}", session.getId(), userDetails.getUsername());
         
         
        session.invalidate();
    }
     
    @RequestMapping(value = "login_success.web", method = RequestMethod.GET)
    public String login_success(HttpSession session) {
        CustomUserDetails userDetails = (CustomUserDetails)SecurityContextHolder.getContext().getAuthentication().getDetails();
         
        logger.info("Welcome login_success! {}, {}", session.getId(), userDetails.getUsername() + "/" + userDetails.getPassword());
        session.setAttribute("userLoginInfo", userDetails);
        return "/login_tmp/login_success";
    }
    @RequestMapping(value = "login_fail.web", method = RequestMethod.GET)
    public String fail(HttpSession session) {
        logger.info("Welcome login_fail! {}, {}");
        return "/login_tmp/login_fail";
    }
      
    @RequestMapping(value = "page1.web", method = RequestMethod.GET)
    public String page1() {  
    	return "/login_tmp/page1";
    }
     
    @RequestMapping(value = "login_duplicate.web", method = RequestMethod.GET)
    public String login_duplicate() {    
        logger.info("Welcome login_duplicate!");
        return "/login_tmp/login_duplicate";
    }
     
}