<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@page import="admin.data" %>

<section class="mt-wrapper">
    <style type="text/css">
        #nprogress .bar {
            background: #CC181E;
        }
        #nprogress .peg {
            box-shadow: 0 0 15px #CC181E, 0 0 10px #CC181E;
        }
    </style>
    <script type="text/javascript">
        window.mtFilter = new MTFilter('mtFilter', {"mainDOM": ".col-main", "layerDOM": ".block-layered-nav", "enable": true, "bar": true});
    </script>            <noscript>
    &lt;div class="global-site-notice noscript"&gt;
    &lt;div class="notice-inner"&gt;
    &lt;p&gt;
    &lt;strong&gt;JavaScript seems to be disabled in your browser.&lt;/strong&gt;&lt;br /&gt;
    You must have JavaScript enabled in your browser to utilize the functionality of this website.                &lt;/p&gt;
    &lt;/div&gt;
    &lt;/div&gt;
    </noscript>
    <%
        data db = new data();
        String kat = request.getParameter("cat");
        String cumle = "*" + request.getParameter("q").replace(' ', '*') + "*";
        System.out.println(kat);

        ResultSet ra = null;
        if (request.getParameter("cat").equals("0")) {
            ra = db.baglan().executeQuery("call urunAramaFull('" + cumle + "')");
        } else {
            ra = db.baglan().executeQuery("call urunArama('" + kat + "','" + cumle + "')");
        }

    %>
    <section class="main-container col2-left-layout">
        <div class="mt-widget-slider ">
            <div class="main_slide main_slide_inner">
            </div>
        </div>

        <div class="main-breadcrumbs">
            <div class="container">
                <div class="main">
                    <div class="row show-grid">
                        <div class="col-lg-12">
                            <div class="breadcrumbs">
                                <ul>
                                    <li class="home">
                                        <a href="index.jsp" title="Go to Home Page">Anasayfa</a>

                                    </li>

                                    <li class="search">
                                        <strong> ' <% out.print(request.getParameter("q")); %> ' için arama sonuçları : </strong>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="main-top">
            <div class="container">
                <div class="main">
                    <div class="main-inner main-top-inner">
                        <div class="row show-grid">
                            <div class="col-lg-12">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-main">




            <div class="main-content container">
                <div class="row show-grid">

                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                        <div class="main-content">
                            <div class="main">
                                <div class="main-inner main-content-inner">
                                    <div class="row show-grid">
                                        <div class="col-lg-12">
                                            <div class="col-main">
                                                <div class="page-title">
                                                    <h1>' <% out.println(request.getParameter("q")); %> ' için arama sonuçları : </h1>
                                                </div>
                                                <div class="category-products clearfix">
                                                    <div class="toolbar-top-wrap"><div class="toolbar">
                                                            <div class="toolbar-top">
                                                                <div class="sorter">
                                                                    <p class="amount ">
                                                                        Items 1 to 12 of 17 total                    </p>

                                                                    <div class="sort-by ">
                                                                        <p class="pull-left mt-toolbar-label hidden-md hidden-sm hidden-xs"><label>Sort By</label></p>
                                                                        <select onchange="mtFilter.setAjaxLocation(this.value)" class="mt-sort mt_sort_by" sb="70062702" style="display: none;">
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=relevance&amp;q=blazer" selected="selected">
                                                                                Relevance                </option>
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=name&amp;q=blazer">
                                                                                Name                </option>
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=price&amp;q=blazer">
                                                                                Price                </option>
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=color&amp;q=blazer">
                                                                                Color                </option>
                                                                        </select><div id="sbHolder_70062702" class="sbHolder"><a id="sbToggle_70062702" href="#" class="sbToggle"></a><a id="sbSelector_70062702" href="#" class="sbSelector">
                                                                                Relevance                </a><ul id="sbOptions_70062702" class="sbOptions" style="top: 28px; max-height: 159px; overflow: hidden; display: none;"><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=relevance&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=relevance&amp;q=blazer" class="">
                                                                                        Relevance                </a></li><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=name&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=name&amp;q=blazer">
                                                                                        Name                </a></li><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=price&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=price&amp;q=blazer">
                                                                                        Price                </a></li><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=color&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=color&amp;q=blazer">
                                                                                        Color                </a></li></ul></div>
                                                                        <p class="mt-sort-arrows pull-left">
                                                                            <a class="set" href="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;dir=asc&amp;order=relevance&amp;q=blazer" title="Set Ascending Direction"><img src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/i_desc_arrow.gif" alt="Set Ascending Direction" class="v-middle"></a>
                                                                        </p>
                                                                    </div>

                                                                    <div class="limiter">
                                                                        <p class="pull-left mt-toolbar-label mt-slabel-1 hidden-md hidden-sm hidden-xs"><label>Show</label></p>
                                                                        <select onchange="mtFilter.setAjaxLocation(this.value)" class="mt-sort mt_sort_by" sb="31255924" style="display: none;">
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=12&amp;q=blazer" selected="selected">
                                                                                12                </option>
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=24&amp;q=blazer">
                                                                                24                </option>
                                                                            <option value="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=36&amp;q=blazer">
                                                                                36                </option>
                                                                        </select><div id="sbHolder_31255924" class="sbHolder"><a id="sbToggle_31255924" href="#" class="sbToggle"></a><a id="sbSelector_31255924" href="#" class="sbSelector">
                                                                                12                </a><ul id="sbOptions_31255924" class="sbOptions" style="top: 17px; max-height: 125.099998474121px; overflow: hidden; display: none;"><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=12&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=12&amp;q=blazer" class="sbFocus">
                                                                                        12                </a></li><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=24&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=24&amp;q=blazer">
                                                                                        24                </a></li><li><a href="#http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=36&amp;q=blazer" rel="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;limit=36&amp;q=blazer">
                                                                                        36                </a></li></ul></div>
                                                                        <p class="pull-left mt-toolbar-label mt-slabel-2 hidden-md hidden-sm">per page</p>
                                                                    </div>

                                                                    <p class="view-mode ">
                                                                        <label class="hidden-sm hidden-md hidden-xs">View as:</label>
                                                                        <a href="javascript:void(0)" title="Grid" class="grid active">
                                                                            <i class="fa fa-th"></i>
                                                                        </a>
                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;mode=list&amp;q=blazer" title="List" class="list">
                                                                            <i class="fa fa-th-list"></i>
                                                                        </a>
                                                                    </p>

                                                                </div>
                                                                <div class="pager">




                                                                    <div class="pages">
                                                                        <strong>Page:</strong>
                                                                        <ol>



                                                                            <li class="current">1</li>
                                                                            <li><a href="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;p=2&amp;q=blazer">2</a></li>




                                                                            <li>
                                                                                <a class="next i-next" href="http://mt-quartz02.magentothemes.net/index.php/catalogsearch/result/index/?cat=&amp;p=2&amp;q=blazer" title="Next">
                                                                                    <!--<img src="" alt="" class="v-middle" />-->
                                                                                    <i class="fa fa-angle-right"></i>
                                                                                </a>
                                                                            </li>
                                                                        </ol>

                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                        <script type="text/javascript">
                                                            $mt(function ($) {
                                                                $(".mt_sort_by, .mt_limiter").selectbox();
                                                            });
                                                        </script>
                                                    </div>


                                                    <div class="row">


                                                        <ul class="products-grid show-grid first last odd">





                                                            <%
                                                                while (ra.next()) {


                                                            %>

                                                            <li class="col-xs-6 col-sm-6 col-md-6 col-lg-4 item  ">

                                                                <div class="item-inner clearfix">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="#" title="Samsung Watch" class="product-image">
                                                                                    <div class="product-sale-label"><span>Sale</span></div>                                                <span class="front margin-image">
                                                                                        <img data-srcx2="#" src="#" class="img-responsive lazy" alt="<% out.print(ra.getString("baslik")); %>" style="display: block;">
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" alt="<% out.print(ra.getString("baslik")); %>" src="#" style="display: block;">                                        </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button" data-placement="right" class="button btn-cart show-quickview mt-tooltip" data-id="6" data-original-title="Quick view"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/<% out.print(ra.getInt("id"));  %>/" data-id="quickview-6" style="display:none">Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="#" title="Samsung Watch">
                                                                                        <% out.print(ra.getString("baslik")); %>                                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:93%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = '#';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-6">
                                                                                                <% out.print(ra.getString("piyasa_fiyati")); %>                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-6">
                                                                                                <% out.print(ra.getString("fiyat"));%>                </span>
                                                                                        </p>


                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart" onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAvaW5kZXgucGhwL2NhdGFsb2dzZWFyY2gvcmVzdWx0Lz9jYXQ9JnE9YmxhemVy/product/6/form_key/mTQScwChBYzNCKxY/')">
                                                                                        <span>
                                                                                            <span>Sepete Ekle</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/6/form_key/mTQScwChBYzNCKxY/" data-id="6" data-placement="bottom" class="link-wishlist mt-tooltip" data-original-title="Wishlist">
                                                                                                <i class="fa fa-heart"></i>                                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/6/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAvaW5kZXgucGhwL2NhdGFsb2dzZWFyY2gvcmVzdWx0Lz9jYXQ9JnE9YmxhemVy/form_key/mTQScwChBYzNCKxY/" data-id="6" data-placement="bottom" class="link-compare  mt-tooltip" data-original-title="Karşılaştır">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 20, 2016"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-20% </span></div>                                </div>
                                                                </div>
                                                            </li> <%}%>

                                                        </ul>











                                                    </div>
                                                    <script type="text/javascript">decorateGeneric($$('ul.products-grid'), ['odd', 'even', 'first', 'last'])</script>
                                                </div>
                                                <script>
                                                    // JavaScript Document
                                                    $mt(document).ready(function () {
                                                        $mt("[rel=tooltip]").tooltip();
                                                    });
                                                    $mt("img.lazy").lazy({
                                                        bind: 'event',
                                                        effect: "fadeIn",
                                                        effectTime: 800,
                                                        threshold: 50,
                                                        //      afterLoad: function(element) {
                                                        //                      //     setGridItemsEqualHeight($mt);
                                                        //             //      }
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>




        </div>

        <div class="main-brands">
            <div class="block-bottom" id="widget-e713fa3166bb173b0d84217c17ff9398">
                <div class="block block-sample row clearfix">
                    <div class="">
                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                            <div class="block-services container">
                                <div class="row">
                                    <div class="bservice bservice01 col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                        <div class="block-method"><i class="icon_globe-2">&nbsp;</i>
                                            <div class="text-wrap">
                                                <div class="title"><a href="#">Free shipping </a></div>
                                                <div class="text">On all item</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bservice bservice02 col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                        <div class="block-method"><i class="fa fa-heart-o">&nbsp;</i>
                                            <div class="text-wrap">
                                                <div class="title"><a href="#">GUARANTEE</a></div>
                                                <div class="text">100% SATISFACTION</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="bservice bservice03 col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                        <div class="block-method"><i class="fa fa-credit-card">&nbsp;</i>
                                            <div class="text-wrap">
                                                <div class="title"><a href="#">PAYMENT</a></div>
                                                <div class="text">PAYMENT BE SECURED</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bservice bservice04 col-xs-12 col-sm-6 col-md-6 col-lg-3">
                                        <div class="block-method "><i class="fa fa-headphones">&nbsp;</i>
                                            <div class="text-wrap">
                                                <div class="title"><a href="#">SUPPORT</a></div>
                                                <div class="text">ALL ODER OVER $99</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>					</div>
                    </div>
                </div>
                <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/mt/widget/frontend.js"></script>
                <script type="text/javascript">
                                                    new MT.Widget('widget-e713fa3166bb173b0d84217c17ff9398', {
                                                        animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                        parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                        carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                        carouselConfig: null,
                                                        kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/kenburns.js"}});
                </script>
            </div>
            <div class="brands" id="widget-0b5086711bdb15196c3a767ee3531b0f">
                <div class="container">
                    <div class="main-heading">
                        <div class="heading-wrapper-title">
                        </div>
                    </div>
                    <ul class="owl-carousel  owl-theme" style="opacity: 1; display: block;">
                        <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 4522px; left: 0px; display: block; -webkit-transition: all 0ms ease; transition: all 0ms ease;"><div class="owl-item active" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" alt="Canon" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" style="display: block;">
                                    </li></div><div class="owl-item active" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/lg.jpg" alt="LG" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/lg.jpg" style="display: block;">
                                    </li></div><div class="owl-item active" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" alt="Nokia" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" style="display: block;">
                                    </li></div><div class="owl-item" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/pana.jpg" alt="Panasonic" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/pana.jpg" style="display: block;">
                                    </li></div><div class="owl-item" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" alt="Samsung" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" style="display: block;">
                                    </li></div><div class="owl-item loading" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" alt="Sanyo" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" style="display: none;">
                                    </li></div><div class="owl-item loading" style="width: 323px;"><li>
                                        <img class="lazyOwl img-responsive" data-src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" alt="Sony" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" style="display: none;">
                                    </li></div></div></div>






                        <div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div></ul>
                </div>
                <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/mt/widget/frontend.js"></script>
                <script type="text/javascript">
                                                    new MT.Widget('widget-0b5086711bdb15196c3a767ee3531b0f', {
                                                        animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                        parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                        carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 5, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                        carouselConfig: {itemsCustom: [[0, 1], [480, 2], [768, 3], [992, 3], [1200, 4]], touchDrag: true},
                                                        kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/kenburns.js"}});
                </script>
            </div>
        </div>

        <div class="main-bottom">
            <div class="container">
            </div>
        </div>
    </section>
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
    <footer class="footer-container">
        <div class="footer-inner">
            <div class="footer-top">
                <div class="container">
                    <div class="footer-top-inner">
                        <div class="footer">
                            <div class="" id="widget-c573786a10f5ac91df97120b9fc95441">
                                <div class="block block-sample row clearfix">
                                    <div class="">
                                        <div class="col-lg-3  col-md-3  col-sm-3  col-xs-12  ">
                                            <div class="information-logo">
                                                <div class="footer-static"><a class="logo-bottom" href="http://mt-quartz02.magentothemes.net/index.php/"><img class="img-responsive" alt="" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/mtquartz02/logo/logo.png"></a>
                                                    <ul class="clearfix block-content-static acc">
                                                        <li class="item first contact"><a title="" href="#"><i class="icon_house_alt">&nbsp;</i><span>169 Nguyen Ngoc Vu Street, Cau Giay, Hanoi, Vietnam.</span></a></li>
                                                        <li class="item"><a title="" href="#"><i class="icon_mobile">&nbsp;</i><span>+841656101565</span></a></li>
                                                        <li class="item last-item"><a title="" href="#"><i class="icon_mail_alt">&nbsp;</i><span>hello@cleversoft.co</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>					</div>
                                        <div class="col-lg-3  col-md-3  col-sm-3  col-xs-12  ">
                                            <div class="about customer-services collapsible mobile-collapsible">
                                                <div class="footer-static main-heading">
                                                    <h3><span class="com">Why choosse</span><span class="accordion-footer visible-xs accordion-show">accordion footer</span></h3>
                                                    <ul class="clearfix block-content-statick acc">
                                                        <li class="item first"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Product Recall</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Gift Vouchers</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Returns and Exchanges</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Shipping Options</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Help &amp; FAQs</a></li>
                                                        <li class="item last"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Hard to Find Parts</a></li>
                                                    </ul>
                                                </div>
                                            </div>					</div>
                                        <div class="col-lg-3  col-md-3  col-sm-3  col-xs-12  ">
                                            <div class="about my-account collapsible mobile-collapsible">
                                                <div class="footer-static main-heading">
                                                    <h3><span class="com">My Account</span><span class="accordion-footer visible-xs accordion-show">accordion footer</span></h3>
                                                    <ul class="clearfix block-content-statick acc">
                                                        <li class="item first"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Sign In</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>View Cart</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>My Wishlist</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Check out</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Track My Order</a></li>
                                                        <li class="item"><a title="" href="#"><span class="fs1" data-icon="^">&nbsp;</span>Help</a></li>
                                                    </ul>
                                                </div>
                                            </div>					</div>
                                        <div class="col-lg-3  col-md-3  col-sm-3  col-xs-12  ">
                                            <div class="follow-us collapsible mobile-collapsible">
                                                <div class="footer-static main-heading">
                                                    <h3><span class="com">Follow Us</span><span class="accordion-footer visible-xs accordion-show">accordion footer</span></h3>
                                                    <div class="follow-wrapper">
                                                        <div class="footer-newsletter"><div class="subscribe">
                                                                <!--<h3><span></span></h3>-->
                                                                <form action="http://mt-quartz02.magentothemes.net/index.php/newsletter/subscriber/new/" method="post" id="newsletter-validate-detail">
                                                                    <div class="block-content-sub">
                                                                        <div class="form-subscribe-header">
                                                                            <label for="newsletter">Subscribe to our mailing list</label>
                                                                        </div>
                                                                        <div class="input-box">
                                                                            <input name="email" type="text" id="newsletter" class="input-text required-entry validate-email">
                                                                            <button type="submit" title="Subscribe" class="button"><span><i class="fa fa-arrow-right"></i></span></button>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                                <script type="text/javascript">
                                                                    //<![CDATA[
                                                                    var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
                                                                    //]]>
                                                                </script>
                                                            </div>
                                                        </div>
                                                        <div class="social-footer">
                                                            <ul class="social-icons small light">
                                                                <li class="twitter"><a href="http://www.twitter.com/" target="_blank"><i class="fa fa-twitter"><span>Twitter</span></i></a></li>
                                                                <li class="facebook"><a href="http://www.facebook.com/" target="_blank"><i class="fa fa-facebook"><span>Facebook</span></i></a></li>
                                                                <li class="gplus"><a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus"><span>Google plus</span></i></a></li>
                                                                <li class="instagram"><a href="https://instagram.com/" target="_blank"><i class="fa fa-instagram"><span>Instagram</span></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>					</div>
                                    </div>
                                </div>
                                <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/mt/widget/frontend.js"></script>
                                <script type="text/javascript">
                                                                    new MT.Widget('widget-c573786a10f5ac91df97120b9fc95441', {
                                                                        animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                        parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                        carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 4, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                        carouselConfig: null,
                                                                        kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/kenburns.js"}});
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="footer-botton-inner">
                        <div class="footer">
                            <div class="section-space">
                            </div>
                            <div class="footer-copyright">
                                <div class="footer">
                                    <div class="row">
                                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                                            <div class="copyright">Copyright © 2008 - 2015 <a class="active" href="http://www.zooextension.com/magento/themes.html" title="Magento Themes">Magento Themes</a>  by ZooExtension.com. All rights reserved.</div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                            <div class="logo-payment"><img class="img-responsive" alt="" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/payment/all-payment.png"></div>                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="back-top" class="hidden-phone" style="display: block;">
            <a href="#top">
                <div class="sticker-wrapper">
                    <div class="sticker" title="Back to Top">
                        <i class="fa fa-angle-up"></i>
                    </div>
                </div>
            </a>
        </div>
    </footer>
    <script type="text/javascript">
        function setGridItemsEqualHeight($)
        {
            var winWidth = $(window).width();
            var SPACING = 0;
            if (winWidth >= 480)
            {
                $('.show-grid').removeClass("auto-height");
                var gridItemMaxHeight = 0;
                $('.show-grid > .item').each(function () {
                    $(this).css("height", "auto");
                    var actionsHeight = $(this).find('.actions').height();
                    $(this).css("padding-bottom", (actionsHeight + SPACING) + "px"); //Set new padding
                    gridItemMaxHeight = Math.max(gridItemMaxHeight, $(this).height());
                });
                $('.show-grid > .item').css("height", gridItemMaxHeight + "px");
            }
            else
            {
                $('.show-grid').addClass("auto-height");
                $('.show-grid > .item').css("height", "auto");
                $('.show-grid > .item').css("padding-bottom", "20px");
            }
        }
        function setGridItem($) {
            var winWidth = $(window).width();
            var col = 8;
            if (winWidth > 768) {
                newcol = col;
            }
            if (winWidth < 768 && winWidth >= 640) {
                newcol = 2;
            }
            if (winWidth >= 480 && winWidth < 640) {
                newcol = 2;
            }
            if (winWidth < 480) {
                newcol = 1;
            }
            $i = 0;
            $('.show-grid > .item').each(function () {
                $i++;
                $(this).removeClass('first');
                $(this).removeClass('last');
                if (($i - 1) % newcol == 0) {
                    $(this).addClass('first');
                } else if ($i % newcol == 0) {
                    $(this).addClass('last');
                }
            });
        }
        $mt(function ($) {
            // var winWidth = $(window).width();
            // var winHeight = $(window).height();
            // var windowResize_t;
            // $(window).resize(function() {
            //     var winNewWidth = $(window).width();
            //     var winNewHeight = $(window).height();
            //     if (winWidth != winNewWidth || winHeight != winNewHeight)
            //     {
            //         clearTimeout(windowResize_t);
            //         windowResize_t = setTimeout(function() {
            //             $(document).trigger("themeResize");
            //                     //             setGridItemsEqualHeight($);
            //                     //             setGridItem($);
            //         }, 200);
            //     }
            //     winWidth = winNewWidth;
            //     winHeight = winNewHeight;
            // });
            $('.mt-maincompare').hover(
                    function () {
                        $(this).addClass('compare-active').find('.mtajaxcompare').stop(true, true).delay(200).fadeIn();
                    },
                    function () {
                        $(this).removeClass('compare-active').find('.mtajaxcompare').stop(true, true).delay(200).fadeOut();
                    }
            );

            // $("#select-language").selectbox();
            // $("#select-currency").selectbox();

            // var text = $(".form-language a.sbSelector").text().toLowerCase();
            // $(".form-language a.sbSelector").css({
            //     "background-image":"url('http://mt-quartz02.magentothemes.net/index.php/media/wysiwyg/magenthemes/languages/"+text+".png')",
            //     "background-repeat":"no-repeat",
            //     "background-position":"left center"
            // });
            //Back to top
            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('#back-top').fadeIn();
                } else {
                    $('#back-top').fadeOut();
                }
            });
            $('#back-top a').click(function () {
                $('body,html').animate({
                    scrollTop: 0
                }, 800);
                return false;
            });
            //Cart header
            $('.mt-maincart').not('.mt-maincart-bar').hover(
                    function () {
                        $(this).addClass('cart-active').find('.ajaxcart').stop(true, true).delay(200).fadeIn();
                    },
                    function () {
                        $(this).removeClass('cart-active').find('.ajaxcart').stop(true, true).delay(200).fadeOut();
                    }
            );
            //Quickview
            $('.product-quickview').live('click', function () {
                $.colorbox({
                    iframe: true,
                    href: this.href,
                    opacity: 0.5,
                    speed: 300,
                    current: '{current} / {total}',
                    close: "close",
                    innerWidth: '765px',
                    innerHeight: '650px',
                    onOpen: function () {
                        $('#cboxLoadingGraphic').addClass('box-loading');
                    },
                    onComplete: function () {
                        setTimeout(function () {
                            $('#cboxLoadingGraphic').removeClass('box-loading');
                        }, 1300);
                    }
                });
            });

            $('.show-quickview').live('click', function (e) {
                if ($('.btn-cart-mobile').length == 0) {
                    $(this).next().trigger('click');
                } else {
                    return window.location.href = $(this).attr('data-submit');
                }
            });
        });
        // $mt(window).load(function(){
        //         //     setGridItemsEqualHeight($mt);
        //         //     setGridItem($mt);
        // });
        // JavaScript Document
        $mt(window).load(function () {
            $mt(".mt-tooltip").tooltip();
            // var selectToggle = '<i class="fa fa-caret-down"></i>';
            // var flextPrev = '<i class="fa fa-angle-left"></i>',
            //     iconMenu = '<i class="fa fa-angle-down"></i>',
            //     revoNext = '<i class="fa fa-chevron-right"></i>',
            //     revoPrev = '<i class="fa fa-chevron-left"></i>',
            //     revoBullet = '<i class="fa fa-circle"></i>',
            //     flextNext = '<i class="fa fa-angle-right"></i>';

            // $mt(".flex-direction-nav a").empty();
            // $mt(".flex-direction-nav a.flex-prev").append(flextPrev);
            // $mt(".flex-direction-nav a.flex-next").append(flextNext);
            // $mt(".level0.sub-wrapper").prev('.level-top').append(iconMenu);
            // $mt(".tp-leftarrow.default").append(revoPrev);
            // $mt(".tp-rightarrow.default").append(revoNext);
            // $mt(".tp-bullets .bullet").append(revoBullet);
            // $mt(".sbToggle").append(selectToggle);
        });
        // function iconFontAwesome() {
        //     //add font icon awesome

        //     $mt(".links li a").prepend("<span></span>");
        //     $mt(".links li.first span").addClass("icon_profile");
        //     $mt(".links li a.top-link-wishlist span").addClass("icon_heart_alt");
        //     $mt(".links li a.top-link-checkout span").addClass("icon_box-checked");
        //     $mt(".links li.last span").addClass("icon_lock-open_alt");


        // }

        $mt(".accordion-footer").addClass("accordion-show");
        $mt(".accordion-footer").click(function () {
            if ($mt(this).parent().next().is(":visible")) {
                $mt(this).addClass("accordion-show");
            } else {
                $mt(this).removeClass("accordion-show");
            }
            $mt(this).parent().next().toggle(400);
        });
        $mt(".accordion-cart");
        $mt(".accordion-cart").click(function () {
            if ($mt(this).parent().next().is(":visible")) {
                $mt(this).addClass("accordion-show");
            } else {
                $mt(this).removeClass("accordion-show");
            }
            $mt(this).parent().next().toggle(400);
        });

        //lazyload
        $mt("img.lazy").lazy({
            effect: "fadeIn",
            effectTime: 800,
            threshold: 50
                    //         afterLoad: function(element) {
                    //                             // setGridItemsEqualHeight($);
                    //     //         }
        });
    </script> 
    <script type="text/javascript">
        (function ($) {

            $('.block-wishlist #wishlist-sidebar a').live('click', function () {
                if (confirm($(this).attr('data-confirm'))) {
                    removetowishlist($(this));
                }
                return false;
            });
            $('.add-to-links a.link-wishlist').live('click', function () {
                addtowishlist($(this));
                return false;
            });
            if ($('.product-view').length > 0) {
                productAddToCartForm.submitLight = function (button, url) {
                    return false;
                }.bind(productAddToCartForm);
            }

            $('.add-to-links a.link-compare').live('click', function () {
                addtocompare($(this));
                return false;
            });
            $('.block-compare #compare-items a, .block-top-compare a.btn-remove').live('click', function () {
                if (confirm($(this).attr('data-confirm'))) {
                    removecompare($(this));
                }
                return false;
            });
            $('.block-compare .clearall a, .block-compare .actions a, .block-top-compare .clearall a').live('click', function () {
                if (confirm($(this).attr('data-confirm'))) {
                    clearallcompare($(this));
                }
                return false;
            });
        })($mt);
    </script>

    <div style="display: none">
        <style type="text/css">
            #cboxContent.newsletterbox {
                background-position: left top;
                background-repeat: no-repeat;
                background-color: #ffffff;
            }
        </style>
        <div id="mt_newsletter" class="block block-subscribe">
            <div class="row">
                <div class="left-newletters col-lg-8 col-md-8 col-sm-8 col-xs-8">
                    <div class="block-title">
                        <strong><span>Join our Mailing List!</span></strong>
                    </div>
                    <div class="row-none">
                        <div class="popup_message">
                            <div class="intro">
                                Join today for 10% off your first order!                            </div>
                            <form action="http://mt-quartz02.magentothemes.net/index.php/newsletter/subscriber/new/" method="post" id="mt-newsletter-validate-detail">
                                <div class="block-content">
                                    <div class="input-box">
                                        <input name="email" type="text" id="mt-newsletter" value="Enter your email address" onclick="this.value == 'Enter your email address' ? this.value = '' : ''" onblur="this.value == '' ? this.value = 'Enter your email address' : ''" class="input-text required-entry validate-email">

                                        <div class="actions">
                                            <button type="submit" title="Subscribe" class="button">
                                                <span><span>Subscribe</span></span></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="block-content">
                        <label class="subcriper_label">
                            <input type="checkbox">
                            Don’t show this popup again                        </label>
                    </div>

                </div>
                <div class="popup_img col-lg-4 col-md-4 col-sm-4">
                    <img class="img-responsive" height="300" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default//images/image-popup.png" alt="img-popup">
                </div>
            </div>
        </div>
    </div>

</section>









<%@include file="footer.jsp"%>
