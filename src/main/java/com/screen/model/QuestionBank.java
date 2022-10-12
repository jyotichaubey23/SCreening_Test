package com.screen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "question_bank")
public class QuestionBank {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "subject_name")
	private String subject;

	@Column(name = "question")
	private String question;

	@Column(name = "option_1")
	private String option1;
	
	@Column(name = "option_2")
	private String option2;

	@Column(name = "option_3")
	private String option3;

	@Column(name = "option_4")
	private String option4;

	@Column(name = "correct_option")
	private String correct_option;

	@Transient
	@Column(name = "extra_1")
	private String extra1;

	@Transient
	@Column(name = "extra_2")
	private String extra2;

	@Transient
	@Column(name = "extra_3")
	private String extra3;

	QuestionBank() {

	}

	public QuestionBank(int id, String subject, String question, String option1, String option2, String option3,
			String option4, String correct_option, String extra1, String extra2, String extra3) {
		super();
		this.id = id;
		this.subject = subject;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correct_option = correct_option;
		this.extra1 = extra1;
		this.extra2 = extra2;
		this.extra3 = extra3;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getQuestion() {
		return question.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ' ");
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getOption1() {
		return option1.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ' ");
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ' ");
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ' ");
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ' ");
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getCorrect_option() {
		return correct_option.replaceAll("\\r\\n|\\r|\\n|[^A-Z0-9]+/ig", "<br/>").replace("\"", " ");
	}

	public void setCorrect_option(String correct_option) {
		this.correct_option = correct_option;
	}

	public String getExtra1() {
		return extra1;
	}

	public void setExtra1(String extra1) {
		this.extra1 = extra1;
	}

	public String getExtra2() {
		return extra2;
	}

	public void setExtra2(String extra2) {
		this.extra2 = extra2;
	}

	public String getExtra3() {
		return extra3;
	}

	public void setExtra3(String extra3) {
		this.extra3 = extra3;
	}

	@Override
	public String toString() {
		return "QuestionBank [id=" + id + ", subject=" + subject + ", question=" + question + ", option1=" + option1
				+ ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", correct_option="
				+ correct_option + ", extra1=" + extra1 + ", extra2=" + extra2 + ", extra3=" + extra3 + "]";
	}

}
