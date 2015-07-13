<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"
      lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Java | E-commerce</title>
        <meta name="description" content="Default Description" />
        <meta name="keywords" content="Magento, Varien, E-commerce" />
        <meta name="robots" content="INDEX,FOLLOW" />
        <meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1" />
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <!--[if IE 8 ]><html class="ie8"<![endif]-->
        <!--[if IE 9 ]><html class="ie9"><![endif]-->
        <!--[if lt IE 7]>
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
        <link rel="stylesheet" type="text/css" href="css/owl.theme.css" />
        <link rel="stylesheet" type="text/css" href="css/effects.css" />
        <link rel="stylesheet" type="text/css" href="css/styles.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/widgets.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/ajaxcart.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="all" />
        <link href="admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/elegantfont.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/megamenu.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/accordion.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/custom.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/rtl.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/colorbox.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/design_default.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/layout_default.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/print.css" media="print" />

        <script type="text/javascript" src="js/prototype.js"></script>
        <script type="text/javascript" src="js/ccard.js"></script>
        <script type="text/javascript" src="js/validation.js"></script>
        <script type="text/javascript" src="js/builder.js"></script>
        <script type="text/javascript" src="js/effects.js"></script>
        <script type="text/javascript" src="js/dragdrop.js"></script>
        <script type="text/javascript" src="js/controls.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>
        <script type="text/javascript" src="js/js.js"></script>
        <script type="text/javascript" src="js/form.js"></script>
        <script type="text/javascript" src="js/menu.js"></script>
        <script type="text/javascript" src="js/translate.js"></script>
        <script type="text/javascript" src="js/cookies.js"></script>
        <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
        <script type="text/javascript" src="js/compatibility.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-tooltip.js"></script>
        <script type="text/javascript" src="js/collapse.js"></script>
        <script type="text/javascript" src="js/dropdown.js"></script>
        <script type="text/javascript" src="js/jquery.lib.min.js"></script>
        <script type="text/javascript" src="js/app.js"></script>
        <script type="text/javascript" src="js/jquery.ajaxcart.js"></script>
        <script type="text/javascript" src="js/jquery.cookie.js"></script>

        <!--[if lt IE 8]>
        <link rel="stylesheet" type="text/css" href="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/css/styles-ie.css" media="all" />
        <![endif]-->
        <!--[if lt IE 7]>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/lib/ds-sleight.js"></script>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/magenthemes/jquery/plugins/elegantfont/lte-ie7.js"></script>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/skin/frontend/base/default/js/ie6.js"></script>
        <![endif]-->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/magenthemes/jquery/plugins/bootstrap/html5shiv.js"></script>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/magenthemes/jquery/plugins/bootstrap/respond.min.js"></script>
        <![endif]-->

        <script type="text/javascript">//<![CDATA[
            var Translator = new Translate([]);
            //]]></script>
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />

        <style>
            .modal-backdrop {
                z-index: 100;
            }
        </style>

    </head>

    <%

        data d = new data();
        ArrayList idLer = new ArrayList();

    %>
    <body class="   cms-index-index cms-home">

        <!-- Sepetim -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Ürün Sepeti</h4>
                    </div>
                    <div class="modal-body">

                        <table id="shopping-cart-table" class="table table-bordered table-responsive">
                            <colgroup><col width="1">
                                    <col>
                                        <col width="1">
                                            <col width="1">
                                                <col width="1">
                                                    <col width="1">
                                                        <col width="1">

                                                            </colgroup><thead>
                                                                <tr class="first last">
                                                                    <th rowspan="1">Ürün Resmi</th>
                                                                    <th rowspan="1"><span class="nobr">Ürün Adı</span></th>
                                                                    <th class="a-center" colspan="1"><span class="nobr">Fiyat</span></th>
                                                                    <th rowspan="1" class="a-center">Adet</th>
                                                                    <th class="a-center" colspan="1">Toplam Fiyat</th>
                                                                    <th rowspan="1" class="a-center">Sil</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr class="first last odd">
                                                                    <td><a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" title="Simple Product" class="product-image"><img src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/5/thumbnail/75x/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_tube_top_1_1.jpg" width="75" height="75" alt="Simple Product"></a></td>
                                                                    <td>
                                                                        <h2 class="product-name">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html">Simple Product</a>
                                                                        </h2>
                                                                    </td>
                                                                    <td class="a-right">
                                                                        <span class="cart-price">
                                                                            <span class="price">$566.00</span>                
                                                                        </span>


                                                                    </td>
                                                                    <td class="a-center">
                                                                        <input name="cart[52][qty]" value="1" size="4" title="Qty" class="input-text qty" maxlength="12">
                                                                    </td>
                                                                    <td class="a-right">
                                                                        <span class="cart-price">

                                                                            <span class="price">$566.00</span>                            
                                                                        </span>
                                                                    </td>
                                                                    <td class="a-center last"><a href="#" title="Remove item" class="btn btn-danger"><i class="fa fa-trash"></i></a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                            </table>


                                                            </div>
                                                            <div class="modal-footer">
                                                                <a href="#" class="btn btn-success">Siparişi Tamamla</a>
                                                                <a href="#" class="btn btn-primary">Sepete Git</a>
                                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Kapat</button>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            </div>
                                                            <!-- /Sepetim -->

                                                            <section class="mt-container">
                                                                <!-- navigation BOF -->

                                                                <div class="mt-menu mt-effect-slide">
                                                                    <div class="mt-menu-active">
                                                                        <div class="navbar-header">
                                                                            <div class="navbar-toggle" >
                                                                                <div class="collapsed-icon pull-left">
                                                                                    <span class="sr-only">Navigation</span>
                                                                                    <span class="icon-bar"></span>
                                                                                    <span class="icon-bar"></span>
                                                                                    <span class="icon-bar"></span>
                                                                                </div>
                                                                                <span class="title-canvas">Menu</span>
                                                                                <button type="button" class="mt-close-canvas"></button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="sidebar">
                                                                        <ul id="mt_accordionmenu" class="nav-accordion nav-mobile-accordion">
                                                                            <li><a href="index.jsp">ANASAYFA</a></li>
                                                                            <li class="level0 nav-1 level-top first">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion.html" class="level-top">

                                                                                    <span>Women's Fashion</span>
                                                                                </a>
                                                                                <ul class="level0">
                                                                                    <li class="level1 item nav-1-1 first">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion.html">

                                                                                            <span>Suggestion</span>
                                                                                        </a>
                                                                                        <ul class="level1">
                                                                                            <li class="level2 nav-1-1-1 first">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/dreese.html">

                                                                                                    <span>Dresses</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-1-2">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/coat-jacket.html">

                                                                                                    <span>Coat &amp; Jacket</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-1-3">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/tops-tees.html">

                                                                                                    <span>Tops &amp; Tees</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-1-4">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/hoodie-sweatshirts.html">

                                                                                                    <span>Hoodie &amp; Sweatshirts</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-1-5">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/swimwear.html">

                                                                                                    <span>Swimwear</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-1-6 last">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/intimates.html">

                                                                                                    <span>Intimates</span>
                                                                                                </a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </li><li class="level1 item nav-1-2">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection.html">

                                                                                            <span>Collection</span>
                                                                                        </a>
                                                                                        <ul class="level1">
                                                                                            <li class="level2 nav-1-2-7 first">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/underwear.html">

                                                                                                    <span>Underwear</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-2-8">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/t-shirt.html">

                                                                                                    <span>T-Shirt</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-2-9">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/hoodie.html">

                                                                                                    <span>Hoodie</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-2-10">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/jeans.html">

                                                                                                    <span>Jeans</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-2-11 last">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/suits-blazers.html">

                                                                                                    <span>Suits &amp; Blazers</span>
                                                                                                </a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </li><li class="level1 item nav-1-3 last">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories.html">

                                                                                            <span>Accessories</span>
                                                                                        </a>
                                                                                        <ul class="level1">
                                                                                            <li class="level2 nav-1-3-12 first">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/earrings.html">

                                                                                                    <span>Earrings</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-3-13">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/necklaces.html">

                                                                                                    <span>Necklaces</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-3-14">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/braceleets.html">

                                                                                                    <span>Braceleets</span>
                                                                                                </a>
                                                                                            </li><li class="level2 nav-1-3-15 last">
                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/pendants.html">

                                                                                                    <span>Pendants</span>
                                                                                                </a>
                                                                                            </li>
                                                                                        </ul>
                                                                                    </li>
                                                                                </ul>
                                                                            </li><li class="level0 nav-2 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/men-s-fashion.html" class="level-top">

                                                                                    <span>Men's Fashion</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-3 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/jewelry-watches.html" class="level-top">

                                                                                    <span>Jewelry &amp; Watches</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-4 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/shoes.html" class="level-top">

                                                                                    <span>Shoes</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-5 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/glasses.html" class="level-top">

                                                                                    <span>Glasses</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-6 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/bags.html" class="level-top">

                                                                                    <span>Bags</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-7 level-top">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/kids-fashion.html" class="level-top">

                                                                                    <span>Kids Fashion</span>
                                                                                </a>
                                                                            </li><li class="level0 nav-8 level-top last">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/accessories.html" class="level-top">

                                                                                    <span>Accessories</span>
                                                                                </a>
                                                                            </li>        </ul>
                                                                        <script type="text/javascript">
                                                                            $mt(document).ready(function () {
                                                                                $mt("#mt_accordionmenu").mtAccordionMenu({
                                                                                    accordion: true,
                                                                                    speed: 400,
                                                                                    closedSign: 'collapse',
                                                                                    openedSign: 'expand',
                                                                                    mouseType: 0,
                                                                                    easing: 'easeInOutQuad'
                                                                                });
                                                                            });
                                                                        </script>
                                                                    </div>
                                                                </div>
                                                                <div class="site-overlay"></div>
                                                                <section class="mt-wrapper">
                                                                    <noscript>
                                                                        <div class="global-site-notice noscript">
                                                                            <div class="notice-inner">
                                                                                <p>
                                                                                    <strong>JavaScript seems to be disabled in your browser.</strong><br />
                                                                                    You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
                                                                            </div>
                                                                        </div>
                                                                    </noscript>




                                                                    <header class="header-container">
                                                                        <div class="header">
                                                                            <div class="hidden-xs header-top">
                                                                                <div class="container">
                                                                                    <div class="row">
                                                                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                                                            <div class="top-notification">
                                                                                                <div class="title">
                                                                                                    <i class="fa fa-rss"></i>
                                                                                                    <span>Haber</span>
                                                                                                </div>

                                                                                                <div class="text">


                                                                                                    <marquee behavior="scroll" direction="left"><p class="break-new">
                                                                                                            <%                                                            int i = 0;
                                                                                                                ResultSet rs = d.baglan().executeQuery("select *from duyurular WHERE durum_id = '1'");
                                                                                                                while (rs.next()) {


                                                                                                            %>
                                                                                                            <span><a href="duyuruDetay.jsp?IDd=<% out.print(rs.getString("duyuru_id"));  %>"><% out.print(rs.getString("duyuru_baslik"));%></a>
                                                                                                            </span> 
                                                                                                            <%i++;
                                                                                                                }%>
                                                                                                    </marquee>

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="bar-content hidden-xs col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                                                            <div class="top-bar">
                                                                                                <!-- <div class="welcome-msg">Default welcome msg! </div> -->
                                                                                                <div class="login-topbar">
                                                                                                    <a href="accountLogin.jsp"><i aria-hidden="true" class="icon_lock_alt"></i><span class="hidden-sm">Giriş</span></a>
                                                                                                </div>

                                                                                                <div class="checkout-topbar">
                                                                                                    <a href="" data-toggle="modal" data-target="#myModal"><i aria-hidden="true" class="icon_lock_alt"></i><span class="hidden-sm">Sepetim</span></a>

                                                                                                </div>




                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="header-content">
                                                                                <div class="container">
                                                                                    <div class="header-inner">
                                                                                        <div class="container-none">
                                                                                            <div class="header-act row">
                                                                                                <div class="header-content-left col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                                                    <div class="logo-home">
                                                                                                        <h2 class="logo"><strong>Java | E-commerce</strong><a href="index.jsp" title="Java | E-commerce">
                                                                                                                <img class="img-responsive" src="img/logo_2.png" alt="Java | E-commerce" /></a>
                                                                                                        </h2>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="visible-xs col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                                    <div class="mobile-bar">
                                                                                                        <div class="menu-bar-btn navbar">
                                                                                                            <div class="navbar navbar-inverse">
                                                                                                                <div class="navbar-toggle" >
                                                                                                                    <div class="collapsed-icon">
                                                                                                                        <!--<span class="sr-only"></span>-->
                                                                                                                        <span class="icon-bar"></span>
                                                                                                                        <span class="icon-bar"></span>
                                                                                                                        <span class="icon-bar"></span>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="login-topbar">
                                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/customer/account/login/"><i aria-hidden="true" class="icon_lock_alt"></i></a>
                                                                                                        </div>

                                                                                                        <div class="checkout-topbar">
                                                                                                            <a href="#"><i aria-hidden="true" class="icon_cart_alt"></i></a>
                                                                                                            <div class="ajaxcart">
                                                                                                                <div class="search-form-border"></div>
                                                                                                                <div class="mt-ajax-container">
                                                                                                                    <p class="no-items-in-cart">You have no items in your shopping cart.</p>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="compare-topbar">
                                                                                                            <div class="mt-maincompare">
                                                                                                                <div class="compare-btn">
                                                                                                                    <i aria-hidden="true" class="icon_documents_alt"></i>
                                                                                                                    <span class="compare-title hidden-xs">Compare</span>
                                                                                                                    <i class="fa fa-caret-down"></i>
                                                                                                                </div>
                                                                                                                <div class="compare-list block-top-compare">
                                                                                                                    <div class="mtajaxcompare mt-ajax-container">
                                                                                                                        <div class="maincompare">
                                                                                                                            <p class="empty">You have no items to compare.</p>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        <div class="language-topbar">
                                                                                                            <div class="lang-curr">
                                                                                                                <span class="img-flag"><img src="img/english.png" alt="English"/></span>
                                                                                                                <span class="title hidden-xs hidden-sm">English</span>
                                                                                                                <i class="fa fa-caret-down"></i>
                                                                                                            </div>
                                                                                                            <div class="lang-list">
                                                                                                                <ul>
                                                                                                                    <li>
                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/?___store=arabic&amp;___from_store=default">
                                                                                                                            <span class="img-flag"><img src="img/arabic.png" alt="arabic"></span>
                                                                                                                            <span class="lang-name">Arabic</span>
                                                                                                                        </a>
                                                                                                                    </li>
                                                                                                                    <li>
                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/?___store=default&amp;___from_store=default">
                                                                                                                            <span class="img-flag"><img src="img/english.png" alt="english"></span>
                                                                                                                            <span class="lang-name">English</span>
                                                                                                                        </a>
                                                                                                                    </li>
                                                                                                                    <li>
                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/?___store=french&amp;___from_store=default">
                                                                                                                            <span class="img-flag"><img src="img/french.png" alt="french"></span>
                                                                                                                            <span class="lang-name">French</span>
                                                                                                                        </a>
                                                                                                                    </li>
                                                                                                                    <li>
                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/?___store=german&amamp;___from_store=default">
                                                                                                                            <span class="img-flag"><img src="img/german.png" alt="german"></span>
                                                                                                                            <span class="lang-name">German</span>
                                                                                                                        </a>
                                                                                                                    </li>
                                                                                                                    <li>
                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/?___store=spanish&amp;___from_store=default">
                                                                                                                            <span class="img-flag"><img src="img/spanish.png" alt="spanish"></span>
                                                                                                                            <span class="lang-name">Spanish</span>
                                                                                                                        </a>
                                                                                                                    </li>
                                                                                                                </ul>
                                                                                                            </div>
                                                                                                        </div>


                                                                                                        <div class="currency-topbar">
                                                                                                            <div class="currency-sym">
                                                                                                                <span class="sym hidden-md hidden-lg">$</span>
                                                                                                                <span class="title hidden-xs hidden-sm">USD</span>
                                                                                                                <i class="fa fa-caret-down"></i>
                                                                                                            </div>
                                                                                                            <div class="currency-list">
                                                                                                                <ul>
                                                                                                                    <li><a href="http://mt-quartz02.magentothemes.net/index.php/directory/currency/switch/currency/EUR/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/"><span class="sym hidden-md hidden-lg">€</span><span class="title hidden-xs hidden-sm">EUR</span></a></li>
                                                                                                                    <li><a href="http://mt-quartz02.magentothemes.net/index.php/directory/currency/switch/currency/USD/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/"><span class="sym hidden-md hidden-lg">$</span><span class="title hidden-xs hidden-sm">USD</span></a></li>
                                                                                                                </ul>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <!-- <p class="welcome-msg">Default welcome msg! </p> -->
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="header-search-right col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                                                    <div class="top-seach clearfix">
                                                                                                        <div class="quick-access">
                                                                                                            <form id="search_mini_form" action="Search.jsp" method="get">
                                                                                                                <div class="form-search mini-search">
                                                                                                                    <div class="box-search-select">
                                                                                                                        <div class="search-dropdown" >
                                                                                                                            <span class="search-select">Tüm Kategoriler</span>
                                                                                                                            <ul class="search-option-list">

                                                                                                                                <% ResultSet rk = d.baglan().executeQuery("SELECT *FROM kategoriler WHERE ust_kat_id = 0"); %>
                                                                                                                                <li class="selected"><span>Tüm Kategoriler</span>
                                                                                                                                    <%while (rk.next()) {%>
                                                                                                                                    <li value="<% out.print(rk.getInt("id")); %>" ><span><% out.print(rk.getString("adi"));  %></span></li>

                                                                                                                                    <%
                                                                                                                                    
}%>
                                                                                                                            </ul>
                                                                                                                        </div>
                                                                                                                        <input type="hidden" name="cat" id="cat-search" value="0" />

                                                                                                                        <input id="search" type="text" class="input-text" name="q" value="" autocomplete="off"/>
                                                                                                                        <div id="search_autocomplete" class="search-autocomplete"></div>
                                                                                                                    </div>
                                                                                                                    <button type="submit" title="Search" class="btn-search"><i class="fa fa-search"></i></button>
                                                                                                                </div>
                                                                                                                <script type="text/javascript">
                                                                                                                    var searchForm = new Varien.searchForm('search_mini_form', 'search', '');
                                                                                                                    searchForm.initAutocomplete('http://mt-quartz02.magentothemes.net/index.php/catalogsearch/ajax/suggest/', 'search_autocomplete');
                                                                                                                </script>
                                                                                                            </form>                                    </div>
                                                                                                    </div>
                                                                                                </div>

                                                                                                <div class="header-right-block col-xs-12 col-sm-3 col-md-3 col-lg-3 hidden-xs">
                                                                                                    <div class="wrapper-header-contact">
                                                                                                        <div class="info-contact-top primary_color">
                                                                                                            <div class="phone"><span>+84123456789</span></div>
                                                                                                            <div class="email"><span>hello@cleversoft.co</span></div>
                                                                                                        </div>
                                                                                                    </div>                            </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="container">

                                                                        </div>
                                                                        <div class="menu-full" id="mt-sticky-header">
                                                                            <div class="header-menu">
                                                                                <div class="nav-top v-grid ">
                                                                                    <div class="container box-menu">


                                                                                        <div class="nav-top-inner col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                                                            <!-- navigation BOF -->
                                                                                            <div class="mt-navigation hidden-xs clearfix">
                                                                                                <div class="logo-sticky" style="display: none;">
                                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/">
                                                                                                        <img class="img-sticky img-responsive" src="img/logo.png" alt="MTQuartz02" />
                                                                                                    </a>
                                                                                                </div>
                                                                                                <div class="mt-main-menu">
                                                                                                    <ul id="mtnav" class="megamenu">
                                                                                                        <li class="level0 home level-top  active m-dropdown parent">
                                                                                                            <a href="index.jsp" class="level-top"><span>ANASAYFA</span></a>
                                                                                                        </li> 
                                                                                                        <%

                                                                                                            ResultSet rr = d.baglan().executeQuery("SELECT *from icerikler WHERE durum = '1'");
                                                                                                            int a = 0;
                                                                                                            while (rr.next()) {
                                                                                                                //    idLer.add(rr.getInt("id"));
                                                                                                        %>
                                                                                                        <li class="level0 level-top parent custom-block menu-item-features">
                                                                                                            <a href="icerikDetay.jsp?ID=<% out.print(rr.getInt("id")); %>" class="level-top">
                                                                                                                <span><% out.print(rr.getString("baslik")); %></span>
                                                                                                            </a>
                                                                                                        </li> <%
                                                                                                                a++;
                                                                                                            }%>

                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                            <script type="text/javascript">
                                                                                                $mt(function () {
                                                                                                    $mt(".megamenu").megamenu({
                                                                                                        'animation': 'slide',
                                                                                                        'mm_timeout': 150
                                                                                                    });
                                                                                                });
                                                                                            </script>
                                                                                            <!-- navigation EOF -->
                                                                                        </div>
                                                                                        <div class="inner-box-menu">
                                                                                            <div class="row">

                                                                                                <div class="main_categroy_left">
                                                                                                    <div class="col-left col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                                                        <div class="main_categroy_left_inner">
                                                                                                            <!-- navigation BOF -->
                                                                                                            <div class="mt-navigation-vertical block hidden-xs">
                                                                                                                <div class="block-title">
                                                                                                                    <strong>
                                                                                                                        <i aria-hidden="true" class="icon_menu"></i>
                                                                                                                        <span>Kategoriler</span>
                                                                                                                    </strong>
                                                                                                                </div>

                                                                                                                <div class="mt-main-menu-vertical" style="overflow: hidden; display: block;">
                                                                                                                    <ul class="megamenu-vertical">
                                                                                                                        <!--            <li class="level0 home level-top active m-dropdown parent">
                                                                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/" class="level-top"><span>Home</span></a>
                                                                                                                        </li> 
                                                                                                                        -->

                                                                                                                        <%

                                                                                                                            ResultSet ts = d.baglan().executeQuery("select *from kategoriler WHERE ust_kat_id = '0'");
                                                                                                                            int j = 0;
                                                                                                                            while (ts.next()) {

                                                                                                                        %>
                                                                                                                        <li class="level0 nav-1 level-top first mega_align_left parent show-direct">
                                                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion.html" class="level-top">

                                                                                                                                <span><%out.print(ts.getString("adi"));%></span>
                                                                                                                            </a>
                                                                                                                            <div class="level0 sub-wrapper shown-sub" data-width="" style="display: none; height: 521px; position: absolute; left: 270px; top: 67px; width: 450px; opacity: 1; overflow: inherit;">
                                                                                                                                <div class="mtmenu-block mtmenu-block-top grid-full std">
                                                                                                                                    <div class="block-vertial-top" style="width: 680px; height: 197px;">
                                                                                                                                        <img class="img-top" alt="" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/mtquartz02/img/img-megavertical-top.jpg" height="197" width="680">
                                                                                                                                            <div class="title">
                                                                                                                                                <p>JEWELRY</p>
                                                                                                                                                <p>COLLECTION</p>
                                                                                                                                            </div>
                                                                                                                                            <p class="text">Discovery the amazing of Lily Cole Artist</p>
                                                                                                                                            <span class="widget widget-category-link"><a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion.html?___store=default" class="btn-readmore"><span>View Now</span></a></span>

                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                <div class="mtmenu-block mtmenu-block-center menu-items grid12-12 itemgrid itemgrid-4col">
                                                                                                                                    <ul class="level0">
                                                                                                                                        <li class="level1 groups item nav-1-1 first">
                                                                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion.html">

                                                                                                                                                <span class="title_group">Suggestion</span>
                                                                                                                                            </a>
                                                                                                                                            <div class="groups-wrapper">
                                                                                                                                                <ul class="level1">
                                                                                                                                                    <li class="level2 nav-1-1-1 first">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/dreese.html">

                                                                                                                                                            <span>Dresses</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-1-2">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/coat-jacket.html">

                                                                                                                                                            <span>Coat &amp; Jacket</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-1-3">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/tops-tees.html">

                                                                                                                                                            <span>Tops &amp; Tees</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-1-4">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/hoodie-sweatshirts.html">

                                                                                                                                                            <span>Hoodie &amp; Sweatshirts</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-1-5">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/swimwear.html">

                                                                                                                                                            <span>Swimwear</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-1-6 last">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/intimates.html">

                                                                                                                                                            <span>Intimates</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li>
                                                                                                                                                </ul>
                                                                                                                                            </div>
                                                                                                                                        </li><li class="level1 groups item nav-1-2">
                                                                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection.html">

                                                                                                                                                <span class="title_group">Collection</span>
                                                                                                                                            </a>
                                                                                                                                            <div class="groups-wrapper">
                                                                                                                                                <ul class="level1">
                                                                                                                                                    <li class="level2 nav-1-2-7 first">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/underwear.html">

                                                                                                                                                            <span>Underwear</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-2-8">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/t-shirt.html">

                                                                                                                                                            <span>T-Shirt</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-2-9">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/hoodie.html">

                                                                                                                                                            <span>Hoodie</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-2-10">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/jeans.html">

                                                                                                                                                            <span>Jeans</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-2-11 last">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/collection/suits-blazers.html">

                                                                                                                                                            <span>Suits &amp; Blazers</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li>
                                                                                                                                                </ul>
                                                                                                                                            </div>
                                                                                                                                        </li><li class="level1 groups item nav-1-3 last">
                                                                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories.html">

                                                                                                                                                <span class="title_group">Accessories</span>
                                                                                                                                            </a>
                                                                                                                                            <div class="groups-wrapper">
                                                                                                                                                <ul class="level1">
                                                                                                                                                    <li class="level2 nav-1-3-12 first">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/earrings.html">

                                                                                                                                                            <span>Earrings</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-3-13">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/necklaces.html">

                                                                                                                                                            <span>Necklaces</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-3-14">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/braceleets.html">

                                                                                                                                                            <span>Braceleets</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li><li class="level2 nav-1-3-15 last">
                                                                                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/accessories/pendants.html">

                                                                                                                                                            <span>Pendants</span>
                                                                                                                                                        </a>
                                                                                                                                                    </li>
                                                                                                                                                </ul>
                                                                                                                                            </div>
                                                                                                                                        </li>
                                                                                                                                    </ul>
                                                                                                                                </div>
                                                                                                                                <div class="mtmenu-block mtmenu-block-bottom grid-full std">
                                                                                                                                    <div class="vertical-bottom">
                                                                                                                                        <span class="widget widget-category-link"><a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/intimates.html?___store=default"><span>See all Women's Fasion</span></a></span>

                                                                                                                                        <span class="widget widget-category-link"><a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/tops-tees.html?___store=default"><span>See all Men's Fashion</span></a></span>

                                                                                                                                        <span class="widget widget-category-link"><a href="http://mt-quartz02.magentothemes.net/index.php/women-s-fashion/suggestion/hoodie-sweatshirts.html?___store=default"><span>See all Accessories</span></a></span>

                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </li>
                                                                                                                        <%j++;
                                                                                                                                                                                            }%> 
                                                                                                                    </ul>
                                                                                                                </div>

                                                                                                                <script type="text/javascript">
                                                                                                                    $mt(function () {
                                                                                                                        $mt(".megamenu-vertical").vmegamenu({
                                                                                                                            'animation': 'slideWidth',
                                                                                                                            'direction': 'vertical',
                                                                                                                            'mm_timeout': 50
                                                                                                                        });
                                                                                                                    });
                                                                                                                </script>
                                                                                                                <!-- navigation EOF -->                                </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="header-dropdow">
                                                                                                <div class="mt_getcart">
                                                                                                    <div class="top-compare">
                                                                                                        <div class="mt-maincompare">
                                                                                                            <span class="mt-icon mt-icon-compareajax second_primary_color_bg"><i class="fa fa-retweet"></i></span>
                                                                                                            <span class="mt-text-compare mt-icon">Compare</span>

                                                                                                            <div class="block-top-compare">
                                                                                                                <div class="mtajaxcompare mt-ajax-container">
                                                                                                                    <div class="maincompare">
                                                                                                                        <p class="empty">You have no items to compare.</p>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <div class="popup-ajaxcart" style="display: none">
                                                                                                        <div id="inline">
                                                                                                            <div class="cart-ajax-title"></div>
                                                                                                            <div class="add-cart-notice">The product quantity has been updated</div>
                                                                                                            <div class="action mt-ajax-checkout">
                                                                                                                <button class="continue button" onclick="$mt.colorbox.close();"><span>Continue shopping</span></button>
                                                                                                                <a class="show-cart" href="http://mt-quartz02.magentothemes.net/index.php/checkout/cart/"><span>Show cart</span></a>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div id="notification"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <script type="text/javascript">
                                                                            var showPopupCart = 1;
                                                                            $mt(window).load(function () {
                                                                                $mt("#mt-sticky-header").sticky({topSpacing: 0});
                                                                                // var $logoImg = $mt('.mt-wrapper .header .logo img');
                                                                                // if($logoImg.css('min-height') == '1px') {
                                                                                //     $logoImg.attr('src', $logoImg.attr('src').replace('logo_2.png', ''));
                                                                                // }
                                                                            });
                                                                        </script>
                                                                    </header>