package com.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Feed {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String feedback;

	public Feed(String feedback) {
	super();
	this.feedback = feedback;
}
	public String getFeedback() {
	return feedback;
}
public void setFeedback(String feedback) {
	this.feedback = feedback;
}
	public Feed() {
		// TODO Auto-generated constructor stub
	}

}
