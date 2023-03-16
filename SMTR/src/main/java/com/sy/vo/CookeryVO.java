package com.sy.vo;

public class CookeryVO {

	private int cookeryNo;
	private String cookery;
	
	public CookeryVO() {}
	public CookeryVO(int cookeryNo, String cookery) {
		this.cookeryNo = cookeryNo;
		this.cookery = cookery;
	}
	public int getCookeryNo() {
		return cookeryNo;
	}
	public void setCookeryNo(int cookeryNo) {
		this.cookeryNo = cookeryNo;
	}
	public String getCookery() {
		return cookery;
	}
	public void setCookery(String cookery) {
		this.cookery = cookery;
	}
	
	
}
