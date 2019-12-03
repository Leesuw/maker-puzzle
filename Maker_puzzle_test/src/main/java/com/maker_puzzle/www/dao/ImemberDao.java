package com.maker_puzzle.www.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.maker_puzzle.www.baen.maker_profile;
import com.maker_puzzle.www.baen.memberBean;


@Repository
public interface ImemberDao {

	boolean getInsertmemeber(memberBean mb);

	boolean getInsertmemberprofile(memberBean mb);

	String getSecurityPwd(String m_email);

	memberBean getMemberInfo(String m_email);

	boolean getKakaoInsert(@Param("email") Object email);
	void getKakaoprofileInsert(@Param("email")Object email, @Param("nickname") Object nickname);

	String memberSelete(@Param("email")Object email);

	maker_profile emailSelect(@Param("id") String id);

	String emailSelectCheck(String email);




	
}
