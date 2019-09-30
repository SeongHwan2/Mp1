package kr.sw.web.beans;

import javax.validation.constraints.NotEmpty;


public class joinBean {
	
	@NotEmpty 
	private String id;
	@NotEmpty
	private String password;
	private String nickname;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Override
	public String toString() {
		return "loginBean [id=" + id + ", password=" + password + ", nickname=" + nickname + "]";
	}
	
	
}
