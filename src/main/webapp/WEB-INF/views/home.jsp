<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRM-客户关系管理系统</title>

    <!-- Bootstrap Core CSS -->
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${ctx}/static/js/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${ctx}/static/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${ctx}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/static/js/morris/morris.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx}/static/js/html5shiv.js"></script>
    <script src="${ctx}/static/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

    <%@ include file="include/nav.jsp"%>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h4><i class="fa fa-home"></i> 我的首页</h4>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">销售进展报告</div>
                        <div class="panel-body">
                            <div id="myfirstchart" style="height: 250px;"></div>
                        </div>
                    </div>



                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="${ctx}/static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${ctx}/static/js/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${ctx}/static/js/sb-admin-2.js"></script>
<script src="${ctx}/static/js/morris/raphael-min.js"></script>
<script src="${ctx}/static/js/morris/morris.min.js"></script>
<script>
    $(function(){
        Morris.Bar({
            element: 'myfirstchart',
            data: ${json},
            xkey: 'custtype',
            ykeys: ['total'],
            labels: ['total']
        }).on('click', function(i, row){
            console.log(i, row);
        });
    });
</script>

</body>

</html>
