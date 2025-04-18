package com.museum.entity;

public class ResourceNotFoundException extends RuntimeException 
{

	public  ResourceNotFoundException(String msg)
	{
		super(msg);
	}
}
