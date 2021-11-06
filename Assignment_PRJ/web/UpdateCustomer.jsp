<%-- 
    Document   : UpdateCustomer
    Created on : Nov 6, 2021, 3:30:34 PM
    Author     : 84984
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Customer"%>
<!DOCTYPE html>
<%
            Customer oldCustomer = (Customer)request.getAttribute("oldCustomer");
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updateCustomer" method="POST">
        Mã khách hàng: <%=oldCustomer.getId() %><br/><input type="hidden" value="<%=oldCustomer.getId() %> " name="id">
        Tên khách hàng: <input type="text" value="<%=oldCustomer.getName() %>" name="name"/> <br/>
        Số điện thoại: <input type="text" value="<%=oldCustomer.getPhone() %>" name="phoneNumber"/> <br/>
        Tổng phải trả: <input type="text" value="<%=oldCustomer.getTotal() %>" name="total"/> <br/>
        Đã Thanh toán: <input type="text" value="<%=oldCustomer.getPayed() %>" name="payed"/> <br/>
        Còn nợ: <%=oldCustomer.getOwes() %><br/>        
        <input type="submit" value="Save"/>
        <a href="customer"/><button value="Cancel"></a>
<!--    <input type="submit" name="action" value="Cancel"/>-->
        </form>
    </body>
</html>
