package com.sy.member;

public class MemberVO {
	
	private int memNo;
	private String email;
	private String password;
	private String nickName;
	private String photoPath;
	private int su;
	private int kind;
	
	public MemberVO() {}
	public MemberVO(int memNo, String email, String password, String nickName, String photoPath, int su, int kind) {
		this.memNo = memNo;
		this.email = email;
		this.password = password;
		this.nickName = nickName;
		this.photoPath = photoPath;
		this.su = su;
		this.kind = kind;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	
}
