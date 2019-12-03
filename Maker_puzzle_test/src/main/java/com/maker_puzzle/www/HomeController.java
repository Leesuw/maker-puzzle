package com.maker_puzzle.www;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.maker_puzzle.www.baen.memberBean;
import com.maker_puzzle.www.dao.ImemberDao;
import com.maker_puzzle.www.service.KakaoAPI;
import com.maker_puzzle.www.service.memberMM;


@Controller
public class HomeController {
	
	ModelAndView mav;
	@Autowired
	HttpSession session;
	
	@Autowired
	KakaoAPI kakao;
	
	@Autowired
	memberMM mm;
	
	@Autowired
	ImemberDao mDao;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homemove() {
		
		return "home";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		mav= new ModelAndView();
		mav.setViewName("loginBox");
		return mav;
	}
	
	@RequestMapping(value="/login/kakaologin")
    public ModelAndView login(@RequestParam("code") String code) {
		ModelAndView mav = new ModelAndView();
		 kakao = new KakaoAPI(); 
		 String access_Token =kakao.getAccessToken(code); 
		 HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		    System.out.println("login Controller : " + userInfo);
		    
		   
		
		  if (userInfo.get("email") != null) {
		  session.setAttribute("userId", userInfo.get("email"));
		  session.setAttribute("access_Token", access_Token); 
		  
		  System.out.println("123123 : "+userInfo.get("email"));
		  System.out.println("123123222 : "+userInfo.get("nickname"));
		  
		  String em= mDao.memberSelete(userInfo.get("email"));
		  
		  if(em == null) {
			boolean f= false;
			  f = mDao.getKakaoInsert(userInfo.get("email"));
			  if(f) {
			  mDao.getKakaoprofileInsert(userInfo.get("email"),userInfo.get("nickname"));
			  }
		  }
		 }
		 System.out.println("session_E"+session.getAttribute("userId"));
		 mav.addObject("userId", session.getAttribute("userId"));
		 mav.setViewName("home");
		 return mav;  
    }
    @RequestMapping(value = "/joinFrm", method = RequestMethod.GET)
	public ModelAndView joinFrm(HttpServletRequest request,HttpServletResponse response) {
		mav= new ModelAndView();
		Cookie[] cookies = request.getCookies();

		if(cookies != null){

		for(int i=0; i< cookies.length; i++){

		cookies[i].setMaxAge(0); // ��ȿ�ð��� 0���� ����

		response.addCookie(cookies[i]); // ���� ����� �߰�
			}
		}
		mav.setViewName("norjoinFrm");
		return mav;
	}
	@RequestMapping(value = "/join", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView join(memberBean mb) {
		mav= new ModelAndView();
		
		mav = mm.memberInsert(mb);
		
		return mav;
	}
	@RequestMapping(value = "/norlogin", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView norlogin(memberBean mb) {
		mav= new ModelAndView();
		System.out.println("mb.getM_email()"+mb.getM_email());
		mav = mm.norlogin(mb);
		
		return mav;
	}
	@RequestMapping(value="/login/logout")
	public ModelAndView logout(HttpSession session) {
		
		mav= new ModelAndView();
		
		String logincheck = mm.logincheck();
		
		if(logincheck == "Naver") {
		 KakaoAPI kakao = new KakaoAPI(); 
	    kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
		}
	    session.removeAttribute("userId");
	    System.out.println("userID??? : "+session.getAttribute("userId"));
	    
	    mav.setViewName("redirect:/");
	    return mav;
	}
}
