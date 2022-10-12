package com.screen.model;

import java.beans.Transient;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.OptimisticLock;

@Entity
@Table(name = "user_info")
public class UserInfo implements Serializable {

	private static final long serialVersionUID = 296869408995710267L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "first_name")
	private String fname;
	
	@Column(name = "last_name")
	private String lname;
	
	@Column(name = "dob_user")
	private String dob;
	
	@Column(name = "tenth_per")
	private String per10;
	
	@Column(name = "twelve_per")
	private String per12;
	
	@Column(name = "course")
	private String course;
	
	@Column(name = "course_per")
	private String courseper;
	
	@Column(name = "college_name")
	private String college;
	
	@Column(name = "email")
	private String emails;

	@Column(name = "mobile_no")
	private String contact;
	
	@Column(name = "login_enabled")
	private boolean loginenabled;
	
	@Column(name = "test_status")
	private boolean teststatus;

	@Column(name = "username")
	private String username;
	
	@Column(name = "password")
	private String password;

	@Column(name = "passing_year")
	private String passing_year;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "role")
	private String role;

	@Column(name = "module1")
	private String module1;
	
	@Column(name = "module2")
	private String module2;
	
	@Column(name = "module3")
	private String module3;
	
	@OptimisticLock(excluded = true)
	@Column(name = "module1_score")
	private Integer module1_score;
	
	@OptimisticLock(excluded = true)
	@Column(name = "module2_score")
	private Integer module2_score;
	
	@OptimisticLock(excluded = true)
	@Column(name = "module3_score")
	private Integer module3_score;

	@Column(name = "total_score")
	private Integer scores;
	
	@Column(name = "result_status")
	private String status;

	public UserInfo() {

	}

	public UserInfo(int id, String fname, String lname, String dob, String per10, String per12, String course,
			String courseper, String college, String emails, String contact, boolean loginenabled, boolean teststatus,
			String username, String password, String passing_year, String gender, String role, String module1,
			String module2, String module3, Integer module1_score, Integer module2_score, Integer module3_score,
			Integer scores, String status) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.dob = dob;
		this.per10 = per10;
		this.per12 = per12;
		this.course = course;
		this.courseper = courseper;
		this.college = college;
		this.emails = emails;
		this.contact = contact;
		this.loginenabled = loginenabled;
		this.teststatus = teststatus;
		this.username = username;
		this.password = password;
		this.passing_year = passing_year;
		this.gender = gender;
		this.role = role;
		this.module1 = module1;
		this.module2 = module2;
		this.module3 = module3;
		this.module1_score = module1_score;
		this.module2_score = module2_score;
		this.module3_score = module3_score;
		this.scores = scores;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	@Transient
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@Transient
	public String getPer10() {
		return per10;
	}

	public void setPer10(String per10) {
		this.per10 = per10;
	}

	@Transient
	public String getPer12() {
		return per12;
	}

	public void setPer12(String per12) {
		this.per12 = per12;
	}

	@Transient
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	@Transient
	public String getCourseper() {
		return courseper;
	}

	public void setCourseper(String courseper) {
		this.courseper = courseper;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getEmails() {
		return emails;
	}

	public void setEmails(String emails) {
		this.emails = emails;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Transient
	public boolean isLoginenabled() {
		return loginenabled;
	}

	public void setLoginenabled(boolean loginenabled) {
		this.loginenabled = loginenabled;
	}

	@Transient
	public boolean isTeststatus() {
		return teststatus;
	}

	public void setTeststatus(boolean teststatus) {
		this.teststatus = teststatus;
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

	@Transient
	public String getPassing_year() {
		return passing_year;
	}

	public void setPassing_year(String passing_year) {
		this.passing_year = passing_year;
	}

	@Transient
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Transient
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Transient
	public String getModule1() {
		return module1;
	}

	public void setModule1(String module1) {
		this.module1 = module1;
	}

	@Transient
	public String getModule2() {
		return module2;
	}

	public void setModule2(String module2) {
		this.module2 = module2;
	}

	@Transient
	public String getModule3() {
		return module3;
	}

	public void setModule3(String module3) {
		this.module3 = module3;
	}

	@Transient
	public Integer getmodule1_score() {
		return module1_score;
	}

	public void setmodule1_score(Integer module1_score) {
		this.module1_score = module1_score;
	}

	@Transient
	public Integer getmodule2_score() {
		return module2_score;
	}

	public void setmodule2_score(Integer module2_score) {
		this.module2_score = module2_score;
	}

	@Transient
	public Integer getmodule3_score() {
		return module3_score;
	}

	public void setmodule3_score(Integer module3_score) {
		this.module3_score = module3_score;
	}

	@Transient
	public Integer getScores() {
		return scores;
	}

	public void setScores(Integer scores) {
		this.scores = scores;
	}

	@Transient
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", per10=" + per10
				+ ", per12=" + per12 + ", course=" + course + ", courseper=" + courseper + ", college=" + college
				+ ", emails=" + emails + ", contact=" + contact + ", loginenabled=" + loginenabled + ", teststatus="
				+ teststatus + ", username=" + username + ", password=" + password + ", passing_year=" + passing_year
				+ ", gender=" + gender + ", role=" + role + ", module1=" + module1 + ", module2=" + module2
				+ ", module3=" + module3 + ", module1_score=" + module1_score + ", module2_score=" + module2_score
				+ ", module3_score=" + module3_score + ", scores=" + scores + ", status=" + status + "]";
	}

}