/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author dell
 */
public class AccountDBContext extends DBContext {
    
    public Account getAccount(String username, String password)
    {
        Connection connection = createConn();
        PreparedStatement stm = null;
        try {
            String sql = "SELECT [username]\n" +
                    "      ,[password]\n" +
                    "  FROM [Account]\n" +
                    "  WHERE [username] = ? AND [password] = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Account account = new Account();
                account.setUser(username);
                account.setPass(password);
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (Exception e) {
            }
            try {
                connection.close();
            } catch (Exception e) {
            }
        }
        return null;
    }
    public static void main(String[] args) {
        Account acc = new Account();
        AccountDBContext db = new AccountDBContext();
        acc = db.getAccount("anhldhr141746@gmail.com","2345");
        System.out.println(acc);
    }
}
