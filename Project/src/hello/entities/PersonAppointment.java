package hello.entities;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="personappointment")
public class PersonAppointment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="date")
	private String date;
	
	@Column(name="first_name")
	private  String firstName;
	
	@Column(name="last_name")
	private  String lastName;
	
	@Column(name="age")
	private  int age;
	
	@Column(name="sex")
	private  String sex;
	
	@Column(name="place")
	private  String place;
	
	@Column(name="domain")
	private  String domain;
	
	@Column(name="problem")
	private  String problem;
	
	@Column(name="dr_name")
	private  String dr_name;
	
	
	public PersonAppointment() {}
	
	public PersonAppointment(int id, String date, String firstName, String lastName, int age, String sex, String place,
			String domain, String problem, String dr_name) {
		
		this.id = id;
		this.date = date;
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.sex = sex;
		this.place = place;
		this.domain = domain;
		this.problem = problem;
		this.dr_name = dr_name;
	}
	

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
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



	public int getAge() {
		return age;
	}



	public void setAge(int age) {
		this.age = age;
	}



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	public String getPlace() {
		return place;
	}



	public void setPlace(String place) {
		this.place = place;
	}



	public String getDomain() {
		return domain;
	}



	public void setDomain(String domain) {
		this.domain = domain;
	}



	public String getProblem() {
		return problem;
	}



	public void setProblem(String problem) {
		this.problem = problem;
	}



	public String getDr_name() {
		return dr_name;
	}



	public void setDr_name(String dr_name) {
		this.dr_name = dr_name;
	}
	


	@Override
	public String toString() {
		return "PersonAppointment [id=" + id + ", date=" + date + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", age=" + age + ", sex=" + sex + ", place=" + place + ", domain=" + domain + ", problem=" + problem
				+ ", dr_name=" + dr_name + "]";
	}



	
	
	
	
	
}