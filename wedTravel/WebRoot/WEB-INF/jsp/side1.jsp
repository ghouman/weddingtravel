<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>side</title>
    <LINK media=all href="css/scroll1.css" type=text/css rel=stylesheet>
    <SCRIPT type=text/javascript>

        jQuery(function () {
            initSide();
        });
        function initSide() {

            if (!$('#slidePic')[0])
                return;
            var i = 0, p = $('#slidePic ul'), pList = $('#slidePic ul li'), len = pList.length;
            var elePrev = $('#prev'), eleNext = $('#next');
            //var firstClick = false;
            var w = 52, num = 4;
            p.css('width', w * len);
            if (len <= num)
                eleNext.addClass('gray');
            function prev() {
                if (elePrev.hasClass('gray')) {
                    //alert('已经是第一张了');
                    return;
                }
                p.animate({
                    marginTop: -(--i) * w
                }, 500);
                if (i < len - num) {
                    eleNext.removeClass('gray');
                }
                if (i == 0) {
                    elePrev.addClass('gray');
                }
            }

            function next() {
                if (eleNext.hasClass('gray')) {
                    //alert('已经是最后一张了');
                    return;
                }
                //p.css('margin-left',-(++i) * w);
                p.animate({
                    marginTop: -(++i) * w
                }, 500);
                if (i != 0) {
                    elePrev.removeClass('gray');
                }
                if (i == len - num) {
                    eleNext.addClass('gray');
                }
            }

            elePrev.bind('click', prev);
            eleNext.bind('click', next);
            pList.each(function (n, v) {
                $(this).click(function () {
                    if (n - i == 2) {
                        next();
                    }
                    if (n - i == 0) {
                        prev()
                    }
                    //$('#slidePic ul li.cur').removeClass('cur');
                    //$(this).addClass('cur');
                    show(n);
                }).mouseover(function () {
                            $(this).addClass('hover');
                        }).mouseout(function () {
                            $(this).removeClass('hover');
                        })
            });
            function show(i) {
                var ad = areaDailyList[i];
                var t = ad.date.split('-');
                $('#dailyTitle').html(ad.title);
                $('#dailyImage').attr('src', ad.image);
                $('#dailyImageFrom').html('' + ad.imageFrom + '');
                $('#dailyContent').html(ad.content);
                //$('#dailyDate').html('<em class="ym">' + t[0] + '.' + t[1] + '</em><em class="day">' + t[2] + '</em>');
                //var shareRRUrl = encodeURIComponent('http://www.nuomi.com/share365/'+ad.id);
                //var shareUrl = encodeURIComponent('http://www.nuomi.com/#reading');
                //var shareTitle = encodeURIComponent(ad.title + 'http://www.163css.com');
                var shareContent = encodeURIComponent(ad.content.substring(0, 100) + '...');

            }
        }
    </SCRIPT>
</head>

<body marginwidth="0" marginheight="0">
<div id="container" style="">
    <DIV class="slide-pic" id="slidePic">
        <A class="gray" id="prev" hideFocus href="javascript:;">前移</A>

        <DIV class="pic-container">
            <UL>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
                <LI title="这家DUSIT酒店属于豪华5*国际酒店的级别了，低调奢华。酒店跟悦春一个区域，同属于LAGUNA酒店区域。"><img src="images/01.jpg"/></LI>
            </UL>
        </DIV>
        <A id="next" hideFocus href="javascript:;">后移</A>
    </DIV>
    <p class="buoy_price"><a href="#">￥100000</a></p>

    <p>起</p>
</div>
</body>
</html>
