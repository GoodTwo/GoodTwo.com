var currentHomeSlideIndex = 0;
var navItemCount = 0;
var slideshowTimer = {};

function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            if (oldonload) {
                oldonload();
            }
            func();
        }
    }
}

function getIEVersionNumber() {
    var ua = navigator.userAgent;
    var MSIEOffset = ua.indexOf("MSIE ");

    if (MSIEOffset == -1) {
        return 0;
    } else {
        return parseFloat(ua.substring(MSIEOffset + 5, ua.indexOf(";", MSIEOffset)));
    }
}

var isIE8 = getIEVersionNumber() >= 8;

addLoadEvent(function () {

    setFooter();

    $("#nav a").mouseover(function () {
        if (!isIE8) $(this).parent().find(".navGlow").fadeIn(200);
        else $(this).parent().find(".navGlow").show(0);

    });

    $("#nav a").mouseout(function () {
        if (!isIE8) $(this).parent().find(".navGlow").fadeOut(400);
        else $(this).parent().find(".navGlow").hide(0);
    });


    var theDiv = $("#slideshowNav");
    var totalWidth = theDiv.innerWidth();
    var centerSSNav = Math.round(960 / 2 - totalWidth / 2);
    $("#slideshowNav").css("left", centerSSNav + "px");

    slideshowTimer = $.timer(9500, function () { nextSlide(); });

    $("#slideshowNavContent .navItem").each(function () {
        $(this).addClass("navItem" + navItemCount);
        $(this).find("a").html(navItemCount);
        if (navItemCount == 0) {
            $(this).addClass("active");
        }
        navItemCount++;
    });

    var slideItemCount = 0;
    $("#featuredSlideShow .slideItem").each(function () {
        $(this).addClass("slideItem" + slideItemCount);
        if (slideItemCount == 0) {
            $(this).addClass("activeSlide");
            $(this).fadeIn(1000);
        }

        slideItemCount++;
    });

    $("#slideshowNavContent .navItem a").click(function () {
        $.clearTimer(slideshowTimer);
        slideshowTimer = $.timer(9500, function () { nextSlide(); });
        currentHomeSlideIndex = $(this).html();
        changeSlideItem();
        return false;
    });

    $("#slideshowNavContent .previous").click(function () {
        $.clearTimer(slideshowTimer);
        slideshowTimer = $.timer(9500, function () { nextSlide(); });
        currentHomeSlideIndex--;
        if (currentHomeSlideIndex < 0) currentHomeSlideIndex = navItemCount - 1;
        changeSlideItem();
        return false;
    });

    $("#slideshowNavContent .next").click(function () {
        nextSlide();
        return false;
    });


    fixallpngs();
});

function nextSlide() {
    $.clearTimer(slideshowTimer);
    slideshowTimer = $.timer(9500, function () { nextSlide(); });
    currentHomeSlideIndex++;
    if (currentHomeSlideIndex > navItemCount - 1) currentHomeSlideIndex = 0;
    changeSlideItem();
}

function fixallpngs() { DD_belatedPNG.fix('ul, li, input, body, h1, h2, a, img, h3, span, div'); }

function changeSlideItem() {
    $("#featuredSlideShow .activeSlide").fadeOut(500, function () {
        $("#featuredSlideShow .activeSlide").removeClass("activeSlide");
        $("#featuredSlideShow .slideItem" + currentHomeSlideIndex).addClass("activeSlide");
        $("#featuredSlideShow .slideItem" + currentHomeSlideIndex).fadeIn(500);
    });
    //	alert($("#slideshowNavContent .active"));
    $("#slideshowNavContent .active").removeClass("active");
    $("#slideshowNavContent .navItem" + currentHomeSlideIndex).addClass("active");
}



function getWindowHeight() {
    var windowHeight = 0;
    if (typeof (window.innerHeight) == 'number') {
        windowHeight = window.innerHeight;
    }
    else {
        if (document.documentElement && document.documentElement.clientHeight) {
            windowHeight = document.documentElement.clientHeight;
        }
        else {
            if (document.body && document.body.clientHeight) {
                windowHeight = document.body.clientHeight;
            }
        }
    }
    return windowHeight;
}
function setFooter() {
    if (document.getElementById) {
        var windowHeight = getWindowHeight();
        if (windowHeight > 0) {
            var contentHeight = document.getElementById('wrapper').offsetHeight;
            var footerElement = document.getElementById('footerWrapper');
            var footerHeight = footerElement.offsetHeight;
            if (windowHeight - (contentHeight + footerHeight) >= 0) {
                footerElement.style.position = 'relative';
                footerElement.style.top = (windowHeight - (contentHeight + footerHeight)) + 'px';
            }
            else {
                footerElement.style.position = 'static';
            }
        }
    }
}
window.onresize = function () {
    setFooter();
}
















