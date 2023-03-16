package com.sy.vo;

public class SituationalVO {
	
	private int situNo;
	private String situation;
	
	public SituationalVO() {}
	public SituationalVO(int situNo, String situation) {
		this.situNo = situNo;
		this.situation = situation;
	}
	public int getSituNo() {
		return situNo;
	}
	public void setSituNo(int situNo) {
		this.situNo = situNo;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	
	
}
