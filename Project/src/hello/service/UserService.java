package hello.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.stereotype.Service;

import hello.HibernateConfig;
import hello.entities.Appointment;
import hello.entities.User;

@Service
public class UserService {

	public void addUser(User u) {
		
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
	public void delete(User u) {

		System.out.println(".......Hibernate Delete Example.......\n");
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
		try {
			sessionObj.beginTransaction();
			User p = sessionObj.find(User.class, u.getEmail());
			//p.setName("tralalala");
			
			sessionObj.remove(p);
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
	public void delete(String email) {
		System.out.println(".......Hibernate Delete Example.......\n");
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
		try {
			sessionObj.beginTransaction();
			Query<User> query = sessionObj.createQuery("FROM User WHERE email = :email");
			query.setParameter("email", email);
			
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
	public void delete(int id) {
		System.out.println(".......Hibernate Delete Example.......\n");
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
		try {
			sessionObj.beginTransaction();
			Query<User> query = sessionObj.createQuery("FROM User WHERE id = :id");
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
	
	
	@SuppressWarnings("finally")
	public User checkUserExists(String email, String password) {
		Session sessionObj = HibernateConfig.buildSessionFactory().openSession();
		
		List<User> result = new ArrayList<>();
		try {
			sessionObj.beginTransaction();
			Query<User> query = sessionObj.createQuery("FROM User WHERE email = :email AND password = :password");
			query.setParameter("email", email);
			query.setParameter("password", password);
	
			result = query.getResultList();
			
			// Committing The Transactions To The Database
			sessionObj.getTransaction().commit();
			if(result.size() > 0) {
				return result.get(0);
			}else {
				return null;
			}
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
			if(result.size() > 0) {
				return result.get(0);
			}else {
				return null;
			}
		}
	}
	
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
	
}