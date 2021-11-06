/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 84984
 */
public class DBContext {
    //protected Connection connection;
    public DBContext()
    {
       
    }
    
    public Connection createConn(){
         try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Assignment";
            String user = "anhldhe141746";
            String pass = "0984268930";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, user, pass);
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
         return null;
    }
    
    
    // test DBcontext
     public static void main(String[] args) {
        try {
            System.out.println(new DBContext());
        } catch (Exception e) {
        }
    }
}
