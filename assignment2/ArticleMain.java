package com.museum.entity;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Scanner;

public class ArticleMain 
{

	public static void main(String[] args)
	{
		ArticleService service=null;
		Scanner sc=new Scanner (System.in);
		try {
			 service=new ArticleService();
		}
		catch(Exception e){
			System.err.println(e.getMessage());
		}
		boolean exit=true;
		while(exit)
		{
			System.out.println("========== Menu ==========="
					+ "\n1.Add Article"
					+ "\n2.Display All Articles"
					+ "\n3.Display Details of Articles"
					+ "\n0.Exit");
			int ch=sc.nextInt();
			switch(ch)
			{
			case 1:
				try {
					System.out.println("Enter Article name,category,created date, creator name :");
					String name=sc.next();
					Category category=Category.valueOf(sc.next());
					LocalDate date = LocalDate.parse(sc.next());
					String creatorName=sc.next();
					service.addArticle(name, category, date, creatorName);
					
					
				}catch(SQLException  e)
				{
					System.err.println(e.getMessage());
				}
				break;
			case 2:
				try {
					service.getAllArticles();
				} catch (SQLException e) {
					System.err.println(e.getMessage());
				}
				break;
			case 3:
				try {
					System.out.println("Enter article id:");
					service.displayArticleDetails(sc.nextInt());
				} catch (SQLException | ResourceNotFoundException e) {
					System.err.println(e.getMessage());
				}
				break;
			case 0:
				exit=false;
				System.out.println("Thank You!!!!");
				break;
			default:
				System.out.println("Invalid Choice !!! Try Again");
			}
		}
		

	}

}
