<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>ABSD Fitness & Yoga Center</title>

        <!-- Bootstrap Core CSS -->
        <link href="data/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="data/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <link href="data/vendor/datepicker/css/bootstrap.min.css" rel="stylesheet" />
        <link href="data/vendor/datepicker/css/datepicker.css" rel="stylesheet" />
        <!-- Custom CSS -->
        <link href="data/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="data/vendor/morrisjs/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="data/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="header.jsp"></jsp:include> 
            <jsp:include page="${function}.jsp"></jsp:include> 

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
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

        <script src="data/vendor/datepicker/js/jquery.min.js"></script>
        <script src="data/vendor/datepicker/js/bootstrap.min.js"></script>
        <script src="data/vendor/datepicker/js/bootstrap-datepicker.js"></script>
        <script>
            $(function () {
                'use strict';
                var nowTemp = new Date();
                var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

                var checkin = $('#timeCheckIn').datepicker({
                    onRender: function (date) {
                        return date.valueOf() < now.valueOf() ? 'disabled' : '';
                    }
                }).on('changeDate', function (ev) {
                    if (ev.date.valueOf() > checkout.date.valueOf()) {
                        var newDate = new Date(ev.date)
                        newDate.setDate(newDate.getDate() + 1);
                        checkout.setValue(newDate);
                    }
                    checkin.hide();
                    $('#timeCheckOut')[0].focus();
                }).data('datepicker');
                var checkout = $('#timeCheckOut').datepicker({
                    onRender: function (date) {
                        return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
                    }
                }).on('changeDate', function (ev) {
                    checkout.hide();
                }).data('datepicker');
            });
        </script>
    </body>

</html>


