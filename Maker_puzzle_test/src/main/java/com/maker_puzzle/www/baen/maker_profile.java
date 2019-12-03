package com.maker_puzzle.www.baen;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("maker_profile")
@Getter
@Setter
public class maker_profile {

	private String mpr_email;
	private String mpr_profile_orifilename;
	private String mpr_profile_sysfilename;
	private String mpr_job;
	private String mpr_major;
	private String mpr_activity;
	private String mpr_career;
	private String mpr_login_class;
}
