<%-- 
    Document   : SupplierList
    Created on : Nov 7, 2021, 1:53:30 AM
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
                <a class ="nav-link" href="insertSupplier">Thêm nhà cung cấp</a>
            </div>
            
            <div class="form-group pull-left col-lg-4"><input type="text" class="search form-control" placeholder="Search .."></div>
            <span class="counter pull-right"></span>
            <div class="table-responsive table-bordered table table-hover table-bordered results">
                <table class="table table-bordered table-hover">
                    <thead class="bill-header cs">
                        <tr>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Tên nhà cung cấp</th>
                            <th id="trs-hd" class="col-lg-3"style="width: 100px">Số điện thoại</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Địa chỉ</th>
                            <th id="trs-hd" class="col-lg-2"style="width: 100px">Email</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listSup}" var="c">
                        <tr>
                            <td style="width: 100px">${c.name}</td>
                            <td style="width: 100px">${c.address}</td>
                            <td style="width: 100px">${c.number}</td>
                            <td style="width: 100px">${c.email}</td>
                        </tr>
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
