package com.rin;

public class Student{
	private String id;
	private String name;
	public Student(String id, String name) {
		
		this.id = id;
		this.name = name;
	}
	public Student() {
		
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + "]";
	}
	
	
}