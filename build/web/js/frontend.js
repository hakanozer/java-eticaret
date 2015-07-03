/**
 * @category    MT
 * @package     MT_Widget
 * Copyright (C) 2008-2015 ZooExtension.com. All Rights Reserved.
 * @license     GNU General Public License version 2 or later
 * @author ZooExtension.com
 * @email       magento@cleversoft.co
 */
;'use strict';

var MT = MT || {};
MT.Widget = Class.create();
MT.Widget.prototype = {
    VIDEO_MUTE_BTN_CLASS: 'videoMuteBtn fa',
    VIDEO_MUTE_BTN_CLASS_ON: 'fa-volume-up',
    VIDEO_MUTE_BTN_CLASS_OFF: 'fa-volume-off',
    VIDEO_HW_RATIO: 0.5625,
    VENDOR_PREFIXES: 'webkit|Moz'.split('|'),

    initialize: function(id, config){
        this.id = id;
        this.container = $(id);
        this.config = config || {};

        this.checkCSS3Support();

        document.observe('dom:loaded', function(){
            this.initTab();
            this.initCountdown();

            if (this.config.carousel && this.config.carousel.enable){
                this.initCarousel(function(el){
                    this.initCarouselAnimation(el, true);
                    this.initBackground();
                }.bind(this));
            }else{
                this.initAnimation();
                this.initBackground();
            }
        }.bind(this));
    },

    initCountdown: function(){
        if (!window['jQuery']) return;
        if (!this.config.countdown) return;
        if (!this.config.countdown.enable) return;

        if (!jQuery.fn.countdown){
            jQuery.getScript(this.config.countdown.engineSrc, function(){
                this.bindCountdownEvent();
            }.bind(this));
        }else{
            this.bindCountdownEvent();
        }
    },

    bindCountdownEvent: function(){
        this.container.select('.product-date').each(function(item){
            var date = item.readAttribute('data-date');
            if (date){
                var config = {date: date};
                Object.extend(config, this.config.countdown);
                Object.extend(config, this.config.countdownConfig);
                if(this.config.countdownTemplate){
                    config.template = this.config.countdownTemplate;
                }
                jQuery(item).countdown(config);
            }
        }.bind(this));
    },

    initAnimation: function(){
        if (!window['jQuery']) return;
        if (!this.config.animation) return;
        if (!this.config.animation.enable) return;

        var animClass = this.config.animation.animationName,
            animDelay = this.config.animation.animationDelay;

        this.container.select(this.config.animation.itemSelector || '.item').each(function(item, i){
            item.addClassName(animClass + ' wow');
            item.setStyle({visibility: 'hidden'});
            item.setAttribute('data-wow-delay', (animDelay * i) + 'ms');
        });

        if (!window['WOW']){
            jQuery.getScript(this.config.animation.engineSrc, function(){
                this.bindWOWEvent();
            }.bind(this));
        }else{
            this.bindWOWEvent();
        }
    },

    bindWOWEvent: function(){
        new WOW({
            'animateClass': 'active'
        }).init();
    },

    initCarouselAnimation: function(el, isInit){
        if (!this.config.animation) return;
        if (!this.config.animation.enable) return;

        var animClass = this.config.animation.animationName,
            visibleItems = [];

        el.find('.owl-item').each(function(i, item){
            var $item = $(item);

            $item.addClassName(animClass);

            if ($item.hasClassName('active')){
                $item.removeClassName('active');
                $item.setStyle({visibility: 'hidden'});
                visibleItems.push($item);
            }
        }.bind(this));

        if (isInit) this.bindAnimateEvent(visibleItems);
        else this.animateElements(visibleItems);
    },

    bindAnimateEvent: function(visibleItems){
        'DOMContentLoaded|load|resize|scroll'.split('|').each(function(event){
            Event.observe(window, event, function(){
                if (!this.animated && this.isElementInViewport(1/2)){
                    this.animated = true;
                    this.animateElements(visibleItems);
                }
            }.bind(this));
        }.bind(this));
    },

    animateElements: function(items){
        var animDelay = this.config.animation.animationDelay || 300;

        items.each(function(item, i){
            var value = i == 0 ? 0 : animDelay * i;
            this.setVendorCss(item, 'animationDelay', value + 'ms');
            item.addClassName('active');
            item.setStyle({visibility: 'visible'});
        }.bind(this));

        setTimeout(function(){
            items.each(function(item){
                this.setVendorCss(item, 'animationDelay', 'initial');
            }.bind(this));
        }.bind(this), (items.length + 1) * animDelay);
    },

    setVendorCss: function(el, property, value){
        var cssObj = {property: value};

        this.VENDOR_PREFIXES.each(function(prefix){
            cssObj[prefix + property.charAt(0).toUpperCase() + property.substr(1)] = value;
        });

        el.setStyle(cssObj);
    },

    checkCSS3Support: function(){
        var translate3D = 'translate3d(0px, 0px, 0px)',
            divElm = new Element('div'),
            matches;

        divElm.style.cssText =
            '-moz-transform:' + translate3D +
            ';-ms-transform:' + translate3D +
            ';-o-transform:' + translate3D +
            ';-webkit-transform:' + translate3D +
            ';transform:' + translate3D;

        matches = divElm.style.cssText.match(/translate3d\(0px, 0px, 0px\)/g);

        this.support3d = matches !== null && matches.length >= 1;
    },

    initTab: function(){
        if (!this.config.collectionUrl) return;

        this.container.select('.widget-tabs a').each(function(tab){
            var tab_content = this.container.down(tab.readAttribute('href'));
            if (!tab_content) return;

            if (tab_content.down('ul')){
                tab_content.has_content = true;
            }

            Event.observe(tab, 'click', function(e){
                Event.stop(e);

                this.activeTab(tab, tab_content);
                if (tab_content.has_content) return;

                var a = Event.findElement(e, 'a'),
                    type = a.readAttribute('data-type'),
                    value = a.readAttribute('data-value'),
                    limit = a.readAttribute('data-limit'),
                    column = a.readAttribute('data-column'),
                    row = a.readAttribute('data-row'),
                    cid = a.readAttribute('data-cid'),
                    template = a.readAttribute('data-template'),
                    carousel = a.readAttribute('data-carousel'),
                    form_key = MT['FORM_KEY'] || null;

                new Ajax.Request(this.config.collectionUrl, {
                    method: 'post',
                    parameters: {
                        type: type,
                        value: value,
                        limit: limit,
                        form_key: form_key,
                        carousel: carousel,
                        column: column,
                        cid: cid,
                        row: row,
                        template: template
                    },
                    onSuccess: function(transport){
                        tab_content.has_content = true;
                        tab_content.innerHTML = transport.responseText;
                        $mt(".mt-tooltip").tooltip();
                        this.initCarousel(function(el){
                            this.initCarouselAnimation(el, false);
                            this.initCountdown();
                            tab_content.setStyle({
                                height: 'auto'
                            });
                        }.bind(this));

                        if (this.config.collectionCallback){
                            this.config.collectionCallback();
                        }
                    }.bind(this)
                });
            }.bind(this));
        }.bind(this));
    },

    activeTab: function(tab, content){
        if (!tab || !content) return;

        this.container.select('.widget-tabs .active').invoke('removeClassName', 'active');
        tab.up().addClassName('active');

        if (!content.has_content){
            var prev = this.container.down('.tab-pane.active');
            if (prev){
                content.setStyle({
                    height: prev.getDimensions().height + 'px'
                });

                prev.removeClassName('active');

                var spinner = new Element('div', {'class': 'widget-spinner'});
                spinner.setStyle({width: '100%', height: '100%'});

                if (this.config.spinnerClass){
                    spinner.addClassName(this.config.spinnerClass);
                }

                if (this.config.spinnerImg){
                    spinner.setStyle({position: 'relative'});
                    var img = new Element('img', {src: this.config.spinnerImg});
                    Event.observe(img, 'load', function(){
                        img.setStyle({
                            position: 'absolute',
                            top: '50%',
                            left: '50%',
                            marginLeft: (-1 * img.width/2) + 'px',
                            marginTop: (-1 * img.height/2) + 'px'
                        });
                        spinner.insert(img);
                    });
                }

                content.insert(spinner);
            }
        }else{
            this.container.select('.tab-pane.active').invoke('removeClassName', 'active');
        }

        content.addClassName('active');
    },

    initCarousel: function(callback){
        if (!window['jQuery']) return;
        if (!this.container) return;
        if (!this.config.carousel) return;
        if (!this.config.carousel.enable) return;

        if (callback){
            this.config.carousel.afterInit = callback;
        }

        if (!jQuery.fn.owlCarousel){
            jQuery.getScript(this.config.carousel.engineSrc, function(){
                this.initCarouselElement(this.config.carousel);
            }.bind(this));
        }else{
            this.initCarouselElement(this.config.carousel);
        }
    },

    initCarouselElement: function(config){
        if (this.config.carouselConfig){
            config = Object.extend(config, this.config.carouselConfig);
        }

        this.container.select('.owl-carousel').each(function(div){
            jQuery(div).owlCarousel(config);
        });
    },

    initBackground: function(){
        if (!this.config.parallax) return;
        if (!this.config.kenburns) return;

        if (this.config.parallax.enable) this.initParallax();
        if (this.config.kenburns.enable) this.initKenburns();
    },

    initKenburns: function(){
        if (!window['jQuery']) return;

        if (!jQuery.fn.Kenburns){
            jQuery.getScript(this.config.kenburns.engineSrc, function(){
                this.initKenburnsElement(this.config.kenburns);
            }.bind(this));
        }else{
            this.initKenburnsElement(this.config.kenburns);
        }
    },

    initKenburnsElement: function(config){
        this.initOverlay();

        this.container.setStyle({
            position: 'relative',
            overflow: 'hidden'
        });

        var kbWrapper = new Element('div', {'class': 'widget-kenburns'});
        kbWrapper.setStyle({
            position: 'absolute',
            width: '100%',
            height: '100%',
            zIndex: 0
        });
        this.container.insert({top: kbWrapper});

        jQuery(kbWrapper).Kenburns({
            images: config.images,
            scale: 1,
            duration: 6000,
            fadeSpeed: 800
        });
    },

    initOverlay: function(){
        if (this.config.parallax.overlay == 'none') return;

        this.container.insert({
            top: new Element('div', {
                'class': 'widget-overlay'
            }).setStyle({
                position: 'absolute',
                left: 0,
                top: 0,
                width: '100%',
                height: '100%',
                backgroundImage: 'url(' + magenThemes.url + this.config.parallax.overlay + ')',
                backgroundRepeat: 'repeat'
            })
        });
    },

    initParallax: function(){
        if (!this.config.parallax) return;
        if (!this.config.parallax.enable) return;

        this.initOverlay();

        switch (this.config.parallax.type){
            case 'video':
                this.initBackgoundVideo(this.config.parallax.video || {});
                break;
            case 'image':
                this.initBackgroundImage(this.config.parallax.image || {});
                break;
            case 'file':
                this.initBackgroundVideoFile(this.config.parallax.file || {});
                break;
        }
    },

    initBackgroundImage: function(config){
        if (!config.src) return;

        var img = new Element('img', {
            src: config.src
        }).setStyle({
            position: 'absolute',
            width: '100%',
            top: 0,
            left: 0,
            zIndex: 0
        });

        this.container.setStyle({
            position: 'relative',
            overflow: 'hidden'
        }).insert({top: img});

        Event.observe(img, 'load', function(){
            this.bindParallaxEvent(img);
        }.bind(this));
    },

    isElementInViewport: function(percent){
        percent = percent || 1;

        var rect = this.container.getBoundingClientRect(),
            window_height = window.innerHeight || document.documentElement.clientHeight;

        if (rect.top > 0) return rect.top < window_height - rect.height * percent;
        else return rect.bottom > rect.height * percent;
    },

    isElementPartialInViewport: function(){
        var rect = this.container.getBoundingClientRect();

        return (rect.bottom > 0 && rect.bottom <= rect.height) ||
            (rect.top > 0 && rect.top <= (window.innerHeight || document.documentElement.clientHeight));
    },

    initBackgroundVideoFile: function(config){
        var video = new Element('video', {
            preload: 'preload',
            loop: 'loop',
            autoplay: 'autoplay',
            muted: !config.volume,
            poster: config.poster
        });

        video.setStyle({
            width: '100%',
            height: 'auto',
            position: 'absolute',
            zIndex: 0,
            top: '0px',
            left: '-1px'
        });

        config['mp4'] && video.insert(new Element('source', {src: config['mp4'], type: 'video/mp4'}));
        config['webm'] && video.insert(new Element('source', {src: config['webm'], type: 'video/webm'}));

        this.container.setStyle({
            position: 'relative',
            overflow: 'hidden'
        }).insert({top: video});

        this.bindParallaxEvent(video);
    },

    onParallaxEvent: function(elm){
        if (this.isElementPartialInViewport()){
            var windowHeight = window.innerHeight || document.documentElement.clientHeight,
                containerRect = this.container.getBoundingClientRect(),
                elementDimensions = elm.getDimensions(),
                maxWindowScroll = windowHeight + containerRect.height,
                maxElementScroll = elementDimensions.height - containerRect.height,
                scrollRatio = maxElementScroll / maxWindowScroll,
                amount = Math.floor((containerRect.top - windowHeight) * scrollRatio);

            if (this.support3d){
                elm.setStyle({
                    '-webkit-transform': 'translate3d(0px,'+ amount + 'px,0px)',
                    '-moz-transform': 'translate3d(0px,'+ amount + 'px,0px)',
                    '-ms-transform': 'translate3d(0px,'+ amount + 'px,0px)',
                    '-o-transform': 'translate3d(0px,'+ amount + 'px,0px)',
                    'transform': 'translate3d(0px,'+ amount + 'px,0px)'
                });
            }else{
                elm.setStyle({
                    marginTop: amount + 'px'
                });
            }
        }
    },

    bindParallaxEvent: function(elm){
        'DOMContentLoaded|load|resize|scroll|video:load'.split('|').each(function(event){
            Event.observe(window, event, function(){
                this.onParallaxEvent(elm);
            }.bind(this));
        }.bind(this));
    },

    initBackgoundVideo: function(config){
        if (config.src.indexOf('youtube.com') > 0){
            this.initBackgoundVideoYoutube(config);
        }else if (config.src.indexOf('vimeo.com') > 0){
            this.initBackgoundVideoVimeo(config);
        }

        Event.observe(window, 'resize', function(){
            var d = this.calculateVideoSize(this.container),
                iframe = parent.down('iframe');

            if (iframe){
                iframe.setStyle({
                    height: d.height + 'px',
                    top: (-1 * d.top) + 'px'
                });
            }
        }.bind(this));
    },

    getVideoIdVimeo: function(url){
        return url ? url.replace(/[^0-9]+/g, '') : null;
    },

    getVideoIdYoutube: function(url){
        var videoStr = url.split('v=')[1];
        return videoStr ? (videoStr.indexOf('&') > 0 ? videoStr.substring(0, videoStr.indexOf('&')) : videoStr) : null;
    },

    onYoutubePlayerReady: function(config){
        if (!this.player || !this.player.mute){
            return setTimeout(function(){
                this.onYoutubePlayerReady(config);
            }.bind(this), 500);
        }

        if (!config.volume){
            this.player.mute();
        }

        this.bindParallaxEvent(this.player.a);
        Event.fire(window, 'video:load');

        return this.player;
    },

    onYoutubeAPIReady: function(videoId, config){
        if (!window['YT']['Player']){
            return setTimeout(function(){
                this.onYoutubeAPIReady(videoId, config);
            }.bind(this), 500);
        }

        var d = this.calculateVideoSize(this.container),
            playerId = this.id + '-player',
            playerDiv = new Element('div', {id: playerId}),
            muteBtn = this.addVideoMuteButton(this.container, !config.volume);

        Event.observe(muteBtn, 'click', function(ev){
            if (!this.player) return;

            var btn = Event.element(ev);

            if (this.player.isMuted()){
                this.player.unMute();
                btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_ON);
                btn.removeClassName(this.VIDEO_MUTE_BTN_CLASS_OFF);
            }else{
                btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_OFF);
                btn.removeClassName(this.VIDEO_MUTE_BTN_CLASS_ON);
                this.player.mute();
            }
        }.bind(this));

        playerDiv.setStyle({
            position: 'absolute',
            zIndex: 0,
            top: 0
        });

        this.container.setStyle({
            position: 'relative',
            overflow: 'hidden'
        });

        var overlay = $(this.id + '-overlay');
        if (overlay){
            overlay.insert({
                before: playerDiv
            });
        }else{
            this.container.insert({
                top: playerDiv
            });
        }

        return this.player = new YT.Player(playerId, {
            height: d.height,
            width: '100%',
            videoId: videoId,
            playerVars: {
                autoplay: 1,
                autohide: 1,
                controls: 0,
                loop: 1,
                showinfo: 1,
                wmode: 'transparent',
                html5: 1,
                rel: 0,
                playlist: videoId
            },
            events: {
                'onReady': this.onYoutubePlayerReady.call(this, config)
            }
        });
    },

    initBackgoundVideoYoutube: function(config){
        var videoId = this.getVideoIdYoutube(config.src);
        if (!videoId) return;

        if (!window['jQuery']) return;

        if (!window['YT']){
            jQuery.getScript('//www.youtube.com/iframe_api', function(){
                this.onYoutubeAPIReady(videoId, config);
            }.bind(this));
        }else{
            this.onYoutubeAPIReady(videoId, config);
        }
    },

    initBackgoundVideoVimeo: function(config){
        var videoId = this.getVideoIdVimeo(config.src);
        if (!videoId) return;

        var videoSrc = '//player.vimeo.com/video/' + videoId + '?title=0&byline=0&portrait=0&autoplay=1&loop=1&api=1',
            muteBtn = this.addVideoMuteButton(this.container, !config.volume),
            d = this.calculateVideoSize(this.container),
            iframe = new Element('iframe', {
                id: this.id + '-player',
                src: videoSrc,
                frameborder: 0,
                allowfullscreen: 1,
                height: d.height + 'px',
                width: '100%'
            }).setStyle({
                position: 'absolute',
                left: 0,
                zIndex: 0,
                top: 0
            });

        this.container.setStyle({
            position: 'relative',
            overflow: 'hidden'
        });

        var overlay = $(this.id + '-overlay');
        if (overlay){
            overlay.insert({
                before: iframe
            });
        }else{
            this.container.insert({
                top: iframe
            });
        }

        this.player = iframe;

        Event.observe(muteBtn, 'click', function(ev){
            if (!this.player) return;

            var btn = Event.element(ev),
                value;

            if (this.player.muted){
                value = 0;
                this.player.muted = 1;
                btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_OFF);
                btn.removeClassName(this.VIDEO_MUTE_BTN_CLASS_ON);
            }else{
                value = 1;
                this.player.muted = 0;
                btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_ON);
                btn.removeClassName(this.VIDEO_MUTE_BTN_CLASS_OFF);
            }

            this.postmessage(this.player, 'setVolume', value);
        }.bind(this));

        Event.observe(window, 'message', function(e){
            if (!this.player) return;

            var data = JSON.parse(e.data);

            switch (data.event){
                case 'ready':
                    this.postmessage(this.player, 'addEventListener', 'play');
                    break;
                case 'play':
                    if (!config.volume){
                        this.postmessage(this.player, 'setVolume', 0);
                        this.player.muted = 1;
                    }else this.player.muted = 0;
                    Event.fire(window, 'video:load');
                    break;
            }
        }.bind(this));

        this.bindParallaxEvent(iframe);
    },

    calculateVideoSize: function(container){
        var $container = $(container),
            dimensions = $container.getDimensions(),
            height = parseInt(dimensions.width * this.VIDEO_HW_RATIO),
            top = height > dimensions.height ? parseInt((height - dimensions.height)/2) : 0;

        return {height:height, top:top};
    },

    addVideoMuteButton: function(container, muted){
        var $container = $(container);
        if (!$container) return null;

        var btn = new Element('i', {
            'class': this.VIDEO_MUTE_BTN_CLASS,
            href: 'javascript:void(0)'
        });

        if (muted) btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_OFF);
        else btn.addClassName(this.VIDEO_MUTE_BTN_CLASS_ON);

        $container.insert({bottom: btn});

        return btn;
    },

    postmessage: function(player, method, value){
        var data = {method: method};
        if (value != null) data.value = value;
        player.contentWindow.postMessage(JSON.stringify(data), player.src.split('?')[0]);
    }
};
