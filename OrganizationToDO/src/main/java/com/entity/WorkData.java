package com.entity;

public class WorkData {
	private int id;
	private String co_name;
	private String description;
	private String git_url;

	public int getId() {
		return id;
	}

	public WorkData() {
		super();
	}

	public WorkData(String co_name, String description, String git_url) {
		super();
		this.co_name = co_name;
		this.description = description;
		this.git_url = git_url;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCo_name() {
		return co_name;
	}

	public void setCo_name(String co_name) {
		this.co_name = co_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGit_url() {
		return git_url;
	}

	public void setGit_url(String git_url) {
		this.git_url = git_url;
	}

	@Override
	public String toString() {
		return "work [id=" + id + ", co_name=" + co_name + ", description=" + description + ", git_url=" + git_url
				+ "]";
	}
}
