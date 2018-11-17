package hello.entities;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="date")
	private String date;
	
	@Column(name="place")
	private  String place;
	
	@Column(name="domain")
	private  String domain;
	
	@Column(name="problem")
	private  String problem;
	
	@Column(name="dr_name")
	private  String dr_name;
		
	@ManyToOne(cascade={CascadeType.PERSIST, CascadeType.MERGE,
						CascadeType.DETACH, CascadeType.REFRESH })
	@JoinColumn(name="user_id")
	private User user;
	//@JoinColumn(name="user_id")
	//private int user_id;

	public Appointment() {}
	
	public Appointment(String date,String place,String domain,String problem,String dr_name, User user) {
		this.date = date;
		this.place = place;
		this.domain = domain;
		this.problem = problem;
		this.dr_name=dr_name;
		this.user = user;
	}
	public Appointment(String date,String place,String domain,String problem,String dr_name) {
		this.date = date;
		this.place = place;
		this.domain = domain;
		this.problem = problem;
		this.dr_name=dr_name;
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

	public User getUserId() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDr_name() {
		return dr_name;
	}

	public void setDr_name(String dr_name) {
		this.dr_name = dr_name;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", date=" + date + ", place=" + place + ", domain=" + domain + ", problem="
				+ problem + ", dr_name=" + dr_name + ", user=" + user + "]";
	}

	
	
	



	
	
	
	
	
	
}