package model;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.ResultSet;
import java.sql.Statement;

public class Funder {

	//A common method to connect to the DB 
		private Connection connect() {
			Connection con = null;
			
			try {
				 Class.forName("com.mysql.jdbc.Driver");
				 //Provide the correct details: DBServer/DBName, username, password 
				 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/funder", "root", "");

				//For testing          
				 System.out.print("Successfully connected");
				 
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return con; 
		}
		
		public String readFunder() {  
			String output = "";  
			
			try {  
				Connection con = connect();  
				if (con == null)  {   
					return "Error while connecting to the database for reading.";  
				} 

				// Prepare the html table to be displayed   
				output = "<table border='1'><tr><th>Name</th>"
						+ "<th>Email</th><th>Contact</th>"
						+ "<th>Type</th>"
						+ "<th>Update</th><th>Remove</th></tr>";


				  String query = "SELECT * FROM funder";   
				  Statement stmt = con.createStatement();   
				  ResultSet rs = stmt.executeQuery(query); 

				  // iterate through the rows in the result set   
				  while (rs.next())   {  

					  	String funderID = Integer.toString(rs.getInt("funderID"));
						String name = rs.getString("name");
						String email = rs.getString("email");
						String contact = Integer.toString(rs.getInt("contact"));
						String type = rs.getString("type");

					  output += "<tr><td><input id='hidFunderIDUpdate' name='hidFunderIDUpdate' type='hidden' value='" + funderID + "'>" + name + "</td>"; 

					  output += "<td>" + email + "</td>";
						output += "<td>" + contact + "</td>";
						output += "<td>" + type + "</td>";
						
					// buttons     
					  output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td>"
					  		+ "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-funderID='"+ funderID +"'>"+"</td></tr>";

					} 
				  
				  con.close(); 

				  // Complete the html table   
				  output += "</table>"; 
				}
				catch (Exception e) {  
					output = "Error while reading the Funders.";  
					System.err.println(e.getMessage()); 
				}

				return output;
			}
		
		
}
