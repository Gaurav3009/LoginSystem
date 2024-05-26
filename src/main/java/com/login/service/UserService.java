package com.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.DAO.UserDao;
import com.login.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	
	public boolean activeUser(User user) {
		User u = userDao.getUser(user.getUsername());
		if(u == null) {
			return false;
		}
		return true;
	}
	
	public boolean verifyUser(User user) {
		User u = userDao.getUser(user.getUsername());
		System.out.println(u + "\n" + user);
		if(u == null) {
			return false;
		}
		return ((u.getPassword().equals(user.getPassword()))?true:false);
	}
	
	public boolean insert(User user) {
		if(!activeUser(user)) {
			userDao.insertUser(user);
			return true;
		}
		return false;
//		userDao.insertUser(user);
//		return true;
	}
	
	
	
	
}
