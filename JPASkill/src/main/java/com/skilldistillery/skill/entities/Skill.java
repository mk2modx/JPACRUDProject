package com.skilldistillery.skill.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Skill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="skill_name")
	private String name;
	
	private String description;
	
	private String proficiency;
	@Column(name="point_value")
	private int pointValue;
	
	private String link;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

		
	
	public Skill(int id, String name, String description, String proficiency, int pointValue, String link) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.proficiency = proficiency;
		this.pointValue = pointValue;
		this.link = link;
	}

	public Skill(int id) {
		super();
		this.id = id;
	}

public Skill() {
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getProficiency() {
	return proficiency;
}

public void setProficiency(String proficiency) {
	this.proficiency = proficiency;
}

public int getPointValue() {
	return pointValue;
}

public void setPointValue(int pointValue) {
	this.pointValue = pointValue;
}

public String getLink() {
	return link;
}

public void setLink(String link) {
	this.link = link;
}

@Override
public String toString() {
	return "Skill [id=" + id + ", name=" + name + ", description=" + description + ", proficiency=" + proficiency
			+ ", pointValue=" + pointValue + ", link=" + link + "]";
}
	

}
