package hello.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Service;

import hello.HibernateConfig;
import hello.entities.User;
import hello.entities.Appointment;
import hello.entities.PersonAppointment;

@Service
public class AppointmentService {

	public void addAppointment(Appointment u) {
		
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
	
		try {
			sessionObj.beginTransaction();
			sessionObj.save(u);
			System.out.println("\n.......Records Saved Successfully To The Database.......\n");

			// Committing The Transactions To The Database
			sessionObj.getTransaction().commit();
		} catch (Exception sqlException) {
			if (null != sessionObj.getTransaction()) {
				System.out.println("\n.......Transaction Is Being Rolled Back.......");
				sessionObj.getTransaction().rollback();
			}
			sqlException.printStackTrace();
		} finally {
			if (sessionObj != null) {
				sessionObj.close();
			}
		}
	}
public void addPersonAppointment(PersonAppointment u) {
		
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
	
		try {
			sessionObj.beginTransaction();
			sessionObj.save(u);
			System.out.println("\n.......Records Saved Successfully To The Database.......\n");

			// Committing The Transactions To The Database
			sessionObj.getTransaction().commit();
		} catch (Exception sqlException) {
			if (null != sessionObj.getTransaction()) {
				System.out.println("\n.......Transaction Is Being Rolled Back.......");
				sessionObj.getTransaction().rollback();
			}
			sqlException.printStackTrace();
		} finally {
			if (sessionObj != null) {
				sessionObj.close();
			}
		}
	}

public void delete(int id) {
	System.out.println(".......Hibernate Delete Example.......\n");
	Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
	try {
		sessionObj.beginTransaction();
		Query<User> query = sessionObj.createQuery("FROM Appointment WHERE id = :id");
		query.setParameter("id", id);
		
		List<User> result = new ArrayList<>();
		result = query.getResultList();
		sessionObj.remove(result.get(0));
		System.out.println("\n.......Records Deleted Successfully from The Database.......\n");

		// Committing The Transactions To The Database
		sessionObj.getTransaction().commit();
	} catch (Exception sqlException) {
		if (null != sessionObj.getTransaction()) {
			System.out.println("\n.......Transaction Is Being Rolled Back.......");
			sessionObj.getTransaction().rollback();
		}
		sqlException.printStackTrace();
	} finally {
		if (sessionObj != null) {
			sessionObj.close();
		}
	}
}
public void deletePers(int id) {
	System.out.println(".......Hibernate Delete Example.......\n");
	Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
	try {
		sessionObj.beginTransaction();
		Query<User> query = sessionObj.createQuery("FROM PersonAppointment WHERE id = :id");
		query.setParameter("id", id);
		
		List<User> result = new ArrayList<>();
		result = query.getResultList();
		sessionObj.remove(result.get(0));
		System.out.println("\n.......Records Deleted Successfully from The Database.......\n");

		// Committing The Transactions To The Database
		sessionObj.getTransaction().commit();
	} catch (Exception sqlException) {
		if (null != sessionObj.getTransaction()) {
			System.out.println("\n.......Transaction Is Being Rolled Back.......");
			sessionObj.getTransaction().rollback();
		}
		sqlException.printStackTrace();
	} finally {
		if (sessionObj != null) {
			sessionObj.close();
		}
	}
}
	
	
	
}