/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import context.DBContext;

/**
 *
 * @author 84984
 */
public class CustomerDBContext extends DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Customer> getAllCustomer(){
        List<Customer> listCus = new ArrayList<>();
        
        try {
            String query ="select * from customer";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Customer cs = new Customer();
                cs.setId(rs.getString("id"));
                cs.setName(rs.getString("Name"));
                cs.setPhone(rs.getString("phoneNumber"));
                cs.setTotal(rs.getInt("total"));
                cs.setPayed(rs.getInt("payed"));
                cs.setOwes(rs.getInt("owes"));
                listCus.add(cs);
            }
        } catch (Exception e) {
        }
        return listCus;
    }
    
    //Test
    public static void main(String[] args) {
        CustomerDBContext dao = new CustomerDBContext();
        List<Customer> list = dao.getAllCustomer();
        for (Customer o : list) {
            System.out.println(o);
        }
    }
}
