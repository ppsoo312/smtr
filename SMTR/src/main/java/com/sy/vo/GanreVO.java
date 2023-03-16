package com.sy.vo;

public class GanreVO {
	
	private int ganreNo;
	private String ganre;
	
	public GanreVO() {}
	public GanreVO(int ganreNo, String ganre) {
		this.ganreNo = ganreNo;
		this.ganre = ganre;
	}
	public int getGanreNo() {
		return ganreNo;
	}
	public void setGanreNo(int ganreNo) {
		this.ganreNo = ganreNo;
	}
	public String getGanre() {
		return ganre;
	}
	public void setGanre(String ganre) {
		this.ganre = ganre;
	}
	
	
}
