<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>


<% data db = new data();  %>




<div class="main-top">
    <div class="container">
        <div class="main">
            <div class="main-inner main-top-inner">
                <div class="show-grid">
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-main">
    <div class="main-content container">
        <div class="main">
            <div class="main-inner main-content-inner">
                <div class="show-grid">
                    <div class="col-main">
                        <div class="std">
                            <div class="meet-our-team">
                                <div class="about-item">
                                    <div class="row">
                                        <div class="left-item img-box col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <div class="inner-box"><img class="img-responsive" alt="" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/static/aboutitem1.jpg"></div>
                                        </div>
                                        <div class="right-item col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                            <div class="inner-box-">
                                                <%
                                                    ResultSet detay = db.baglan().executeQuery("SELECT *from haberler WHERE id = '" + request.getParameter("IDd") + "'");
                                                    if (detay.next()) {
                                                        out.print((detay.getString("detay")).replace("/**/", "'"));
                                                    }
                                                %>
                                                
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
    <div class="block-bottom" id="widget-b2529192e5f2a600f995dbd06705715b">
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
            new MT.Widget('widget-b2529192e5f2a600f995dbd06705715b', {
                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                carouselConfig: null,
                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/kenburns.js"}});
        </script>
    </div>
    <div class="brands" id="widget-4f6dea5092495eb34803a5c96f0887e0">
        <div class="container">
            <div class="main-heading">
                <div class="heading-wrapper-title">
                </div>
            </div>
            <ul class="owl-carousel  owl-theme" style="opacity: 1; display: block;">
                <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 4200px; left: 0px; display: block; -webkit-transition: all 0ms ease; transition: all 0ms ease;"><div class="owl-item active" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" alt="Canon" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" style="display: block;">
                            </li></div><div class="owl-item active" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/lg.jpg" alt="LG" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/lg.jpg" style="display: block;">
                            </li></div><div class="owl-item active" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" alt="Nokia" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" style="display: block;">
                            </li></div><div class="owl-item active" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/pana.jpg" alt="Panasonic" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/pana.jpg" style="display: block;">
                            </li></div><div class="owl-item" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" alt="Samsung" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/samsung.jpg" style="display: block;">
                            </li></div><div class="owl-item loading" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" alt="Sanyo" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/sanyo.jpg" style="display: none;">
                            </li></div><div class="owl-item loading" style="width: 300px;"><li>
                                <img class="lazyOwl img-responsive" data-src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" data-srcx2="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" alt="Sony" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/brands/canon.jpg" style="display: none;">
                            </li></div></div></div>






                <div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div></ul>
        </div>
        <script type="text/javascript" src="http://mt-quartz02.magentothemes.net/js/mt/widget/frontend.js"></script>
        <script type="text/javascript">
            new MT.Widget('widget-4f6dea5092495eb34803a5c96f0887e0', {
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
<%@include file="footer.jsp"%>