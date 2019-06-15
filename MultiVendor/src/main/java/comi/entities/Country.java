package comi.entities;
// Generated Jun 15, 2019 5:07:07 PM by Hibernate Tools 5.1.7.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Country generated by hbm2java
 */
@Entity
@Table(name = "country", catalog = "multivendor")
public class Country implements java.io.Serializable {

	private String id;
	private String name;
	private String code3;
	private Set<Stateorprovince> stateorprovinces = new HashSet<Stateorprovince>(0);

	public Country() {
	}

	public Country(String id, String name, String code3) {
		this.id = id;
		this.name = name;
		this.code3 = code3;
	}

	public Country(String id, String name, String code3, Set<Stateorprovince> stateorprovinces) {
		this.id = id;
		this.name = name;
		this.code3 = code3;
		this.stateorprovinces = stateorprovinces;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false, length = 10)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "code3", nullable = false, length = 10)
	public String getCode3() {
		return this.code3;
	}

	public void setCode3(String code3) {
		this.code3 = code3;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "country")
	public Set<Stateorprovince> getStateorprovinces() {
		return this.stateorprovinces;
	}

	public void setStateorprovinces(Set<Stateorprovince> stateorprovinces) {
		this.stateorprovinces = stateorprovinces;
	}

}
