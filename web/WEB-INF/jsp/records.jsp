<%-- 
    Document   : depart
    Created on : Apr 18, 2018, 9:44:10 PM
    Author     : Tam Huynh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    THÀNH TÍCH CÁ NHÂN
                </div>
                <!-- /.panel-heading -->
               <div class="panel-body">
                <table class="table table-striped table-hover table-bordered" id="editable-sample">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nhân viên</th>
                            <th>Xếp loại</th>
                            <th>Lý do</th>
                            <th>Ngày ghi</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${listRecords}">
                            <tr>
                                <td>${item.id}</td>
                                
                                <td>${item.staffs.name}</td>
                                
                                <td>
                                   <c:if test="${item.type == true}">Thành tích</c:if>
                                   <c:if test="${item.type == false}">Kỷ luật</c:if>
                               </td>
                                
                                <td>${item.reason}</td>
                                <td><fmt:formatDate pattern = "dd/MM/yyyy" value = "${item.date}" /></td>
                                
                                <td><center><a href="removerecords.htm?id=${item.id}" onclick="return confirm('Are you sure you want to delete this item?');"><button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></a></center></td>
                        </tr>       
                    </c:forEach> 
                    </tbody>
                </table>
                   
            </div>
            </div>
        </div>
    </div>
</div>
