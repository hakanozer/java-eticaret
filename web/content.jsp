<%@page import="java.sql.ResultSet"%>
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<section class="main-container col2-left-layout">
    <div class="container">
        <div class="row">
            <div class="col-left col-lg-3 col-md-4  col-sm-4  col-xs-12 ">
                <p></p>
            </div>
            <div class="mt-widget-slider col-lg-9 col-md-8 col-sm-8  col-xs-12">
                <div class="main_slide main_slide_inner">
                    <div class="" id="widget-02d06ba2f641ace106e7dd4dbbc8296b">
                        <div class="block block-sample row clearfix">
                            <div class="owl-carousel ">
                                <%
                                    data db = new data();
                                    ResultSet resulset = db.baglan().executeQuery("select * from slider");
                                    while (resulset.next()) {
                                        String image = null;
                                        String adi = resulset.getString("adi");
                                        String url = resulset.getString("tourl");
                                        String anabaslik = resulset.getString("anabaslik");
                                        String baslik = resulset.getString("baslik");
                                        String aciklama = resulset.getString("aciklama");
                                        if (adi.endsWith(".jpg")) {
                                            image = "" + resulset.getString("id") + ".jpg";
                                        } else if (adi.endsWith(".png")) {
                                            image = "" + resulset.getString("id") + ".png";
                                        }
                                %>

                                <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                    <div class="slider-home"><a href="<%=url%>"><img alt="" src="img/<%= image%>" /></a>
                                        <div class="slider-content">
                                            <p class="text02"><%=anabaslik%></p>
                                            <p class="title02"><%=baslik%></p>
                                            <p class="text03"><%=aciklama%></p>
                                            <a class="btn-shopnow" href="<%=url%>"><span>Satın Al</span></a></div>
                                    </div>

                                </div>
                                <%}%>
                            </div>
                        </div>
                        <script type="text/javascript" src="js/frontend.js"></script>
                        <script type="text/javascript">
                            new MT.Widget('widget-02d06ba2f641ace106e7dd4dbbc8296b', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": true, "pagination": true, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i aria-hidden=\"true\" class=\"arrow_left\"><\/i>", "<i aria-hidden=\"true\" class=\"arrow_right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-breadcrumbs">
        <div class="container">
            <div class="main">
                <div class="row show-grid">
                    <div class="col-lg-12">
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
                            <div class="" id="widget-1d18143b2abb467a6988166d700c4a47">
                                <div class="block block-sample row clearfix">
                                    <div class="">
                                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                            <div class="bn-top">
                                                <div class="row">
                                                    <%
                                                        ResultSet rs4 = db.baglan().executeQuery("select * from reklamlar order by id desc limit 2");
                                                        while (rs4.next()) {
                                                            //String imagereklam = null;
                                                            String id = rs4.getString("id");
                                                            String adi = rs4.getString("adi");
                                                            String gosterim = rs4.getString("gosterim");
                                                            String resim = rs4.getString("resim");
                                                            String link = rs4.getString("link");
                                                    %>
                                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                                        <div class="block-top"  style="background-image: url('img/<%= resim%>');">
                                                            <div class="block-top-inner">
                                                                <a href="<%=link%>"><div class="title1"><%= adi%></div></a>
                                                                <div class="text1">Amazing Design for your Life !</div>
                                                                <a class="btn-readmore" href="<%=link%>">Satın Al</a></div>
                                                            </div>
                                                    </div>
                                                    <%}%></div>
                                            </div>					</div>
                                    </div>
                                </div>
                                <script type="text/javascript" src="js/frontend.js"></script>
                                <script type="text/javascript">
                            new MT.Widget('widget-1d18143b2abb467a6988166d700c4a47', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-main">
        <div class="main-content container">
            <div class="row show-grid">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="col-right sidebar">
                        <div class="top-seller hide-xs widget-possition" id="widget-4cb737160ccd03793a4f1d8cb264df8f">
                            <div class="main-heading">
                                <div class="heading-wrapper-title">
                                    <h3><span>Top seller</span></h3>
                                </div>
                            </div>
                            <div class="owl-carousel collection-sidebar">
                                <div class="category-products">
                                    <ul class="products-grid ">
                                        
                                        
                                         <%                 //TOP SELLER
                                                        
                                                        
                                                        
                                                        ResultSet rsss4 = db.baglan().executeQuery("SELECT COUNT(se.urun_id) AS sayi, se.urun_id, se.fiyat, ur.baslik, res.adi from sepet as se  INNER JOIN urunler as ur ON se.urun_id = ur.id  INNER JOIN urun_resimleri as res on res.urun_id = ur.id GROUP BY se.urun_id ORDER BY sayi");
                                                        while (rsss4.next()) {
                                                           
                                                            String resim = rsss4.getString("adi");
                                                            String fiyat = rsss4.getString("fiyat");
                                                            String baslik = rsss4.getString("baslik");
                                                         
                                                    %>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html"
                                               title="Simple Product"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/frilly_tube_top_1_1.jpg"
                                                         data-src="img/frilly_tube_top_1_1.jpg"
                                                         src="img/<%= resim%>"
                                                         alt="Simple Product"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/frilly_top_1_1.jpg" alt="Simple Product" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html"
                                                       title="Simple Product">
                                                        <%= baslik%>                   </a>
                                                </h3>



                                                <div class="price-box">
                                                    <span class="regular-price" id="product-price-25">
                                                        <span class="price">$566.00</span>                                    </span>



                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" class="minimal-price-link">
                                                        <span class="label">As low as:</span>
                                                        <span class="price" id="product-minimal-price-25">
                                                            <%= fiyat%>          </span>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="product-date" data-date="May 6, 2017"></div>
                                        </li>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                         <%}%>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    </ul>
                                </div>
                                <div class="category-products">
                                    <ul class="products-grid ">
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html"
                                               title="Print Sneaker"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/printed_sneaker_1.jpg"
                                                         data-src="img/printed_sneaker_1.jpg"
                                                         src="img/loader.gif"
                                                         alt="Print Sneaker"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/combined_oxford_shoe_1.jpg" alt="Print Sneaker" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html"
                                                       title="Print Sneaker">
                                                        Print Sneaker                    </a>
                                                </h3>



                                                <div class="price-box">

                                                    <p class="old-price">
                                                        <span class="price-label">Regular Price:</span>
                                                        <span class="price" id="old-price-19">
                                                            $1,000.00                </span>
                                                    </p>

                                                    <p class="special-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price" id="product-price-19">
                                                            $980.00                </span>
                                                    </p>




                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" class="minimal-price-link">
                                                        <span class="label">As low as:</span>
                                                        <span class="price" id="product-minimal-price-19">
                                                            $750.00            </span>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="product-date" data-date="May 6, 2017"></div>
                                        </li>
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html"
                                               title="Square Sungglasses"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/square_sunglasses_2_2.jpg"
                                                         data-src="img/square_sunglasses_2_2.jpg"
                                                         src="img/loader.gif"
                                                         alt="Square Sungglasses"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/brown_sunglasses_1_2.jpg" alt="Square Sungglasses" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html"
                                                       title="Square Sungglasses">
                                                        Square Sungglasses                    </a>
                                                </h3>



                                                <div class="price-box">
                                                    <span class="regular-price" id="product-price-5">
                                                        <span class="price">$700.00</span>                                    </span>

                                                </div>

                                            </div>
                                            <div class="product-date" data-date=""></div>
                                        </li>
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html"
                                               title="Configuration Product"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/blazer_with_flap_pocket.jpg"
                                                         data-src="img/blazer_with_flap_pocket.jpg"
                                                         src="img/loader.gif"
                                                         alt="Configuration Product"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/blazer_with_flap_pocket_brown.jpg" alt="Configuration Product" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html"
                                                       title="Configuration Product">
                                                        Configuration Product                    </a>
                                                </h3>



                                                <div class="price-box">
                                                    <span class="regular-price" id="product-price-17">
                                                        <span class="price">$200.00</span>                                    </span>

                                                </div>

                                            </div>
                                            <div class="product-date" data-date=""></div>
                                        </li>
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html"
                                               title="Urban Butcher"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/urban_blucher.jpg"
                                                         data-src="img/urban_blucher.jpg"
                                                         src="img/loader.gif"
                                                         alt="Urban Butcher"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/printed_sneaker.jpg" alt="Urban Butcher" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html"
                                                       title="Urban Butcher">
                                                        Urban Butcher                    </a>
                                                </h3>



                                                <div class="price-box">

                                                    <p class="old-price">
                                                        <span class="price-label">Regular Price:</span>
                                                        <span class="price" id="old-price-18">
                                                            $1,000.00                </span>
                                                    </p>

                                                    <p class="special-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price" id="product-price-18">
                                                            $980.00                </span>
                                                    </p>




                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" class="minimal-price-link">
                                                        <span class="label">As low as:</span>
                                                        <span class="price" id="product-minimal-price-18">
                                                            $750.00            </span>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="product-date" data-date="May 6, 2017"></div>
                                        </li>
                                        <li class="item">
                                            <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html"
                                               title="Combine Oxford Shoes"
                                               class="product-image">
                                                <span class="front margin-image">
                                                    <img class="img-responsive lazyOwl front-img"
                                                         data-srcX2="img/combined_oxford_shoe_1_1.jpg"
                                                         data-src="img/combined_oxford_shoe_1_1.jpg"
                                                         src="img/loader.gif"
                                                         alt="Combine Oxford Shoes"/>
                                                </span>
                                                <span class="product-img-additional back margin-image">
                                                    <img class="img-responsive alt-img lazy" data-src="img/printed_sneaker_1_1.jpg" alt="Combine Oxford Shoes" />									</span>
                                            </a>

                                            <div class="top-actions-inner">
                                                <h3 class="product-name">
                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html"
                                                       title="Combine Oxford Shoes">
                                                        Combine Oxford Shoes                    </a>
                                                </h3>



                                                <div class="price-box">

                                                    <p class="old-price">
                                                        <span class="price-label">Regular Price:</span>
                                                        <span class="price" id="old-price-20">
                                                            $1,000.00                </span>
                                                    </p>

                                                    <p class="special-price">
                                                        <span class="price-label">Special Price</span>
                                                        <span class="price" id="product-price-20">
                                                            $980.00                </span>
                                                    </p>




                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" class="minimal-price-link">
                                                        <span class="label">As low as:</span>
                                                        <span class="price" id="product-minimal-price-20">
                                                            $750.00            </span>
                                                    </a>
                                                </div>

                                            </div>
                                            <div class="product-date" data-date="May 6, 2017"></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript" src="js/frontend.js"></script>
                        <script type="text/javascript">
                            new MT.Widget('widget-4cb737160ccd03793a4f1d8cb264df8f', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                countdown: {"enable": false, "yearText": "years", "monthText": "months", "weekText": "weeks", "dayText": "days", "hourText": "hours", "minText": "mins", "secText": "secs", "yearSingularText": "year", "monthSingularText": "month", "weekSingularText": "week", "daySingularText": "day", "hourSingularText": "hour", "minSingularText": "min", "secSingularText": "sec", "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/jquery.jcountdown.min.js"},
                                countdownConfig: null,
                                countdownTemplate: '<div class="day"><span class="no">%d</span><span class="text">days</span></div><div class="hours"><span class="no">%h</span><span class="text">hours</span></div><div class="min"><span class="no">%i</span><span class="text">min</span></div><div class="second"><span class="no">%s</span><span class="text">secs</span></div>',
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                        </script>
                        <div class="latest-post widget-possition" id="widget-19841e94403b2daedd46cee835b92509">
                            <div class="block">
                                <div class="block-title">
                                    <h3><span>Latest post</span></h3>
                                </div>
                                <div class="owl-carousel blog-content">
                                    <div class="category-products">
                                        <ul class="products-grid ">
                                            <li class="blog item">
                                                <img class="img-responsive lazyOwl" data-src="img/blog3_thumb.jpg" data-srcx2="img/blog3_thumb.jpg" src="img/loader.gif"/>
                                                <div class="main_content">
                                                    <div class="title"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Praesent-nonummy-mi-in/">Praesent nonummy mi in</a></div>
                                                    <span class="midle_content">
                                                    </span>
                                                    <span class="content">

                                                        Praesent egestas tristique nibh. Praesent ut ligula non mi varius sagittis. Maecenas tempus, ...                        </span>
                                                    <div class="readmore"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Praesent-nonummy-mi-in/">Read More <i class="fa fa-arrow-right"></i></a></div>
                                                </div>
                                            </li>
                                            <li class="blog item">
                                                <img class="img-responsive lazyOwl" data-src="img/blog1_thumb.jpg" data-srcx2="img/blog1_thumb.jpg" src="img/loader.gif"/>
                                                <div class="main_content">
                                                    <div class="title"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Dolor-Naomi-Perfomance/">Dolor Naomi Perfomance</a></div>
                                                    <span class="midle_content">
                                                    </span>
                                                    <span class="content">

                                                        Fusce ac felis sit amet ligula pharetra condimentum. Pellentesque libero tortor, tincidunt ...                        </span>
                                                    <div class="readmore"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Dolor-Naomi-Perfomance/">Read More <i class="fa fa-arrow-right"></i></a></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="category-products">
                                        <ul class="products-grid ">
                                            <li class="blog item">
                                                <img class="img-responsive lazyOwl" data-src="img/blog2_thumb.jpg" data-srcx2="img/blog2_thumb.jpg" src="img/loader.gif"/>
                                                <div class="main_content">
                                                    <div class="title"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Camera-8-0-px-of-iPhone-6/">Camera 8.0px of iPhone 6+</a></div>
                                                    <span class="midle_content">
                                                    </span>
                                                    <span class="content">

                                                        Discovery the perfect in the design of camera&rsquo;s iphone 6+. Usetechnique modern ...                        </span>
                                                    <div class="readmore"><a href="http://mt-quartz02.magentothemes.net/index.php/blog/Camera-8-0-px-of-iPhone-6/">Read More <i class="fa fa-arrow-right"></i></a></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <script type="text/javascript" src="js/frontend.js"></script>
                                <script type="text/javascript">
                            new MT.Widget('widget-19841e94403b2daedd46cee835b92509', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                                </script>
                            </div>
                        </div><div class="faqs" id="widget-d6106ff79b2ed740d29f07bbd006752b">
                            <div class="block block-sample row clearfix">
                                <div class="block-title">
                                    <strong><span>FAQS</span></strong>
                                </div>
                                <div class="">
                                    <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                        <div id="accordion" class="text-wrap panel-group" role="tablist">
                                            <div class="panel panel-default">
                                                <div id="headingOne" class="panel-heading" role="tab">
                                                    <div class="panel-title"><a href="#collapseOne" data-toggle="collapse" data-parent="#accordion">How to refunds a products?</a></div>
                                                </div>
                                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel">
                                                    <div class="panel-body">If you bought a product that you don’t satisfaction. You will refunds 100% your money</div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div id="headingTwo" class="panel-heading" role="tab">
                                                    <div class="panel-title"><a class="collapsed" href="#collapseTwo" data-toggle="collapse" data-parent="#accordion">How to have a voucher ?</a></div>
                                                </div>
                                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">If you bought a product that you don&rsquo;t satisfaction. You will refunds 100% your money and we are support for ....</div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div id="headingThree" class="panel-heading" role="tab">
                                                    <div class="panel-title"><a class="collapsed" href="#collapseThree" data-toggle="collapse" data-parent="#accordion">What to use in Camera ?</a></div>
                                                </div>
                                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">If you bought a product that you don&rsquo;t satisfaction. You will refunds 100% your money and we are support for ....</div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div id="headingFour" class="panel-heading" role="tab">
                                                    <div class="panel-title"><a class="collapsed" href="#collapseFour" data-toggle="collapse" data-parent="#accordion">How to use Canon EOS 70 ?</a></div>
                                                </div>
                                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">If you bought a product that you don&rsquo;t satisfaction. You will refunds 100% your money and we are support for ....</div>
                                                </div>
                                            </div>
                                        </div>					</div>
                                </div>
                            </div>
                            <script type="text/javascript" src="js/frontend.js"></script>
                            <script type="text/javascript">
                            new MT.Widget('widget-d6106ff79b2ed740d29f07bbd006752b', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                            </script>
                        </div>
                        <div class="" id="widget-e86bd59efcba08ab96bf35422d291586">
                            <div class="block block-sample row clearfix">
                                <div class="">
                                    <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                        <div class="banner-sidebar">
                                            <div><img class="img-responsive" alt="" src="img/banner-sidebar.jpg" /></div>
                                        </div>					</div>
                                </div>
                            </div>
                            <script type="text/javascript" src="js/frontend.js"></script>
                            <script type="text/javascript">
                            new MT.Widget('widget-e86bd59efcba08ab96bf35422d291586', {
                                animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                carouselConfig: null,
                                kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="main-content">
                        <div class="main">
                            <div class="main-inner main-content-inner">
                                <div class="row show-grid">
                                    <div class="col-lg-12">
                                        <div class="col-main">
                                            <div class="std"><!--<div class="page-title">
<h2>Home Page</h2>
</div>--></div><div class=" effect-zoomOut widget-possition" id="widget-889adb5096b2bd1a92cb49722b86a983">
                                                <div class="main-heading">
                                                    <div class="heading-wrapper-title">
                                                        <h3><span>New Arrival</span></h3>
                                                    </div>
                                                </div>
                                                <div class="category-products collection-position02">
                                                    <ul class="products-grid  owl-carousel">
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" title="Simple Product" class="product-image">
                                                                                <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_tube_top_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_tube_top_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Simple Product" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_top_1_1.jpg" alt="Simple Product" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="25"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/25/" data-id='quickview-25' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" title="Simple Product">
                                                                                    Simple Product                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/simple-product.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">
                                                                                    <span class="regular-price" id="product-price-25">
                                                                                        <span class="price">$566.00</span>                                    </span>



                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" class="minimal-price-link">
                                                                                        <span class="label">As low as:</span>
                                                                                        <span class="price" id="product-minimal-price-25">
                                                                                            $530.00            </span>
                                                                                    </a>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/25/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/25/form_key/pgBI7VbuiO6RJTI0/" data-id="25" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/25/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="25" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="May 6, 2017"></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html" title="Strip Blazer" class="product-image">
                                                                                <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/s/t/striped_blazer_with_piping_1__2.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/s/t/striped_blazer_with_piping_1__2.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Strip Blazer" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_2.jpg" alt="Strip Blazer" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="1"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/1/" data-id='quickview-1' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html" title="Strip Blazer">
                                                                                    Strip Blazer                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-1">
                                                                                            $300.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-1">
                                                                                            $250.00                </span>
                                                                                    </p>


                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/1/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/1/form_key/pgBI7VbuiO6RJTI0/" data-id="1" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/1/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="1" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date=""></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-17% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html" title="Brown Sungglasses" class="product-image">
                                                                                <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/b/r/brown_sunglasses_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/r/brown_sunglasses_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Brown Sungglasses" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/s/u/sunglasses_with_metal_frames_2.jpg" alt="Brown Sungglasses" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="2"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/2/" data-id='quickview-2' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html" title="Brown Sungglasses">
                                                                                    Brown Sungglasses                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-2">
                                                                                            $500.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-2">
                                                                                            $400.00                </span>
                                                                                    </p>


                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/2/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/2/form_key/pgBI7VbuiO6RJTI0/" data-id="2" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="2" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date=""></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-20% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html" title="Partern Blazer" class="product-image">
                                                                                <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Partern Blazer" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/i/pique_blazer_2.jpg" alt="Partern Blazer" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="3"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/3/" data-id='quickview-3' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html" title="Partern Blazer">
                                                                                    Partern Blazer                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:93%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html';
                                                                                                return false;">3 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-3">
                                                                                            $800.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-3">
                                                                                            $600.00                </span>
                                                                                    </p>


                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/3/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/3/form_key/pgBI7VbuiO6RJTI0/" data-id="3" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/3/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="3" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="July 12, 2016"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-25% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html" title="Leo Sungglasses" class="product-image">
                                                                                <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/l/e/leo_sunglasses_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/l/e/leo_sunglasses_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Leo Sungglasses" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="img/square_sunglasses_2_1.jpg" alt="Leo Sungglasses" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="4"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/4/" data-id='quickview-4' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html" title="Leo Sungglasses">
                                                                                    Leo Sungglasses                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:87%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-4">
                                                                                            $1,200.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-4">
                                                                                            $800.00                </span>
                                                                                    </p>


                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/4/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/4/form_key/pgBI7VbuiO6RJTI0/" data-id="4" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/4/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="4" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="May 11, 2017"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-33% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" title="Print Sneaker" class="product-image">
                                                                                <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Print Sneaker" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1.jpg" alt="Print Sneaker" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="19"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/19/" data-id='quickview-19' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" title="Print Sneaker">
                                                                                    Print Sneaker                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:80%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html';
                                                                                                return false;">2 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-19">
                                                                                            $1,000.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-19">
                                                                                            $980.00                </span>
                                                                                    </p>




                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" class="minimal-price-link">
                                                                                        <span class="label">As low as:</span>
                                                                                        <span class="price" id="product-minimal-price-19">
                                                                                            $750.00            </span>
                                                                                    </a>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/19/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/19/form_key/pgBI7VbuiO6RJTI0/" data-id="19" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/19/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="19" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="May 6, 2017"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html" title="Square Sungglasses" class="product-image">
                                                                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/s/q/square_sunglasses_2_2.jpg" data-src="img/square_sunglasses_2_2.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Square Sungglasses" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/r/brown_sunglasses_1_2.jpg" alt="Square Sungglasses" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="5"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/5/" data-id='quickview-5' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html" title="Square Sungglasses">
                                                                                    Square Sungglasses                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:80%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">
                                                                                    <span class="regular-price" id="product-price-5">
                                                                                        <span class="price">$700.00</span>                                    </span>

                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/5/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/5/form_key/pgBI7VbuiO6RJTI0/" data-id="5" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/5/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="5" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date=""></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html" title="Configuration Product" class="product-image">
                                                                                <div class="product-new-label"><span>New</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Configuration Product" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket_brown.jpg" alt="Configuration Product" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="17"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/17/" data-id='quickview-17' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html" title="Configuration Product">
                                                                                    Configuration Product                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">
                                                                                    <span class="regular-price" id="product-price-17">
                                                                                        <span class="price">$200.00</span>                                    </span>

                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <a style="display: none;" href='http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/17/' class='options-cart' data-id='options-cart-17'>Option cart</a>

                                                                                <button type="button" title="Add To Cart" class="button btn-cart show-options" data-id="17"
                                                                                        data-submit='http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html'>
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>

                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/17/form_key/pgBI7VbuiO6RJTI0/" data-id="17" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/17/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="17" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date=""></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" title="Urban Butcher" class="product-image">
                                                                                <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/u/r/urban_blucher.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/u/r/urban_blucher.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Urban Butcher" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker.jpg" alt="Urban Butcher" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="18"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/18/" data-id='quickview-18' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" title="Urban Butcher">
                                                                                    Urban Butcher                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-18">
                                                                                            $1,000.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-18">
                                                                                            $980.00                </span>
                                                                                    </p>




                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" class="minimal-price-link">
                                                                                        <span class="label">As low as:</span>
                                                                                        <span class="price" id="product-minimal-price-18">
                                                                                            $750.00            </span>
                                                                                    </a>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/18/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/18/form_key/pgBI7VbuiO6RJTI0/" data-id="18" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/18/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="18" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="May 6, 2017"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                        <li class="item">
                                                            <div class="item-inner">
                                                                <div class="product-item">
                                                                    <div class="content products-list">
                                                                        <div class="product-hover">
                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" title="Combine Oxford Shoes" class="product-image">
                                                                                <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                    <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Combine Oxford Shoes" />
                                                                                </span>
                                                                                <span class="product-img-additional back margin-image">
                                                                                    <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1_1.jpg" alt="Combine Oxford Shoes" />                                    </span>
                                                                            </a>
                                                                            <div class="product-intification-box"></div>
                                                                            <div class="product-hover-box">
                                                                                <div class="main-quickview hidden-xs">
                                                                                    <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="20"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                    <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/20/" data-id='quickview-20' style='display:none'>Quick view</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-meta product-shop">
                                                                        <div class="top-actions-inner">
                                                                            <h3 class="product-name">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" title="Combine Oxford Shoes">
                                                                                    Combine Oxford Shoes                                </a>
                                                                            </h3>
                                                                            <div class="table">
                                                                                <div class="table-reviews">
                                                                                    <div class="ratings">
                                                                                        <div class="rating-box">
                                                                                            <div class="rating" style="width:100%"></div>
                                                                                        </div>
                                                                                        <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html';
                                                                                                return false;">1 Review(s)</a></span>
                                                                                    </div>
                                                                                </div>



                                                                                <div class="price-box">

                                                                                    <p class="old-price">
                                                                                        <span class="price-label">Regular Price:</span>
                                                                                        <span class="price" id="old-price-20">
                                                                                            $1,000.00                </span>
                                                                                    </p>

                                                                                    <p class="special-price">
                                                                                        <span class="price-label">Special Price</span>
                                                                                        <span class="price" id="product-price-20">
                                                                                            $980.00                </span>
                                                                                    </p>




                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" class="minimal-price-link">
                                                                                        <span class="label">As low as:</span>
                                                                                        <span class="price" id="product-minimal-price-20">
                                                                                            $750.00            </span>
                                                                                    </a>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                        <div class="mt-actions clearfix">
                                                                            <div class="addtocart">
                                                                                <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/20/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                    <span>
                                                                                        <span>Add To Cart</span>
                                                                                    </span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="confix-produclist">
                                                                                <div class="add-to-links">
                                                                                    <div class="wishlist pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/20/form_key/pgBI7VbuiO6RJTI0/" data-id="20" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                            <i class="fa fa-heart"></i>                                            </a>
                                                                                    </div>
                                                                                    <div class="compare pull-left">
                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/20/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="20" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                            <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="count-time">
                                                                        <div class="hot-time">
                                                                            <span>Expires in: </span>
                                                                            <span class="product-date" data-date="May 6, 2017"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <script type="text/javascript" src="js/frontend.js"></script>
                                            <script type="text/javascript">
                                                                                    new MT.Widget('widget-889adb5096b2bd1a92cb49722b86a983', {
                                                                                        animation: {"enable": true, "animationName": "effect-zoomOut", "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                        parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                        carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 3, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                        carouselConfig: {
                                                                                            itemsDesktop: [1199, 3],
                                                                                            itemsDesktopSmall: [991, 2],
                                                                                            itemsTablet: [768, 2],
                                                                                            itemsMobile: [479, 1],
                                                                                            touchDrag: true
                                                                                        },
                                                                                        countdown: {"enable": false, "yearText": "years", "monthText": "months", "weekText": "weeks", "dayText": "days", "hourText": "hours", "minText": "mins", "secText": "secs", "yearSingularText": "year", "monthSingularText": "month", "weekSingularText": "week", "daySingularText": "day", "hourSingularText": "hour", "minSingularText": "min", "secSingularText": "sec", "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/jquery.jcountdown.min.js"},
                                                                                        countdownConfig: {
                                                                                            dayText: 'd',
                                                                                            hourText: 'h',
                                                                                            minText: 'm',
                                                                                            secText: 's',
                                                                                            daySingularText: 'd',
                                                                                            hourSingularText: 'h',
                                                                                            minSingularText: 'm',
                                                                                            secSingularText: 's',
                                                                                            spaceCharacter: '',
                                                                                            timeSeparator: ' - '
                                                                                        },
                                                                                        countdownTemplate: '<div class="day"><span class="no">%d</span><span class="text">days</span></div><div class="hours"><span class="no">%h</span><span class="text">hours</span></div><div class="min"><span class="no">%i</span><span class="text">min</span></div><div class="second"><span class="no">%s</span><span class="text">secs</span></div>',
                                                                                        kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                                            </script>
                                            <div class=" effect-zoomOut" id="widget-4a2fb1cb0603c740c0c1b28b0ce3185c">
                                                <div class="block block-sample row clearfix">
                                                    <div class="">
                                                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                                            <div class="block-middle" style="background-image: url('img/static5.jpg');">
                                                                <div class="block-middle-inner">
                                                                    <div class="title">FOR HAPPY TRAVELER</div>
                                                                    <div class="text">Fashion trending in summer 2015 for happy traveler.</div>
                                                                    <a class="btn-shopnow" href="#"><span>Shop now</span></a></div>
                                                            </div>					</div>
                                                    </div>
                                                </div>
                                                <script type="text/javascript" src="js/frontend.js"></script>
                                                <script type="text/javascript">
                                                                                    new MT.Widget('widget-4a2fb1cb0603c740c0c1b28b0ce3185c', {
                                                                                        animation: {"enable": true, "animationName": "effect-zoomOut", "animationDelay": 200, "itemSelector": ".item", "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                        parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                        carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                        carouselConfig: null,
                                                                                        kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                                                </script>
                                            </div>
                                            <div class=" effect-zoomOut widget-possition" id="widget-042fa5b31f1f1568d1a7e60e63c0e8b1">
                                                <div class="main-heading">
                                                    <div class="heading-wrapper-title">
                                                        <h3><span>Feature Product</span></h3>
                                                    </div>
                                                </div>
                                                <div class="owl-carousel">
                                                    <div class="category-products collection-position02">
                                                        <ul class="products-grid ">
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" title="Simple Product" class="product-image">
                                                                                    <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_tube_top_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_tube_top_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Simple Product" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/f/r/frilly_top_1_1.jpg" alt="Simple Product" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="25"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/25/" data-id='quickview-25' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" title="Simple Product">
                                                                                        Simple Product                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/simple-product.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">
                                                                                        <span class="regular-price" id="product-price-25">
                                                                                            <span class="price">$566.00</span>                                    </span>



                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/simple-product.html" class="minimal-price-link">
                                                                                            <span class="label">As low as:</span>
                                                                                            <span class="price" id="product-minimal-price-25">
                                                                                                $530.00            </span>
                                                                                        </a>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/25/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/25/form_key/pgBI7VbuiO6RJTI0/" data-id="25" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/25/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="25" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 6, 2017"></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html" title="Strip Blazer" class="product-image">
                                                                                    <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/s/t/striped_blazer_with_piping_1__2.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/s/t/striped_blazer_with_piping_1__2.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Strip Blazer" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_2.jpg" alt="Strip Blazer" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="1"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/1/" data-id='quickview-1' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html" title="Strip Blazer">
                                                                                        Strip Blazer                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/strip-blazer.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-1">
                                                                                                $300.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-1">
                                                                                                $250.00                </span>
                                                                                        </p>


                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/1/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/1/form_key/pgBI7VbuiO6RJTI0/" data-id="1" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/1/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="1" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date=""></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-17% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html" title="Brown Sungglasses" class="product-image">
                                                                                    <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="img/brown_sunglasses_1.jpg" data-src="img/brown_sunglasses_1.jpg" src="img/loader.gif" class="img-responsive lazy" alt="Brown Sungglasses" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/s/u/sunglasses_with_metal_frames_2.jpg" alt="Brown Sungglasses" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="2"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/2/" data-id='quickview-2' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html" title="Brown Sungglasses">
                                                                                        Brown Sungglasses                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/brown-sungglasses.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-2">
                                                                                                $500.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-2">
                                                                                                $400.00                </span>
                                                                                        </p>


                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/2/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/2/form_key/pgBI7VbuiO6RJTI0/" data-id="2" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="2" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date=""></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-20% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="category-products collection-position02">
                                                        <ul class="products-grid ">
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html" title="Partern Blazer" class="product-image">
                                                                                    <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/j/a/jacquard_pattern_blazer_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Partern Blazer" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/i/pique_blazer_2.jpg" alt="Partern Blazer" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="3"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/3/" data-id='quickview-3' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html" title="Partern Blazer">
                                                                                        Partern Blazer                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:93%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/partern-blazer.html';
                                                                                                    return false;">3 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-3">
                                                                                                $800.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-3">
                                                                                                $600.00                </span>
                                                                                        </p>


                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/3/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/3/form_key/pgBI7VbuiO6RJTI0/" data-id="3" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/3/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="3" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="July 12, 2016"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-25% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html" title="Leo Sungglasses" class="product-image">
                                                                                    <div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/l/e/leo_sunglasses_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/l/e/leo_sunglasses_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Leo Sungglasses" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="img/square_sunglasses_2_1.jpg" alt="Leo Sungglasses" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="4"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/4/" data-id='quickview-4' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html" title="Leo Sungglasses">
                                                                                        Leo Sungglasses                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:87%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/leo-sungglasses.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-4">
                                                                                                $1,200.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-4">
                                                                                                $800.00                </span>
                                                                                        </p>


                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/4/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/4/form_key/pgBI7VbuiO6RJTI0/" data-id="4" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/4/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="4" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 11, 2017"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-33% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" title="Print Sneaker" class="product-image">
                                                                                    <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Print Sneaker" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1.jpg" alt="Print Sneaker" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="19"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/19/" data-id='quickview-19' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" title="Print Sneaker">
                                                                                        Print Sneaker                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:80%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html';
                                                                                                    return false;">2 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-19">
                                                                                                $1,000.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-19">
                                                                                                $980.00                </span>
                                                                                        </p>




                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/print-sneaker.html" class="minimal-price-link">
                                                                                            <span class="label">As low as:</span>
                                                                                            <span class="price" id="product-minimal-price-19">
                                                                                                $750.00            </span>
                                                                                        </a>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/19/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/19/form_key/pgBI7VbuiO6RJTI0/" data-id="19" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/19/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="19" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 6, 2017"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="category-products collection-position02">
                                                        <ul class="products-grid ">
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html" title="Square Sungglasses" class="product-image">
                                                                                    <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/s/q/square_sunglasses_2_2.jpg" data-src="img/square_sunglasses_2_2.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Square Sungglasses" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/r/brown_sunglasses_1_2.jpg" alt="Square Sungglasses" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="5"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/5/" data-id='quickview-5' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html" title="Square Sungglasses">
                                                                                        Square Sungglasses                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:80%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/square-sungglasses.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">
                                                                                        <span class="regular-price" id="product-price-5">
                                                                                            <span class="price">$700.00</span>                                    </span>

                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/5/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/5/form_key/pgBI7VbuiO6RJTI0/" data-id="5" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/5/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="5" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date=""></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html" title="Configuration Product" class="product-image">
                                                                                    <div class="product-new-label"><span>New</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Configuration Product" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/b/l/blazer_with_flap_pocket_brown.jpg" alt="Configuration Product" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="17"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/17/" data-id='quickview-17' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html" title="Configuration Product">
                                                                                        Configuration Product                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">
                                                                                        <span class="regular-price" id="product-price-17">
                                                                                            <span class="price">$200.00</span>                                    </span>

                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <a style="display: none;" href='http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/17/' class='options-cart' data-id='options-cart-17'>Option cart</a>

                                                                                    <button type="button" title="Add To Cart" class="button btn-cart show-options" data-id="17"
                                                                                            data-submit='http://mt-quartz02.magentothemes.net/index.php/blazer-with-flap-pocket.html'>
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>

                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/17/form_key/pgBI7VbuiO6RJTI0/" data-id="17" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/17/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="17" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date=""></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" title="Urban Butcher" class="product-image">
                                                                                    <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/u/r/urban_blucher.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/u/r/urban_blucher.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Urban Butcher" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker.jpg" alt="Urban Butcher" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="18"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/18/" data-id='quickview-18' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" title="Urban Butcher">
                                                                                        Urban Butcher                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-18">
                                                                                                $1,000.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-18">
                                                                                                $980.00                </span>
                                                                                        </p>




                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/urban-butcher.html" class="minimal-price-link">
                                                                                            <span class="label">As low as:</span>
                                                                                            <span class="price" id="product-minimal-price-18">
                                                                                                $750.00            </span>
                                                                                        </a>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/18/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/18/form_key/pgBI7VbuiO6RJTI0/" data-id="18" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/18/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="18" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 6, 2017"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="category-products collection-position02">
                                                        <ul class="products-grid ">
                                                            <li class="item">
                                                                <div class="item-inner">
                                                                    <div class="product-item">
                                                                        <div class="content products-list">
                                                                            <div class="product-hover">
                                                                                <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" title="Combine Oxford Shoes" class="product-image">
                                                                                    <div class="product-new-label"><span>New</span></div><div class="product-sale-label"><span>Sale</span></div>                                <span class="front margin-image">
                                                                                        <img data-srcX2="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/1080x1200/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1_1.jpg" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/c/o/combined_oxford_shoe_1_1.jpg" src="http://mt-quartz02.magentothemes.net/skin/frontend/mtquartz02/default/images/loader.gif" class="img-responsive lazy" alt="Combine Oxford Shoes" />
                                                                                    </span>
                                                                                    <span class="product-img-additional back margin-image">
                                                                                        <img class="img-responsive alt-img lazy" data-src="http://mt-quartz02.magentothemes.net/media/catalog/product/cache/1/small_image/540x600/9df78eab33525d08d6e5fb8d27136e95/p/r/printed_sneaker_1_1.jpg" alt="Combine Oxford Shoes" />                                    </span>
                                                                                </a>
                                                                                <div class="product-intification-box"></div>
                                                                                <div class="product-hover-box">
                                                                                    <div class="main-quickview hidden-xs">
                                                                                        <button type="button"  data-placement="right" title="Quick view" class="button btn-cart show-quickview mt-tooltip" data-id="20"><span><span class="fs1" aria-hidden="true" data-icon="0"></span></span></button>
                                                                                        <a class="product-quickview" href="http://mt-quartz02.magentothemes.net/index.php/ajaxcart/index/options/product_id/20/" data-id='quickview-20' style='display:none'>Quick view</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-meta product-shop">
                                                                            <div class="top-actions-inner">
                                                                                <h3 class="product-name">
                                                                                    <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" title="Combine Oxford Shoes">
                                                                                        Combine Oxford Shoes                                </a>
                                                                                </h3>
                                                                                <div class="table">
                                                                                    <div class="table-reviews">
                                                                                        <div class="ratings">
                                                                                            <div class="rating-box">
                                                                                                <div class="rating" style="width:100%"></div>
                                                                                            </div>
                                                                                            <span class="amount"><a href="#" onclick="var t = opener ? opener.window : window;
                                                                                                    t.location.href = 'http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html';
                                                                                                    return false;">1 Review(s)</a></span>
                                                                                        </div>
                                                                                    </div>



                                                                                    <div class="price-box">

                                                                                        <p class="old-price">
                                                                                            <span class="price-label">Regular Price:</span>
                                                                                            <span class="price" id="old-price-20">
                                                                                                $1,000.00                </span>
                                                                                        </p>

                                                                                        <p class="special-price">
                                                                                            <span class="price-label">Special Price</span>
                                                                                            <span class="price" id="product-price-20">
                                                                                                $980.00                </span>
                                                                                        </p>




                                                                                        <a href="http://mt-quartz02.magentothemes.net/index.php/combine-oxford-shoes.html" class="minimal-price-link">
                                                                                            <span class="label">As low as:</span>
                                                                                            <span class="price" id="product-minimal-price-20">
                                                                                                $750.00            </span>
                                                                                        </a>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="mt-actions clearfix">
                                                                                <div class="addtocart">
                                                                                    <button type="button" title="Add To Cart" class="button btn-cart " onclick="setLocation('http://mt-quartz02.magentothemes.net/index.php/checkout/cart/add/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/product/20/form_key/pgBI7VbuiO6RJTI0/')">
                                                                                        <span>
                                                                                            <span>Add To Cart</span>
                                                                                        </span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="confix-produclist">
                                                                                    <div class="add-to-links">
                                                                                        <div class="wishlist pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/wishlist/index/add/product/20/form_key/pgBI7VbuiO6RJTI0/" data-id="20" title="Wishlist" data-placement="bottom" class="link-wishlist mt-tooltip">
                                                                                                <i class="fa fa-heart"></i>                                            </a>
                                                                                        </div>
                                                                                        <div class="compare pull-left">
                                                                                            <a href="http://mt-quartz02.magentothemes.net/index.php/catalog/product_compare/add/product/20/uenc/aHR0cDovL210LXF1YXJ0ejAyLm1hZ2VudG90aGVtZXMubmV0OjgwODAv/form_key/pgBI7VbuiO6RJTI0/" data-id="20" title="Compare" data-placement="bottom" class="link-compare  mt-tooltip">
                                                                                                <span class="fs1" aria-hidden="true" data-icon=""></span>                                            </a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="count-time">
                                                                            <div class="hot-time">
                                                                                <span>Expires in: </span>
                                                                                <span class="product-date" data-date="May 6, 2017"></span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-percent-label"><span>-2% </span></div>                </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <script type="text/javascript" src="js/frontend.js"></script>
                                            <script type="text/javascript">
                                                                                        new MT.Widget('widget-042fa5b31f1f1568d1a7e60e63c0e8b1', {
                                                                                            animation: {"enable": true, "animationName": "effect-zoomOut", "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                            parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                            carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 3, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                            carouselConfig: {
                                                                                                itemsDesktop: [1199, 3],
                                                                                                itemsDesktopSmall: [991, 2],
                                                                                                itemsTablet: [768, 2],
                                                                                                itemsMobile: [479, 1],
                                                                                                touchDrag: true
                                                                                            },
                                                                                            countdown: {"enable": false, "yearText": "years", "monthText": "months", "weekText": "weeks", "dayText": "days", "hourText": "hours", "minText": "mins", "secText": "secs", "yearSingularText": "year", "monthSingularText": "month", "weekSingularText": "week", "daySingularText": "day", "hourSingularText": "hour", "minSingularText": "min", "secSingularText": "sec", "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/jquery.jcountdown.min.js"},
                                                                                            countdownConfig: {
                                                                                                dayText: 'd',
                                                                                                hourText: 'h',
                                                                                                minText: 'm',
                                                                                                secText: 's',
                                                                                                daySingularText: 'd',
                                                                                                hourSingularText: 'h',
                                                                                                minSingularText: 'm',
                                                                                                secSingularText: 's',
                                                                                                spaceCharacter: '',
                                                                                                timeSeparator: ' - '
                                                                                            },
                                                                                            countdownTemplate: '<div class="day"><span class="no">%d</span><span class="text">days</span></div><div class="hours"><span class="no">%h</span><span class="text">hours</span></div><div class="min"><span class="no">%i</span><span class="text">min</span></div><div class="second"><span class="no">%s</span><span class="text">secs</span></div>',
                                                                                            kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
                                            </script>
                                            <div class="wg-testimonial" id="widget-74c0a9b8199852b37f4ccfab0bff9a80">
                                                <div class="block block-sample row clearfix">
                                                    <div class="block-title">
                                                        <strong><span>Testimonial</span></strong>
                                                    </div>
                                                    <div class="owl-carousel ">
                                                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                                            <div class="testimonial clearfix">
                                                                <div class="avatar-testimoniter"><img class="img-responsive" alt="" src="img/avatar-img.jpg" /> <span class="name-testimoniter">John Doe</span> <span class="position-testimoniter">Fashion Designer</span></div>
                                                                <div class="content-testimonial">
                                                                    <p>I think Quartz is the best choice for ecoomerce, store,shop,etc. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                    <p>ivamus leo dui, bibendum vitae hendrerit ac, volutpat quis dolor. Maecenas id lacinia odio, et malesuada lectus. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                </div>
                                                            </div>					</div>
                                                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                                            <div class="testimonial clearfix">
                                                                <div class="avatar-testimoniter"><img class="img-responsive" alt="" src="img/mt_team_1.jpg" /> <span class="name-testimoniter">John Doe</span> <span class="position-testimoniter">Fashion Designer</span></div>
                                                                <div class="content-testimonial">
                                                                    <p>I think Quartz is the best choice for ecoomerce, store,shop,etc. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                    <p>ivamus leo dui, bibendum vitae hendrerit ac, volutpat quis dolor. Maecenas id lacinia odio, et malesuada lectus. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                </div>
                                                            </div>					</div>
                                                        <div class="col-lg-12  col-md-12  col-sm-12  col-xs-12  ">
                                                            <div class="testimonial clearfix">
                                                                <div class="avatar-testimoniter"><img class="img-responsive" alt="" src="img/mt_team_3.jpg" /> <span class="name-testimoniter">John Doe</span> <span class="position-testimoniter">Fashion Designer</span></div>
                                                                <div class="content-testimonial">
                                                                    <p>I think Quartz is the best choice for ecoomerce, store,shop,etc. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                    <p>ivamus leo dui, bibendum vitae hendrerit ac, volutpat quis dolor. Maecenas id lacinia odio, et malesuada lectus. Nulla et ante non metus consectetur vestibulum sed quis dolor. Fusce non tempus est.</p>
                                                                </div>
                                                            </div>					</div>
                                                    </div>
                                                </div>
                                                <script type="text/javascript" src="js/frontend.js"></script>
                                                <script type="text/javascript">
                                                                                        new MT.Widget('widget-74c0a9b8199852b37f4ccfab0bff9a80', {
                                                                                            animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                            parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                            carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                            carouselConfig: null,
                                                                                            kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
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
    </div>

    <div class="main-brands">
        <div class="block-bottom" id="widget-514d5ea758e5c4b7dc45b3e51584a700">
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
            <script type="text/javascript" src="js/frontend.js"></script>
            <script type="text/javascript">
                                                                                        new MT.Widget('widget-514d5ea758e5c4b7dc45b3e51584a700', {
                                                                                            animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                            parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                            carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 1, "singleItem": true, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                            carouselConfig: null,
                                                                                            kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
            </script>
        </div>
        <div class="brands" id="widget-f31c2caab0c42740d57ea449694fdf2b">
            <div class="container">
                <div class="main-heading">
                    <div class="heading-wrapper-title">
                    </div>
                </div>
                <ul class="owl-carousel ">
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/canon.jpg" data-srcX2="img/canon.jpg" alt="Canon" src="img/canon.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/lg.jpg" data-srcX2="img/lg.jpg" alt="LG" src="img/lg.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/samsung.jpg" data-srcX2="img/samsung.jpg" alt="Nokia" src="img/samsung.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/pana.jpg" data-srcX2="img/pana.jpg" alt="Panasonic" src="img/pana.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/samsung.jpg" data-srcX2="img/samsung.jpg" alt="Samsung" src="img/samsung.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/sanyo.jpg" data-srcX2="img/sanyo.jpg" alt="Sanyo" src="img/sanyo.jpg" />
                    </li>
                    <li>
                        <img class="lazyOwl img-responsive" data-src="img/canon.jpg" data-srcX2="img/canon.jpg" alt="Sony" src="img/canon.jpg" />
                    </li>
                </ul>
            </div>
            <script type="text/javascript" src="js/frontend.js"></script>
            <script type="text/javascript">
                                                                                        new MT.Widget('widget-f31c2caab0c42740d57ea449694fdf2b', {
                                                                                            animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                                            parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                                            carousel: {"enable": true, "pagination": false, "autoPlay": false, "items": 5, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": true, "navigationText": ["<i class=\"fa fa-angle-left\"><\/i>", "<i class=\"fa fa-angle-right\"><\/i>"], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                                            carouselConfig: {itemsCustom: [[0, 1], [480, 2], [768, 3], [992, 3], [1200, 4]], touchDrag: true},
                                                                                            kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
            </script>
        </div>
    </div>

    <div class="main-bottom">
        <div class="container">
        </div>
    </div>
</section>

