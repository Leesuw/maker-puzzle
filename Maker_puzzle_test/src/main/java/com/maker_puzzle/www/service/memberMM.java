package com.maker_puzzle.www.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.maker_puzzle.www.baen.maker_profile;
import com.maker_puzzle.www.baen.memberBean;
import com.maker_puzzle.www.dao.ImemberDao;

@Service
public class memberMM {
	ModelAndView mav;
	
	@Autowired
	ImemberDao mDao;
	@Autowired
	private HttpSession session;
	
	public ModelAndView memberInsert(memberBean mb) {
		
		mav = new ModelAndView();
		
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		mb.setM_pw(pwdEncoder.encode(mb.getM_pw()));
		mb.getM_date();
		boolean f= false;
		f = mDao.getInsertmemeber(mb);
		
		if(f= true) {
			boolean t= false;
			t= mDao.getInsertmemberprofile(mb);
			
		}
		mav.setViewName("loginBox");
		return mav;
	}

	public ModelAndView norlogin(memberBean mb) {
		
		mav = new ModelAndView();
		String view = null;
		
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		
		
		String pwdEncode = mDao.getSecurityPwd(mb.getM_email());
		System.out.println("pwdEncode"+pwdEncode);
		if(pwdEncode != null) {
		
			if(pwdEncoder.matches(mb.getM_pw(), pwdEncode)) {
				
				mb= mDao.getMemberInfo(mb.getM_email());
				System.out.println("e-mail"+mb.getM_type());
				session.setAttribute("userId", mb.getM_email());
				session.setAttribute("type", mb.getM_type());
				mav.addObject("userId",  mav.addObject("userId", session.getAttribute("id")));
				view = "home";
			}else {
				view = "login";
			}
		}else {
			view = "login";
		}
		
		mav.setViewName(view);
		return mav;
	}

	

	public String logincheck() {
		
		String id = session.getAttribute("userId").toString();
		System.out.println("티티파파 : "+id);
		maker_profile mp =new maker_profile();
		mp = mDao.emailSelect(id);
		
		System.out.println("ssss:"+mp.getMpr_login_class());
		
		return mp.getMpr_login_class();
	}

	public String emailEffectivenessService(String email) {
		
		String data = null;
		String email2 = mDao.emailSelectCheck(email);
		System.out.println("email2 : "+email2);
		if(email2 == null) {
			data = "사용가능한 ID 입니다.";
		}else { 
			data = "이미 사용중인 아이디 입니다.";
		}
		
		return data;
	}

}
