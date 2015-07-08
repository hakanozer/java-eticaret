<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>
                Kullanıcı Ayarları
        </title>

    <link href="http://jsonbulut.com/admin/static/css/bulut.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="http://jsonbulut.com/admin/static/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="http://jsonbulut.com/admin/static/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Timeline CSS -->
    <link href="http://jsonbulut.com/admin/static/dist/css/timeline.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="http://jsonbulut.com/admin/static/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="http://jsonbulut.com/admin/static/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="./Kullanıcı Ayarları_files/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
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
            <a class="navbar-brand" href="http://jsonbulut.com/admin/index.php">
                Json Bulut ( Json  Bulut )
            </a>

        </div>
        <!-- .NAVBAR-HEADER -->

        <!-- ::TEPE SAĞ -->
        <ul class="nav navbar-top-links navbar-right">

            <!-- MESAJLAR -->
            <li class="dropdown acil">

                <a class="dropdown-toggle" data-toggle="dropdown" href="http://jsonbulut.com/admin/index.php?link=ayarlar#">
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
                        <!--?php echo $_SESSION["kulAdi"]; ?-->
                    </p>
                    <li><a href="./Kullanıcı Ayarları_files/Kullanıcı Ayarları.html"><i class="fa fa-gear fa-fw"></i> Ayarlar</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="http://jsonbulut.com/admin/cikis.php"><i class="fa fa-sign-out fa-fw"></i>Çıkış Yap</a>
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
                                                            <a href="index.php">
                                    <img src="../temp/croppedImg_665335549_400.jpeg" width="100%" alt="Logomuz"/>
                                </a>
                                                    </div>
                    </li>
-->








<li><div style="text-align: center; padding: 0px">

    <link href="http://jsonbulut.com/admin/static/assets/css/main.css" rel="stylesheet">
    <link href="http://jsonbulut.com/admin/static/assets/css/croppic.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

	
	<div class="row mt ">
			<div class="col-lg-4 " style="width:100%">
				<div id="cropContainerEyecandy">

                                        <div class="cropImgWrapper" style="overflow:hidden; z-index:1; position:absolute; width:248px; height:198px;"><img src="./Kullanıcı Ayarları_files/croppedImg_665335549.jpeg" style="width: 352px; height: 198px; left: -52px; top: 0px; position: relative; z-index: 1000;"></div>
                    				<div class="cropControls cropControlsUpload"> <i class="cropControlUpload"></i> </div><form class="cropContainerEyecandy_imgUploadForm" style="display: none; visibility: hidden;">  <input type="file" name="img" id="cropContainerEyecandy_imgUploadField">  </form></div>
			</div>
	</div>

    <script async="" src="./Kullanıcı Ayarları_files/analytics.js"></script><script src="./Kullanıcı Ayarları_files/jquery.min.js" type="text/javascript"></script>
	<script src="./Kullanıcı Ayarları_files/bootstrap.min.js"></script>
	<script src="./Kullanıcı Ayarları_files/jquery.mousewheel.min.js"></script>
   	<script src="./Kullanıcı Ayarları_files/croppic.min.js"></script>
    <script src="./Kullanıcı Ayarları_files/main.js"></script>
    <script src="./Kullanıcı Ayarları_files/jquery.min.js" type="text/javascript"></script>
    <script>

        $( document ).ready(function() {
            // toogle hareketi sağlanıyor - Mesajlar
            $('li.dropdown.acil').toggle(function() {
                $('.dropdown-menu.dropdown-messages').slideDown();
            }, function() {
                $('.dropdown-menu.dropdown-messages').slideUp();
            });

        })

		var croppicContainerEyecandyOptions = {
				uploadUrl:'static/img_save_to_file.php',
				cropUrl:'static/img_crop_to_file.php',
				imgEyecandy:false,				
				loaderHtml:'<div class="loader bubblingG"><span id="bubblingG_1"></span><span id="bubblingG_2"></span><span id="bubblingG_3"></span></div> '
		}
		var cropContainerEyecandy = new Croppic('cropContainerEyecandy', croppicContainerEyecandyOptions);
	</script>

</div>
</li>


















                    <li class="sidebar-search"><input type="text" class="form-control" placeholder="Arama"></li><table class="table table-hover table-bordered table-sieve">
                        <thead>

                        </thead>
                        <tbody>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php"><i class="fa fa-user-secret fa-fw"></i> Admin Paneli</a>
                                </li>
                                </td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=reklam"><i class="fa fa-bar-chart fa-fw"></i> Reklam Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=icerik"><i class="fa fa-pie-chart fa-fw"></i> İçerik Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=musteriler"><i class="fa fa-users fa-fw"></i> Müşteri Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=galeri"><i class="fa fa-picture-o fa-fw"></i> Galeri Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=duyurular"><i class="fa fa-exclamation-triangle fa-fw"></i> Duyurular [0]</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=urunler"><i class="fa fa-cubes fa-fw"></i> Ürünler</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=formlar"><i class="fa fa-list-alt fa-fw"></i> Formlar</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=haberler"><i class="fa fa-newspaper-o fa-fw"></i> Haber Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=begeni"><i class="fa fa-thumbs-o-up fa-fw"></i> Beğeni Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=anketler"><i class="fa fa-check-square-o fa-fw"></i> Anket Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=duyuru"><i class="fa fa-bullhorn fa-fw"></i> Duyuru Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=mesajlar"><i class="fa fa-envelope fa-fw"></i> Mesaj Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=siparisler"><i class="fa fa-gift fa-fw"></i> Sipariş Yönetimi</a>
                                </li></td></tr>
                        <tr><td><li>
                                    <a href="http://jsonbulut.com/admin/index.php?link=json"><i class="fa fa-cloud fa-fw"></i> JSON API Yönetimi</a>
                                </li></td></tr>
                        </tbody>
                    </table>



                    <script src="./Kullanıcı Ayarları_files/jquery.sieve.min.js" type="text/javascript"></script>
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
            <a href="./Kullanıcı Ayarları_files/Kullanıcı Ayarları.html" class="btn btn-primary"><i class="glyphicon glyphicon-backward"> </i> Geri Dön</a>
        </div>
            <!-- Maps bölümü -->

    <script src="./Kullanıcı Ayarları_files/platform.js" async="" defer="" gapi_processed="true"></script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-1008641-85', 'auto');
        ga('send', 'pageview');
    </script>

    <!-- İŞLEM MESAJ -->
<script>
    function yonlendirBasarili() {
        var page_url = window.location.href;
        page_url = page_url.replace("&sonuc=basarili", "");
        window.location.href = page_url;
    };

    function yonlendirBasarisiz() {
        var page_url = window.location.href;
        page_url = page_url.replace("&sonuc=basarisiz", "");
        window.location.href = page_url;
    };
</script>



    <section>
        <h1>Kullanıcı Ayarları: </h1>
        <p>Sayın <strong>Json  Bulut</strong>, kişisel bilgilerinizi ve şirket bilgilerinizi aşağıda güncelleyebilirsiniz.</p>
        <hr>


        <div class="row">

            <div class="col-md-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class=""><i class="glyphicon glyphicon-user pull-right"></i>Kullanıcı Bilgileri</h4>
                    </div>
                    <div class="panel-body">
                        <p>Kullanıcı bilgilerinizi güncelleyin.</p>
                    </div>

                    <div class="panel-footer">
                        <a class="pull-right" href="admin_kulBilgi_guncelleme.jsp"><i class="glyphicon glyphicon-edit fa-2x"></i></a>
                        <span class="clearfix"></span>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class=""><i class="glyphicon glyphicon-user pull-right"></i>Şirket Bilgileri</h4>
                    </div>
                    <div class="panel-body">
                        <p>Şirket bilgilerinizi güncelleyin.</p>
                    </div>

                    <div class="panel-footer">
                        <a class="pull-right" href="http://jsonbulut.com/admin/index.php?link=ayarlar&islem=sir_duzenle"><i class="glyphicon glyphicon-edit fa-2x"></i></a>
                        <span class="clearfix"></span>
                    </div>
                </div>
            </div>


            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h4 class=""><i class="glyphicon glyphicon-user pull-right"></i> Diğer İşlemler</h4>
                    </div>
                    <div class="panel-body">

                                                <a class="btn btn-warning btn-sm" href="http://jsonbulut.com/admin/index.php?link=ayarlar&islem=yetkili">Yeni Yetkili Ata</a>
                        <a class="btn btn-primary btn-sm" href="http://jsonbulut.com/admin/index.php?link=ayarlar&islem=calisan_ekle">Çalışan Ekle</a>
                                                                        <hr>
                        <p><strong>Referans kodunuz: </strong>f337595905b279252c97b7e47c2830e6</p>
                                                    <form action="http://jsonbulut.com/admin/sirket/inc/refYenile.php" method="post">
                                <input name="id" type="hidden" value="11">
                                <input name="adi" type="hidden" value="Json Bulut">
                                <input class="btn btn-danger btn-small" type="submit" value="Referans Kodu Yenile">

                            </form>
                        
                    </div>

                    <div class="panel-footer">
                        <span class="clearfix"></span>
                    </div>
                </div>
            </div>

        </div>
    </section>

    </content>
</div>


</div>

<footer class="text-center">
</footer>
<!-- #WRAPPER -->
<!-- header.html.twig -->

<!-- ########## SCRIPTLER ########## -->

<!-- jQuery -->
<script src="./Kullanıcı Ayarları_files/jquery.min(1).js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="./Kullanıcı Ayarları_files/bootstrap.min(1).js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="./Kullanıcı Ayarları_files/metisMenu.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="./Kullanıcı Ayarları_files/raphael-min.js"></script>
<!-- Custom Theme JavaScript -->



<!-- Tablolar için dataTable işlemleri -->
<script type="text/javascript" src="./Kullanıcı Ayarları_files/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="./Kullanıcı Ayarları_files/dataTables.bootstrap.js"></script>
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




</body></html>