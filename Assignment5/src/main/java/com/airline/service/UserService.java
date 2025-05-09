package com.airline.service;

import java.util.Optional;

import com.airline.dao.UserDao;
import com.airline.entity.User;
import com.airline.exception.ResourceAlreadyExistException;

public class UserService 
{
	private UserDao userDao;
	
	public UserService()
	{
		userDao = new UserDao();
	}
	
	public void register(String name,String email,String pass)
	{
		//boolean status =false;
		Optional<User> foundUser= userDao.findAll().stream()
		.filter(user -> user.getEmail().equalsIgnoreCase(email))
        .findFirst();
        if(foundUser.isPresent())
        {
        	throw new ResourceAlreadyExistException("user already registered with same email!!!!");
        }
        
        
        userDao.save(new User(0,name,email,pass));
       // boolean isSaved=userDao.save(new User(0,name,email,pass));
        //if(isSaved)
        //{
        //	System.out.println("user registered successfully!!");
        //	status=true;
       // }
      //  else
        //{
        //	System.out.println("failed to registered user!!!!");
        //}
       // return status;
	}
	
	public User login(String email,String password)
	{
		return userDao.searchUserByEmailAndPassword(email, password);
	}

}
