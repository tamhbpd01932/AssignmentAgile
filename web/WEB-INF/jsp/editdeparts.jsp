<%-- 
    Document   : depart
    Created on : Apr 18, 2018, 9:44:10 PM
    Author     : Tam Huynh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    QUẢN LÝ PHÒNG BAN
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
      
                        <f:form role="form" action="updatedeparts.htm" modelAttribute="PB" method="post">

                            <div class="form-group">
                                <label>Tên Phòng Ban:</label>
                                <input type="hidden" name="id" value="${depart.id}">
                                <input class="form-control" placeholder="Enter name" name="name" value="${depart.name}">

                            </div>
                            <button type="submit" class="btn btn-success">SAVE</button>
                        </f:form>

                </div>
            </div>
        </div>
    </div>
</div>
