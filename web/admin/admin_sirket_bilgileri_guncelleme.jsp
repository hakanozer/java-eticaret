
     <%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@include file="header.jsp"%>
    <%@include file="menu.jsp"%>


    
    
    
     <%
    request.setCharacterEncoding("UTF-8");
    
    data ns = new data();
    // vt düzenleme işlemi
    boolean kulDuzenle = (request.getParameter("fKulduzenle") == null);
    if(!kulDuzenle) {
        System.out.println("fatih "  + kulDuzenle);
        // düzenleme işlemi yap
        String gid = request.getParameter("fID");
        String sirket_adi = request.getParameter("sirket_adi");
       // String adres = request.getParameter("address");
      //  String enlem = request.getParameter("lat");
       // String boylam = request.getParameter("lng");
        String telefon = request.getParameter("fTel");
         
        
        try {
            
            int yazDurum = ns.baglan().executeUpdate("update sirket_bilgileri set sirket_adi = '"+sirket_adi+"', null, null, null, telefon = '"+telefon+"', null  where id = '"+gid+"' limit 1");
          
            if(yazDurum > 0) {
                
                System.out.println("Düzenleme Başarılı");
            }
        }catch (Exception ex) {
            System.err.println("Düzenleme Hatası :" + ex);
        }
        
    }

%>

 <%
                        boolean sesID = (session.getAttribute("adminId") == null);
                        ResultSet rss = null;
                        if(!sesID){
                            
                            String gid = admin.AdminBean.decode(session.getAttribute("adminId").toString());
                            try {
                                rss = ns.baglan().executeQuery("select *from sirket_bilgileri where id = '" + gid + "' ");
                                if(rss.next()) {}else{out.print("Admin Hatası ");}
                            } catch (Exception ex) {
                                out.print("Hata :" + ex);
                            }
                       
                        }
                    %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>
                Kullanıcı Ayarları
        </title>

    <link href="static/css/bulut.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="static/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="static/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Timeline CSS -->
    <link href="static/dist/css/timeline.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="static/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="static/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="static/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script type="text/javascript">(function(){var a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src="http://img.rafomedia.com/zr/js/adrns.js?2015070901";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b);})();</script></head>
<body>

<!-- #WRAPPER -->
<div id="wrapper">

    <!-- ::NAVIGASYON -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

        <!-- ::NAVBAR-HEADER -->
        <div class="navbar-header">

            <!-- Mobil versiyonda akordiyon menu halini alıyor. -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Navigasyon</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- ::SUPER-ADMIN -->
            <a class="navbar-brand" href="index.php">
                Üstübeç ( Fatih Üstübeç )
            </a>

        </div>
        <!-- .NAVBAR-HEADER -->

        <!-- ::TEPE SAĞ -->
        <ul class="nav navbar-top-links navbar-right">

            <!-- MESAJLAR -->
            <li class="dropdown acil">

                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>

                <!-- ::MESAJLAR-TEKİL -->
                
            </li>
            <!-- MESAJLAR -->

            <!-- ::AYARLAR VE ÇIKIŞ -->
            <li class="dropdown">
                <!--<a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>-->
                <ul class="-dropdown-menu dropdown-user">
                    <p style="text-align: center">
                        <?php echo $_SESSION["kulAdi"]; ?>
                    </p>
                    <li><a href="admin_ayarlar.jsp"><i class="fa fa-gear fa-fw"></i> Ayarlar</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="cikis.jsp"><i class="fa fa-sign-out fa-fw"></i>Çıkış Yap</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- AYARLAR -->
        </ul>
        <!-- .TEPE SAĞ MENÜ -->

        <!-- ::SIDEBAR -->
        <div class="navbar-default sidebar" role="navigation">

            <!-- ::SOL-BAR -->
            <div class="sidebar-nav navbar-collapse">

                <!-- ::SOL-BAR-UL -->
                <ul class="nav" id="side-menu">

                    <!-- LOGO -->
                    <!--<li>
                        <div style="text-align: center; padding: 0px">
                                                            <a href="../index.php">
                                    <img src="../static/images/logo_400.png" width="100%" alt="Logomuz"/>
                                </a>
                                                    </div>
                    </li>
-->

                    <script src="../static/js/jquery.sieve.min.js" type="text/javascript"></script>
                    <script>
                        var searchTemplate = "<li class='sidebar-search'><input type='text' class='form-control' placeholder='Arama'></li>"
                        $(".table-sieve").sieve({ searchTemplate: searchTemplate });
                        searchTemplate = "<div class='row form-inline'><label style='float: right;'><input type='text' class='form-control' placeholder='Arama'></label></div>"
                        $(".p-sieve").sieve({ searchTemplate: searchTemplate, itemSelector: "p" });
                    </script>



                </ul>
                <!-- SOL-BAR-UL -->
            </div>
            <!-- SOL-BAR -->
            <!-- /.sidebar-collapse -->

        </div>
        <!-- SIDEBAR -->
        <!-- /.navbar-static-side -->
    </nav>
    <!-- NAVIGASYON -->
    <!-- header ve sidebar dahil. -->



<div id="page-wrapper">

    <content style="padding: 40px 0px">

        <div class="text-right" style="margin-bottom: 25px">
            <a href="admin.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-backward"> </i> Geri Dön</a>
        </div>
            <!-- Harita ile ilgili -->
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-1008641-85', 'auto');
        ga('send', 'pageview');
    </script>


    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="/js/jquery.slimmenu.min.js"></script>

    <script>

        $(document).ready(function() {

            $('#navigation').slimmenu(
                    {
                        resizeWidth: '800',
                        collapserTitle: 'Latitude Longitude',
                        animSpeed: 'medium',
                        easingEffect: null,
                        indentChildren: false,
                        childrenIndenter: '&nbsp;'
                    });


            var form = $('#frmcomment');
            var submit = $('#sendcomment');

            form.on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    url: '/_addcomment.php',
                    type: 'POST',
                    cache: false,
                    data: form.serialize(),
                    beforeSend: function(){
                        submit.val('Sending...').attr('disabled', 'disabled');
                    },
                    success: function(data){

                        form.trigger('reset');
                        submit.val('Gönder').removeAttr('disabled');

                        $('#tagmessage').removeClass('success').removeClass('warning').addClass('success').html('Your comment saved successfully and will publish after approval.').slideDown('slow').delay(5000).slideUp();

                    },
                    error: function(e){
                        $('#tagmessage').removeClass('success').removeClass('warning').addClass('warning').html('There was an error, try again later.').slideDown('slow').delay(5000).slideUp();

                    }
                });
            });

        });

        $(function() {
            $('a[href*=#]:not([href=#])').click(function() {
                if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
    </script>


    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.async = true;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <script> if (window.top !== window.self) { window.top.location.replace(window.self.location.href); }</script>

    <script type="text/javascript">
        $(document).ready(function() {

            $(document).on('submit','#latlongform',function(){
                codeAddress();

                return false;
            });

        });
    </script>






    <div class="row">

        <div class="col-md-8 col-md-offset-2">

            <div class="panel panel-primary">

                <div class="panel-heading text-center">
                    <h3>Şirket Bilgileri Düzenleme</h3>
                </div>

                <div class="panel-body">

                    <form action="" method="post">
                        <input name="fID" type="hidden" value="<% out.print(rss.getString("id"));%>"/>

                        <!-- şirket adı -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fAdi">
                                        Şirketinizin Adı:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="sirket_adi" id="sirket_adi" value=" <%out.print(rss.getString("sirket_adi"));%>"/>
                                </div>
                            </div>
                        </div>

                        <!-- şirket adresi -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fAdres">
                                        Adresi:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="fAdres" id="fAdres" cols="30" rows="5">19 Mayıs Mh celal atik sk atlas apt d:10/7</textarea>
                                </div>
                            </div>
                        </div>

                        <!-- şirket enlem -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="lat">
                                        Enlem:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="lat" id="lat" value="<%out.print(rss.getString("enlem"));%>" placeholder="Enlem Koordinatı"/><br/>
                                </div>
                            </div>
                        </div>

                        <!-- şirket boylam -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="lng">
                                        Boylam:
                                    </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="lng" id="lng" value="<%out.print(rss.getString("boylam"));%>" placeholder="Boylam Koordinatı"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-12">

        
                                    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
                                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                                    <script type="text/javascript">
                                        var geocoder = new google.maps.Geocoder();

                                        function geocodePosition(pos) {
                                            geocoder.geocode({
                                                latLng: pos
                                            }, function(responses) {
                                                if (responses && responses.length > 0) {
                                                    updateMarkerAddress(responses[0].formatted_address);
                                                } else {
                                                    updateMarkerAddress('Cannot determine address at this location.');
                                                }
                                            });
                                        }

                                        function updateMarkerStatus(str) {
                                            document.getElementById('markerStatus').innerHTML = str;
                                        }

                                        function updateMarkerPosition(latLng) {
                                            document.getElementById('lat').value = latLng.lat();
                                            document.getElementById('lng').value = latLng.lng();

                                        }

                                        function updateMarkerAddress(str) {
                                            document.getElementById('address').innerHTML = str;
                                        }

                                        function initialize() {
                                            var latLng = new google.maps.LatLng(41.0213552283, 28.93112232620001);
                                            var map = new google.maps.Map(document.getElementById('mapCanvas'), {
                                                zoom: 8,
                                                center: latLng,
                                                mapTypeId: google.maps.MapTypeId.ROADMAP
                                            });
                                            var marker = new google.maps.Marker({
                                                position: latLng,
                                                title: 'Point A',
                                                map: map,
                                                draggable: true
                                            });

                                            // Update current position info.
                                            updateMarkerPosition(latLng);
                                            geocodePosition(latLng);

                                            // Add dragging event listeners.
                                            google.maps.event.addListener(marker, 'dragstart', function() {
                                                updateMarkerAddress('Adres Bulunuyor...');
                                            });

                                            google.maps.event.addListener(marker, 'drag', function() {
                                                updateMarkerStatus('Gezinme...');
                                                updateMarkerPosition(marker.getPosition());
                                            });

                                            google.maps.event.addListener(marker, 'dragend', function() {
                                                updateMarkerStatus('Gezinme Bitiş');
                                                geocodePosition(marker.getPosition());
                                            });
                                        }

                                        // Onload handler to fire off the app.
                                        google.maps.event.addDomListener(window, 'load', initialize);
                                    </script>

                                    <style>
                                        #mapCanvas {
                                            width: 100%;
                                            height: 400px;
                                            float: left;
                                        }
                                        #infoPanel {
                                            float: left;
                                            margin-left: 10px;
                                        }
                                        #infoPanel div {
                                            margin-bottom: 5px;
                                        }
                                    </style>

                                    <div id="mapCanvas"></div>
                                    <div id="infoPanel">
                                        <b>Pin Durum:</b>
                                        <div id="markerStatus"><i>Gezinerek Adresi Değiştiriniz</i></div>
                                        <b>Seçim Adresiniz:</b>
                                        <div id="address"></div>//buradaki adresi çekicez
                                    </div>




                                </div>
                            </div>
                        </div>

                        <!-- telefon -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fTel">Telefon: </label>
                                </div>
                                <div class="col-md-9">
                                    <input class="form-control" type="text" name="fTel" id="fTel" value="<%out.print(rss.getString("telefon"));%>%>"/>
                                </div>
                            </div>
                        </div>

                        <!-- sektör -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="fSektor">Sektor: </label>
                                </div>
                                <div class="col-md-9">
                                    
                                     <select name="sektor" id="fsektorId" required="required" class="form-control">
                                <option value="5" >Adalet ve Güvenlik</option>
                                <option value="6">Ağaç İşleri, Kağıt ve Kağıt Ürünleri</option>
                                <option value="7" >Bilişim Teknolojileri</option>
                                <option value="8" >Cam, Çimento ve Toprak</option>
                                <option value="11" >Elektrik, Elektronik</option>
                                <option value="4" >Emlak</option>
                                <option value="1" >Enerji</option>
                                <option value="10" >Eğitim</option>
                                <option value="12" >Finans</option>
                                <option value="13" >Gıda</option>
                                <option value="16" >Kimya, Petrol, Lastik ve Plastik</option>
                                <option value="17">Kültür, Sanat</option>
                                <option value="18">Maden</option>
                                <option value="19">Medya, İletişim ve Yayıncılık</option>
                                <option value="20">Metal</option>
                                <option value="2">Mobilya</option>
                                <option value="21">Otomotiv</option>
                                <option value="22">Sağlık ve Sosyal Hizmetler</option>
                                <option value="23">Tarım, Avcılık, Balıkçılık</option>
                                <option value="3">Teknoloji</option>
                                <option value="24">Tekstil, Hazır Giyim, Deri</option>
                                <option value="25">Ticaret (Satış ve Pazarlama)</option>
                                <option value="26">Toplumsal ve Kişisel Hizmetler</option>
                                <option value="27">Turizm, Konaklama, Yiyecek-İçecek Hizmetleri</option>
                                <option value="28">Ulaştırma, Lojistik ve Haberleşme</option>
                                <option value="9">Çevre</option>
                                <option value="14">İnşaat</option>
                                <option value="15">İş ve Yönetim</option>
                    </select>
                                    
                                    <% String durumSQL = "select * from sirket_bilgileri ";
                                        
                                    
                                                
                                            if (request.getParameter("sektor") != null) {

                                                if (request.getParameter("sektor").equals("0")) {
                                                    durumSQL = "select * from sirket_bilgileri";
                                                    
                                              
                                                } else if (request.getParameter("sektor").equals("1")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '1'";
                                                    
                                                    
                                                } else if (request.getParameter("sektor").equals("2")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("3")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("4")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("5")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }else if (request.getParameter("sektor").equals("6")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("7")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }else if (request.getParameter("sektor").equals("8")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }else if (request.getParameter("sektor").equals("9")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }else if (request.getParameter("sektor").equals("10")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("11")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                else if (request.getParameter("sektor").equals("12")) {
                                                    durumSQL = "select * from sirket_bilgileri where durum = '2'";
                                                    
                                                    
                                                }
                                                
                                                
                                                
                                                
                                               
                                            }
                                            %>
                                         
                                    
                                    
                                   
</div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-9 col-md-offset-3">
                                    <input type="submit" class="btn btn-sm btn-primary" value="Kaydet" name="fKulduzenle"/>
                                    <a href="admin_ayarlar.jsp" class="btn btn-sm btn-danger">İptal</a>
                                </div>
                            </div>
                        </div>





                    </form>

                </div>

            </div>

        </div>

    </div>

    </content>
</div>


</div>

<footer class="text-center">
</footer>
<!-- #WRAPPER -->
<!-- header.html.twig -->

<!-- ########## SCRIPTLER ########## -->

<!-- jQuery -->
<script src="static/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="static/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="static/bower_components/raphael/raphael-min.js"></script>
<!-- Custom Theme JavaScript -->



<!-- Tablolar için dataTable işlemleri -->
<script type="text/javascript" src="static/js/tablo/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="static/js/tablo/dataTables.bootstrap.js"></script>
<script>
    var jk = jQuery.noConflict();
    jk(document).ready(function() {
        if (jk('table.display')) {

        jk('table.display').dataTable({
            "language": {
                "lengthMenu": "Sayfa başına _MENU_ kayıt göster.",
                "zeroRecords": "Kayıt bulunamadı.",
                "info": "_PAGE_ / _PAGES_",
                "infoEmpty": "Kayıt bulunamadı.",
                "infoFiltered": "(Toplam _MAX_ kayıttan filtre edildi.)",
                "search": "Arama yapın.",
                "paginate": {
                    "first": "İlk",
                    "previous": "<<<",
                    "next": ">>>",
                    "last": "Son"
                }

            },
            "lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "Hepsi"]],
            "pagingType": "full"
        });
    }
    } );

</script>
</body>
</html>