<%@page contentType="text/html" pageEncoding="UTF-8"%>







<footer class="footer-container">
    <div class="footer-inner">
        <div class="footer-top">
            <div class="container">
                <div class="footer-top-inner">
                    <div class="footer">
                        <div class="" id="widget-f2da8fbde9c913eb4a0011348179124a">
                            <div class="block block-sample row clearfix">
                                <div class="">
                                    <div class="col-lg-3  col-md-3  col-sm-3  col-xs-12  ">
                                        <div class="information-logo">
                                            <div class="footer-static"><a class="logo-bottom" href="http://mt-quartz02.magentothemes.net/index.php/"><img class="img-responsive" alt="" src="http://mt-quartz02.magentothemes.net/media/wysiwyg/magenthemes/mtquartz02/logo/logo.png" /></a>
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
                                                            <form action="mailKontrolAction.jsp" method="post" id="newsletter-validate-detail">
                                                                <div class="block-content-sub">
                                                                    <div class="form-subscribe-header">
                                                                        <label for="newsletter">Mail listemize abone olun</label>
                                                                    </div>
                                                                    <div class="input-box">
                                                                        <input type="email" name="newsletter" id="newsletter" class="input-text required-entry validate-email" />
                                                                        <button type="submit" title="Subscribe" class="button"><span><i class="fa fa-arrow-right"></i></span></button>
                                                                    </div>
                                                                </div>
                                                                <%
                                                                    boolean ayniMail = (request.getParameter("mail") == null);
                                                                    if (!ayniMail) {
                                                                %>
                                                                <div style="color: red;font-size: 12px;">Bu Mail Kayıtlı</div>
                                                                
                                                                <%}%>
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
                            <script type="text/javascript" src="js/frontend.js"></script>
                            <script type="text/javascript">
                                                                new MT.Widget('widget-f2da8fbde9c913eb4a0011348179124a', {
                                                                    animation: {"enable": false, "animationName": null, "animationDelay": 300, "itemSelector": null, "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/wow\/wow.js"},
                                                                    parallax: {"enable": false, "type": null, "overlay": null, "video": {"src": null, "volume": false}, "image": {"src": null, "fit": null, "repeat": null}, "file": {"poster": null, "mp4": null, "webm": null, "volume": false}},
                                                                    carousel: {"enable": false, "pagination": false, "autoPlay": false, "items": 4, "singleItem": false, "lazyLoad": true, "lazyEffect": false, "addClassActive": true, "navigation": false, "navigationText": [null, null], "engineSrc": "http:\/\/mt-quartz02.magentothemes.net\/js\/mt\/extensions\/jquery\/plugins\/owl-carousel\/owl.carousel.js"},
                                                                    carouselConfig: null,
                                                                    kenburns: {"enable": false, "images": [], "overlay": null, "engineSrc": "js\/kenburns.js"}});
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
                                        <div class="logo-payment"><img class="img-responsive" alt="" src="img/all-payment.png" /></div>                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="back-top" class="hidden-phone">
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
                        <form action="http://mt-quartz02.magentothemes.net/index.php/newsletter/subscriber/new/" method="post"
                              id="mt-newsletter-validate-detail">
                            <div class="block-content">
                                <div class="input-box">
                                    <input name="email" type="text" id="mt-newsletter"
                                           value="Enter your email address"
                                           onclick="this.value == 'Enter your email address' ? this.value = '' : ''"
                                           onblur="this.value == '' ? this.value = 'Enter your email address' : ''"
                                           class="input-text required-entry validate-email"/>

                                    <div class="actions">
                                        <button type="submit" title="Subscribe"
                                                class="button">
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
                <script type="text/javascript">
                    //<![CDATA[
                    /*var mtNewsletterSubscriberFormDetail = new VarienForm('mt-newsletter-validate-detail');*/
                    $mt(function ($) {
                        isSuccess = $('ul.messages li.success-msg').length;
                        subscribeFlag = $.cookie('mtNewsletterSubscribeFlag');
                        function subsSetcookie() {
                            $.cookie('mtNewsletterSubscribe', 'true', {
                                expires: 30,
                                path: '/'
                            });
                        }

                        $('#mt_newsletter .subcriper_label input').on('click', function () {
                            if ($(this).parent().find('input:checked').length) {
                                subsSetcookie();
                            } else {
                                $.removeCookie('mtNewsletterSubscribe', {path: '/'});
                            }
                        });
                        $('#mt_newsletter .input-box button.button').on('click', function () {
                            var button = $(this);
                            setTimeout(function () {
                                if (!button.parent().find('input#newsletter').hasClass('validation-failed')) {
                                    $.cookie('mtNewsletterSubscribeFlag', 'true', {
                                        path: '/'
                                    });
                                }
                            }, 500);
                        });
                        if (!(subscribeFlag && isSuccess) && !$.cookie('mtNewsletterSubscribe')) {
                            $.colorbox({
                                inline: true,
                                href: $('#mt_newsletter'),
                                opacity: 0.3,
                                speed: 500,
                                innerWidth: '720px',
                                innerHeight: '360px',
                                fixed: true,
                                onOpen: function () {
                                    $('#cboxContent').addClass('newsletterbox');
                                    $('#cboxLoadingGraphic').addClass('box-loading');
                                },
                                onComplete: function () {
                                    setTimeout(function () {
                                        $('#cboxLoadingGraphic').removeClass('box-loading');
                                    }, 800);
                                },
                                onClosed: function () {
                                    $('#cboxContent').removeClass('newsletterbox');
                                }
                            });
                        } else {
                            $.removeCookie('mtNewsletterSubscribeFlag', {path: '/'});
                            subsSetcookie();
                        }
                    });
                    //]]>
                </script>
            </div>
            <div class="popup_img col-lg-4 col-md-4 col-sm-4">
                <img class="img-responsive" height="300" src="img/image-popup.png" alt="img-popup"/>
            </div>
        </div>
    </div>
</div>

</section>
</section>
</body>
</html>



