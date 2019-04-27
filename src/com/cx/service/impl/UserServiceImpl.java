package com.cx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cx.dao.UserMapper;
import com.cx.pojo.User;
import com.cx.service.UserService;
@Service
public class UserServiceImpl implements UserService {
@Autowired
private UserMapper userservice;
	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return userservice.updateByPrimaryKey(user);
	}

	@Override
	public int deleteUserById(String id) {
		// TODO Auto-generated method stub
		return userservice.deleteByPrimaryKey(id);
	}

	@Override
	public User getUserById(String id) {
		// TODO Auto-generated method stub
		return userservice.selectByPrimaryKey(id);
	}

	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userservice.selectAll();
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return userservice.insert(user);
	}

	@Override
	public User getUserByemail(String email) {
		// TODO Auto-generated method stub
		return userservice.selectByuserEmail(email);
	}

}
