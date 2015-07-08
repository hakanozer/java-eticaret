<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="admin.data" %>
<%
    data ns = new data();
    ArrayList idLer = new ArrayList();

    //engelle işlemi varsa yapılacak işlemler
    boolean engelleD = (request.getParameter("engelleID") == null);
    if (!engelleD) {
        String engelleID = request.getParameter("engelleID");
        //engelleme işlemi yapılıyor
        int engelle = ns.baglan().executeUpdate("UPDATE kullanicilar SET durum=1 WHERE id='" + engelleID + "' ");
    }

    //engel kadlırma işlemi
    boolean engelKaldirD = (request.getParameter("engelKaldirID") == null);
    if (!engelKaldirD) {
        String engelKaldirID = request.getParameter("engelKaldirID");
        //engel kaldırma işlemi yapılıyor
        int engelKadir = ns.baglan().executeUpdate("UPDATE kullanicilar SET durum=0 WHERE id='" + engelKaldirID + "' ");
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap Core CSS -->
        <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>

        <!-- MetisMenu CSS -->
        <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>

        <!-- DataTables CSS -->
        <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet"/>

        <!-- DataTables Responsive CSS -->
        <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet"/>

        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet"/>

        <!-- Custom Fonts -->
        <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>


        <title>Kullanıcılar</title>
    </head>
    <body>




        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Kullanıcılar</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">

                            <div class="dataTables_filter"><a class="btn btn-success" href="kullaniciEkle.jsp">Yeni Kullanıcı Ekle</a></div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                            <div class="dataTable_wrapper">



                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                    <thead>

                                        <tr>
                                            <th>Kullanıcı Adı</th>
                                            <th>Şifre</th>
                                            <th>Adı</th>
                                            <th>Soyadı</th>
                                            <th>Mail</th>
                                            <th>Seviye</th>
                                            <th>Tarih</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <%                                int i = 0;
                                            ResultSet rs = ns.baglan().executeQuery("SELECT * FROM kullanicilar ");
                                            while (rs.next()) {
                                                idLer.add(rs.getString("id"));
                                        %>



                                        <tr class="gradeX">
                                            <td><%=rs.getString("kuladi")%></td>
                                            <td><%=rs.getString("sifre")%></td>
                                            <td><%=rs.getString("adi")%></td>
                                            <td><%=rs.getString("soyadi")%></td>
                                            <td><%=rs.getString("mail")%></td>
                                            <%if (rs.getString("seviye").equals("0")) {%>
                                                    <td>Admin</td>
                                                <%} else if (rs.getString("seviye").equals("1")) {%>
                                                    <td>Üye</td>
                                                <%}%>
                                            
                                            <td><%=rs.getString("tarih")%></td>
                                            <%if (rs.getString("durum").equals("0")) {%>
                                            <td><a   class="btn btn-danger" href="?engelleID=<%out.print(idLer.get(i));%>">Engelle</a></td>
                                            <%} else if (rs.getString("durum").equals("1")) {%>
                                            <td><a style="margin-left: 0 auto" class="btn btn-success" href="?engelKaldirID=<%out.print(idLer.get(i));%>">Engel Kaldır</a></td>
                                            <%}%>
                                            <td><a class="btn btn-primary"  href="kullaniciDuzenle.jsp?duzenleID=<% out.print(idLer.get(i)); %>">Düzenle</a></td>

                                        </tr>

                                        <% i++;
                                        }%>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>

    </body>
</html>
