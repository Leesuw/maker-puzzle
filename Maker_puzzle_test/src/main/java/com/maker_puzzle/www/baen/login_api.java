package com.maker_puzzle.www.baen;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("loginapi")
@Getter
@Setter
public class login_api {
	private String la_class;
	private String la_kind;

}
