<%-- 
    Document   : InsertBill
    Created on : Nov 7, 2021, 6:41:21 PM
    Author     : 84984
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="index_1.html"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Action/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Action/assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="Action/assets/css/Table-With-Search-1.css">
        <link rel="stylesheet" href="Action/assets/css/Table-With-Search.css">
        
    </head>
    <body>
        <br>
        <form action="InsertBill" method="POST">
            <table >
                <tbody> 
                    <tr>
                        <td>Mã hóa đơn</td>
                        <td> <input required style="width: 200px" type="text" name="billid"  /></td>
                    </tr>   

                    <tr>
                        <td>Thời gian</td>
                        <td> <input required style="width: 200px" type="date" name="date"  /></td>
                    </tr>

                    <tr>
                        <td>Nhà cung cấp</td>
                        <td> <input required style="width: 200px" type="text" name="supplierid"  /></td>
                    </tr>

                    <tr>
                        <td>Thanh toán trước</td>
                        <td><input required style="width: 200px" type="text" name="amountPaid"  /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Lưu"/>  
            <a  href="Bill">Exit</a>
        </form>
    </body>
</html>
