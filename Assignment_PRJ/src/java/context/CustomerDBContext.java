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

/**
 *
 * @author 84984
 */
public class CustomerDBContext extends DBContext{
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<model.Customer> getAllCustomer(){
        List<model.Customer> listCus = new ArrayList<>();
        
        try {
            String query ="select*from customer";
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            
            while(rs.next()){
                model.Customer cs = new model.Customer();
                cs.setId(rs.getString("id"));
                cs.setName(rs.getString("Name"));
                cs.setPhone(rs.getString("phoneNumber"));
                cs.setCusOwes(rs.getInt("amountCustomerOwes"));
                cs.setCusPays(rs.getInt("amountCustomerPays"));
                listCus.add(cs);
            }
        } catch (Exception e) {
        }
        return listCus;
    }
    
    //Test
    public static void main(String[] args) {
        CustomerDBContext dao = new CustomerDBContext();
        List<model.Customer> list = dao.getAllCustomer();
        for (model.Customer o : list) {
            System.out.println(o);

        }
    }
}
