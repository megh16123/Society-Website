package com.entities;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Member{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String firstName;
private String lastName;
private String username;
public Member(String firstName, String lastName, String username, String password, char block) {
	super();
	this.firstName = firstName;
	this.lastName = lastName;
	this.username = username;
	this.password = password;
	this.block = block;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
private String password;
private char block;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public char getBlock() {
	return block;
}
public void setBlock(char block) {
	this.block = block;
}
public Member() {
	super();
	// TODO Auto-generated constructor stub
}
}
