package comi.entities;
// Generated Jun 15, 2019 5:07:07 PM by Hibernate Tools 5.1.7.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name = "user", catalog = "multivendor")
public class User implements java.io.Serializable {

	private Integer id;
	private String username;
	private String email;
	private String password;
	private boolean enable;
	private Set<Personinfo> personinfos = new HashSet<Personinfo>(0);
	private Set<Comment> comments = new HashSet<Comment>(0);
	private Set<Userrole> userroles = new HashSet<Userrole>(0);
	private Set<Saleorder> saleorders = new HashSet<Saleorder>(0);
	private Set<Product> products = new HashSet<Product>(0);

	public User() {
	}

	public User(String username, String email, String password, boolean enable) {
		this.username = username;
		this.email = email;
		this.password = password;
		this.enable = enable;
	}

	public User(String username, String email, String password, boolean enable, Set<Personinfo> personinfos,
			Set<Comment> comments, Set<Userrole> userroles, Set<Saleorder> saleorders, Set<Product> products) {
		this.username = username;
		this.email = email;
		this.password = password;
		this.enable = enable;
		this.personinfos = personinfos;
		this.comments = comments;
		this.userroles = userroles;
		this.saleorders = saleorders;
		this.products = products;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "username", nullable = false, length = 50)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "email", nullable = false, length = 250)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", nullable = false, length = 250)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "enable", nullable = false)
	public boolean isEnable() {
		return this.enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Personinfo> getPersoninfos() {
		return this.personinfos;
	}

	public void setPersoninfos(Set<Personinfo> personinfos) {
		this.personinfos = personinfos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Comment> getComments() {
		return this.comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Userrole> getUserroles() {
		return this.userroles;
	}

	public void setUserroles(Set<Userrole> userroles) {
		this.userroles = userroles;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Saleorder> getSaleorders() {
		return this.saleorders;
	}

	public void setSaleorders(Set<Saleorder> saleorders) {
		this.saleorders = saleorders;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}