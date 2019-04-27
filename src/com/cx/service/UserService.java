package com.cx.service;

import java.util.List;

import com.cx.pojo.User;

public interface UserService {
	 int updateUser(User user);
	int deleteUserById(String id);
	User getUserById(String id);
	User getUserByemail(String email);
	List<User>getUsers();
	int insertUser(User user);
}
