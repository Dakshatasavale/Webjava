package com.museum.entity;

public class ResourceAlreadyExistException extends RuntimeException 
{

	public ResourceAlreadyExistException(String msg)
	{
		super(msg);
	}
}
