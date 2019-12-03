package com.maker_puzzle.www.baen;


import org.apache.ibatis.type.Alias;
import lombok.Getter;
import lombok.Setter;

@Alias("memberBean")
@Getter
@Setter
public class memberBean {
	
	
	private String m_email;
	
	private String m_pw;
	private String m_acceptance;
	private String m_marketing;
	private String m_type;
	private int m_date;
	private String mpr_nicname;
	private String mpr_gender;
}
