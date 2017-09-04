package com.mlg.easylife.base.utils;

import lombok.Getter;
import lombok.Setter;


@Setter@Getter
public class JSONResult {
	private boolean success = true;
	private String msg ;
	public JSONResult(boolean success, String msg) {
		this.success = success;
		this.msg = msg;
	}
	public JSONResult(String msg) {
		this.msg = msg;
	}
	public JSONResult() {
	}

}
