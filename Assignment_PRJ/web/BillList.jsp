<%-- 
    Document   : Bill
    Created on : Nov 7, 2021, 3:03:12 PM
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
        <div class="col-md-12 search-table-col">
            <div class="form-group pull-right col-lg-2.5">
                <a class ="nav-link" href="InsertDetail">Nhập Hàng</a>
            </div>
            <div class="form-group pull-right col-lg-2.5">
                <a class ="nav-link" href="InsertBill">Tạo hóa đơn</a>
            </div>
            
            <div class="form-group pull-left col-lg-4"><input type="text" class="search form-control" placeholder="Search .."></div>
            <span class="counter pull-right"></span>
            <div class="table-responsive table-bordered table table-hover table-bordered results">
                <table class="table table-bordered table-hover">
                    <thead class="bill-header cs">
                        <tr>
                            <th id="trs-hd" class="col-lg-1"style="width: 100px">Mã hóa đơn</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Thời gian</th>
                            <th id="trs-hd" class="col-lg-3"style="width: 100px">Nhà cung cấp</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Tổng cần thanh toán</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Đã thanh toán</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Còn nợ lại</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 50px">Thêm</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${Bills}" var="b">
                        <tr>
                            <td style="width: 100px">${b.id}</td>
                            <td style="width: 100px">${b.date}</td>
                            <td style="width: 100px">${b.supplier.name}</td>
                            <td style="width: 100px">${b.total}</td>
                            <td style="width: 100px">${b.amountPaid}</td>
                            <td style="width: 100px">${b.payed}</td>                            
                        <td style="width: 100px"> <a class ="nav-link" href="ShowDetail?id=${b.id}">More Info</a></td>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="Action/assets/js/jquery.min.js"></script>
        <script src="Action/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="Action/assets/js/Table-With-Search.js"></script>        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>    
    </body>
</html>
