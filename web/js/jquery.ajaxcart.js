/**
 *
 * ------------------------------------------------------------------------------
 * @category Mato
 * @package Mato Framework
 * ------------------------------------------------------------------------------
 * @copyright    Copyright (C) 2008-2015 ZooExtension.com. All Rights Reserved.
 * @license      GNU General Public License version 2 or later;
 * @author       ZooExtension.com
 * @email        magento@cleversoft.co
 * ------------------------------------------------------------------------------
 *
 */
$mt(function($) { 
    themeResize();
    $(window).resize(function(){
        themeResize();
    });
	$('.mt-maincart a').live('click', function(){
        var checkUrl = ($(this).attr('href').indexOf('checkout/cart/delete') > -1);
        if(checkUrl && $(this).attr('class') !='deletecart' && $(this).attr('class').indexOf('btn-remove2') == -1){
            deletecart($(this).attr('href'));
            return false;
        }
    });
    $('.success button.close').live('click', function() {
        $(this).parent().fadeOut('slow', function() {
            $(this).remove();
        });
    });
    $('.options-cart').live('click', function() {
        $.colorbox({
            iframe: true,
            href:this.href,
            opacity:	0.5,
            speed:		300,
            current:	'{current} / {total}',
            close:      "close",
            innerWidth:'780px',
            innerHeight:'550px',
            preloading: false
        });
    });

    $('.show-options').live('click', function(e){
        if($('.btn-cart-mobile').length == 0){
            $('[data-id=options-cart-' + $(this).attr('data-id')+']').trigger('click');
        }else{
            return window.location.href=$(this).attr('data-submit');
        }
    });

    if($('.product-view').length>0 && $('.option-file').length == 0 && $('.btn-cart-mobile').length == 0){
        productAddToCartForm.submit = function(button, url) {
            if (this.validator.validate()) {
                $('#ajax-loader').show();
                var form = this.form;
                var oldUrl = form.action;
                if (url) {
                    form.action = url;
                }
                var e = null;
                if (!url) {
                    url = $('#product_addtocart_form').attr('action');
                }
                var checkWishlistUrl = (url.indexOf('wishlist/index/cart') > -1);

                url = url.replace("checkout/cart","ajaxcart/index");
                
                var data = $('#product_addtocart_form').serialize();
                data += '&isAjax=1';
                try {
                    if(checkWishlistUrl){
                        this.form.submit();
                    }else{
                        if($('#qty').val()==0){
                            if($('.error_qty').length==0){
                                $('<span/>').html('The quantity not zero!')
                                    .addClass('error_qty')
                                    .appendTo($('.add-to-cart'));
                            }
                        }else{
                            $('.error_qty').remove();
                            $("span.textrepuired").html('');
                            $.ajax( {
                                url : url,
                                dataType : 'json',
                                type : 'post',
                                data : data,
                                success : function(data) {
                                    parent.setAjaxData(data,true);
                                    if (button && button != 'undefined') {
                                        button.disabled = false;
                                    }
                                }
                            });
                        }
                    }
                } catch (e) {
                }
                this.form.action = oldUrl;
                if (e) {
                    throw e;
                }
            }
            return false;
        }.bind(productAddToCartForm);


    }
});
function themeResize()
{
    width = $mt(window).width();
    if(width <= 767){
        $mt('body').find('.btn-cart').addClass('btn-cart-mobile');
        if($mt('.product-quick-view').length>0){
            $mt('body').find('.btn-cart').removeClass('btn-cart-mobile');
        }
    }else{
        $mt('body').find('.btn-cart').removeClass('btn-cart-mobile');
    }
}
function setAjaxData(data,iframe){
    if(data.status == 'ERROR'){
        showCartBox(data.message);
    }else{
        $mt('.mt-maincart').html('');
        if($mt('.mt-maincart')){
            $mt('.mt-maincart').append(data.output);
        }
        if($mt('.header .links')){
            $mt('.header .links').replaceWith(data.toplink);
        }
        //$mt.colorbox.close();
        if(showPopupCart == '1'){
            showCartInfo(data);
        } else {
            if( !$mt('button[product-id='+ data.product_id +']:has(i)').length ){
                $mt('button[product-id='+ data.product_id +']').append('<i class="fa fa-check"></i>');
                var urlCheckOut = $mt('#inline').find('a').attr('href');
                $mt('button[product-id='+ data.product_id +']').after('<a class="show-cart" href="' + urlCheckOut + '"><span>'+Translator.translate('Show cart')+'</span></a>');
            }
        }
        $mt('#notification').html('');

    }
}

function showCartInfo(data)
{
    $mt('#notification').html('');
    if( typeof data.product_info != 'undefined'){
        $mt('body').append('<div><a href="#inline" class="cart-info-ex"></a></div>');
        $mt('.cart-ajax-title').html('');
        var htm = '<img src="' + data.product_info.image_url + '" /><h4>' + data.product_info.title + '</h4>';
        $mt('.cart-ajax-title').append(htm);
        $mt('.cart-info-ex').colorbox({
                                inline:true,
                                opacity:	0.3,
                                speed:		500,
                                innerWidth:'460px',
                                innerHeight:'auto',
                                onOpen: function(){
                                    $mt('#ajax-loader').hide();
                                }

                            });
        $mt('.cart-info-ex').click();
    }
}

function showCartBox(message,wait)
{
    $mt('#notification').html('<div class="success" style="display: none;">' +
        '<i class="fa fa-check"></i>' +
        '' + message + '' +
        '<button class="close"><i class="fa fa-times-circle"></i></button></div>');
    if(wait){
        $mt('.success').addClass('wait-loading');
        $mt('.success .fa-check').hide();
        $mt('.success .close').hide();
    }else{
        $mt('.success').removeClass('wait-loading');
        $mt('.success .fa-check').show();
        $mt('.success .close').show();
    }
    $mt('.success').fadeIn('slow');
    if(!wait){
        setTimeout(function() {
            $mt('.success').delay(500).fadeOut(1000);
        }, 7000);
    }
}
function setLocation(url)
{
    var checkUrl = (url.indexOf('checkout/cart') > -1);
    var pass = true;
    if($mt('body').find('.btn-cart-mobile').length > 0){
        pass = false;
    }
    if(checkUrl && pass){ 
        data = '&isAjax=1&qty=1';
        url = url.replace("checkout/cart","ajaxcart/index");
        showCartBox(datatext.load,true);
        try {
            $mt.ajax( {
                url : url,
                dataType : 'json',
                data: data,
                type: 'post',
                success : function(data) {
                    setAjaxData(data);
                }
            });
        } catch (e) {
        }
        return false;
    }
    return window.location.href=url;
}
function deletecart(url){
    var checkUrl = (url.indexOf('checkout/cart') > -1);
    if(checkUrl){ 
        if (confirm("Are you sure you would like to remove this item from the shopping cart?")) {
            data = '&isAjax=1&qty=1';
            var url = url.replace("checkout/cart","ajaxcart/index");
            showCartBox(datatext.load,true);
            $mt.ajax( {
                url : url,
                dataType : 'json',
                data: data,
                type: 'post',
                success : function(data) {
                    setAjaxData(data,false);
                }
            });
        } 
    }
    return false;
}