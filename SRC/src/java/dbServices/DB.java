package dbServices;

import java.sql.Connection;
import java.sql.DriverManager;
public class DB {
    public Connection fun()
            {
                Connection con = null;
		try
		{ 
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data_storage","root","root");
			System.out.println("---Connection created!----");
                }
                catch (Exception e) 
                {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                return con;
	    }
    
}
