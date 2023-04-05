
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnector"%>
<%@page import="com.dao.SpecialistDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Add Category</title>
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="fix-header">
<%@include file="../component/navbaradmin.jsp"%>
<%@include file="../component/sidebar.jsp"%>

<c:if test="${not empty errorMsg}">
    <p class="fs-3 text-center text-danger">${errorMsg}</p>
    <c:remove var="errorMsg" scope="session" />
</c:if>
<c:if test="${not empty succMsg}">
    <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
    <c:remove var="succMsg" scope="session" />
</c:if>

    <div class="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="card card-outline-primary">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Add Specialist</h4>
                            </div>
                            <form action='../addSpecialist' method='post' >
                                <div class="form-body">
                                    <hr>
                                    <div class="row p-t-20">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="control-label">Specialist</label>
                                                <input type="text" name="specName" class="form-control" >
                                            </div>
                                        </div>
                                    </div>

                                    </div>
                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-12">


                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Listed Specialist</h4>

                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                <thead >
                                <tr>
                                    <th>ID</th>
                                    <th>Specialist Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    SpecialistDAO dao3 = new SpecialistDAO(DBConnector.getConn());
                                    List<Specialist> list3 = dao3.getAllSpecialist();
                                    for(Specialist d:list3)
                                    {%>

                                <tr>
                                    <td><%=d.getId() %></td>
                                    <td><%=d.getSpecialistName() %></td>
                                    <td>
                                        <a href="update_specialist.jsp?id=<%=d.getId()%>"
                                           class="btn btn-sm btn-primary">Edit</a>
                                        <a href="../deleteSpecialist?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>

                                    </td>
                                </tr>

                                <% }
                                %>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>







        </div>

    </div>

    <footer class="footer"> © 2023 - Team Pixel </footer>

</div>

</div>

<!-- All Jquery -->
<script src="js/lib/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="js/lib/bootstrap/js/popper.min.js"></script>
<script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="js/jquery.slimscroll.js"></script>
<!--Menu sidebar -->
<script src="js/sidebarmenu.js"></script>
<!--stickey kit -->
<script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
<!--Custom JavaScript -->
<script src="js/custom.min.js"></script>


<script src="js/lib/datatables/datatables.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
<script src="js/lib/datatables/datatables-init.js"></script>
</body>

</html>