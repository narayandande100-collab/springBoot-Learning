package MyPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class setUp {
	
	
	public void createDatabase() {
	   
			try {
				String url = "jdbc:mysql://localhost:3306/";
				String userName = "root";
				String password = "Narayan@100";
				
				Connection conn = DriverManager.getConnection(url,userName,password);
				Statement stm = conn.createStatement(); 
						
				System.out.println("connected successfully");
				
				String query = "create database codingWallah";
				boolean bl = stm.execute(query);
				System.out.println("database created successfully");
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		
	}
	
	public void createTable() {
		try {
			String url = "jdbc:mysql://localhost:3306/codingWallah";
			String userName = "root";
			String DB = "codingWallah";
			String password = "Narayan@100";
			
			Connection conn = DriverManager.getConnection(url,userName,password);
			Statement stm = conn.createStatement(); 
					
			System.out.println("connected successfully");
			
			String query = "create table setUp (Sid int PRIMARY KEY,Sname varchar(200),Semail varchar(200))";
			boolean bl = stm.execute(query);
			System.out.println("Table  created successfully");
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public void createData() {
		try {
			String url = "jdbc:mysql://localhost:3306/";
			String userName = "root";
			String DB = "codingWallah";
			String password = "Narayan@100";
			
			Connection conn = DriverManager.getConnection(url+DB,userName,password);
			Statement stm = conn.createStatement();
					
			System.out.println("connected successfully");
			
			String query1 = "INSERT into setUp VALUES(5427, 'Narayan','narayandande100@gmail.com')";
			String query2 = "INSERT into setUp VALUES(5428, 'Rahul','narayandande102@gmail.com')";
			stm.execute(query1);
			stm.execute(query2);
			System.out.println("Add data in table successfully");
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public void reaadData() {
		try {
			String url = "jdbc:mysql://localhost:3306/";
			String userName = "root";
			String DB = "codingWallah";
			String password = "Narayan@100";
			
			Connection conn = DriverManager.getConnection(url+DB,userName,password);
			String query = "select * from setUp";
			Statement stm = conn.createStatement();
			ResultSet rs =stm.executeQuery(query);
			
			while(rs.next() ) {
				System.out.println("id = "+rs.getInt(1));
				System.out.println("Name = "+rs.getString(2));
				System.out.println("email = "+rs.getString(3));
			}
					
			
			System.out.println("Read successfully  "+rs);
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public void updateData() {
		try {
			String url = "jdbc:mysql://localhost:3306/";
			String userName = "root";
			String DB = "codingWallah";
			String password = "Narayan@100";
			
			Connection conn = DriverManager.getConnection(url+DB,userName,password);
			String query =  "UPDATE setUp SET Sname='Amit' WHERE Sid=5427";
			Statement stm = conn.createStatement();
			
			
			int row = stm.executeUpdate(query);
			
			
			System.out.println("Update data successfully  "+ row );
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public void deleteData() {
		try {
			String url = "jdbc:mysql://localhost:3306/";
			String userName = "root";
			String DB = "codingWallah";
			String password = "Narayan@100";
			
			Connection conn = DriverManager.getConnection(url+DB,userName,password);
			String query =  "DELETE FROM setUp WHERE Sid=5427";
			Statement stm = conn.createStatement();
			
			
			int row = stm.executeUpdate(query);
			
			
			System.out.println("Delete data  successfully  "+ row );
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	

}
