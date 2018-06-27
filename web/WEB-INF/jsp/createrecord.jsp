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
                    GHI NHẬN THÀNH TÍCH
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">

                    <f:form role="form" action="${action}" modelAttribute="rc" method="post">
                        <div hidden>
                            <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled="">
                        </div>
                        <div class="form-group">
                            <label>Nhân viên:</label>
                            <f:select path="staffs.username" cssClass="form-control" id="inputState">
                                <c:forEach var="item" items="${staffList}">
                                    <f:option value="${item.username}">${item.name}</f:option>
                                </c:forEach>
                            </f:select>

                        </div>
                        <div class="form-group">
                            <label>Loại:</label>
                            <f:radiobutton path="type" id="optionsRadios1" value="true" checked="checked" /> Thành tích
                            <f:radiobutton path="type" id="optionsRadios2" value="false" checked="checked" /> Kỷ luật
                        </div> 
                        <div class="form-group">
                            <label>Lý do:</label>
                            <f:input path="reason" cssClass="form-control" placeholder="Enter reason" />
                        </div>

                        <div class="form-group">
                            <label>Ghi ngày:</label>
                            <f:input path="date" id="timeCheckIn" cssClass="form-control" />
                        </div>
                        <button type="submit" class="btn btn-success">Save</button>
                    </f:form>

                </div>
            </div>
        </div>
    </div>
</div>
