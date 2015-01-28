package com.jason.sample;

public class Getname {
	
	private String name,age,pass;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "Getname [name=" + name + ", age=" + age + ", pass=" + pass
				+ "]";
	}
	
	

}
