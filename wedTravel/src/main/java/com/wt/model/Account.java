package com.wt.model;

import java.io.Serializable;

public class Account implements Serializable {

	private static final long serialVersionUID = -7970848646314840509L;

	private Integer id;
	private String username;
	private String password;
	private int enabled;
	public Account() {
		super();
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public int getEnabled() {
		return enabled;
	}


	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	
	

}