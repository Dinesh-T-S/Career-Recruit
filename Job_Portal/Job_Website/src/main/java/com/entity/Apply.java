package com.entity;

public class Apply {
	
	private int id;
	private String name;
	private String qua;
	private String email;
	private String mark;
	private String skills;
	private String city;
	private String university;
	private String cgpa;
	private String interest;
	private String phonenumber;
	private String company;
	private String project;
	
	
	public Apply(String name, String qua, String email, String mark, String skills, String city, String university,
			String cgpa, String interest, String phonenumber, String company, String project) {
		super();
		this.name = name;
		this.qua = qua;
		this.email = email;
		this.mark = mark;
		this.skills = skills;
		this.city = city;
		this.university = university;
		this.cgpa = cgpa;
		this.interest = interest;
		this.phonenumber = phonenumber;
		this.company = company;
		this.project = project;
	}
	public Apply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQua() {
		return qua;
	}
	public void setQua(String qua) {
		this.qua = qua;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
	public String getCgpa() {
		return cgpa;
	}
	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}




}
