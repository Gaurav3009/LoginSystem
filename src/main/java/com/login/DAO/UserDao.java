package com.login.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.login.entity.User;

@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void insertUser(User user) {
		this.hibernateTemplate.save(user);
	}
	
	public User getUser(String username) {
		User user = (User) this.hibernateTemplate.get(User.class, username);
		return user;
	}
	
}
