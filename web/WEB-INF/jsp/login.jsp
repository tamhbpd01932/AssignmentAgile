<%-- 
    Document   : login
    Created on : Apr 9, 2018, 11:01:55 AM
    Author     : Tam Huynh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
    <head>
        <base href="${pageContext.servletContext.contextPath}/">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>ABSD Fitness & Yoga Center</title>

        <!-- Bootstrap Core CSS -->

        <link rel="stylesheet" href="data/vendor/bootstrap/css/bootstrap.min.css"/>
        <!-- MetisMenu CSS -->

        <link rel="stylesheet" href="data/vendor/metisMenu/metisMenu.min.css"/>
        <!-- Custom CSS -->
        <link rel="stylesheet" href="data/dist/css/sb-admin-2.css"/>
        <!-- Morris Charts CSS -->

        <link rel="stylesheet" href="data/vendor/morrisjs/morris.css"/>
        <!-- Custom Fonts -->

        <link rel="stylesheet" href="data/vendor/font-awesome/css/font-awesome.min.css" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title" align="center">Login to ABSD Fitness & Yoga Center</h3>
                        </div>
                        <div class="panel-body">
                            <f:form modelAttribute="staff" action="Login.htm" method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <f:input path="username" cssClass="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <f:password path="password" cssClass="form-control"/>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                        </label>
                                    </div>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <button class="btn btn-lg btn-success btn-block">Login</button>
                                </fieldset>
                            </f:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="data/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="data/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="data/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="data/vendor/raphael/raphael.min.js"></script>
        <script src="data/vendor/morrisjs/morris.min.js"></script>
        <script src="data/data/morris-data.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="data/dist/js/sb-admin-2.js"></script>
    </body>
</html>