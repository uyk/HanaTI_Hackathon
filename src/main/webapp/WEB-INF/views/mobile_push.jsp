<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<!DOCTYPE HTML>
<html>
    <head>
    </head>
    <body background = "http://schoolsharing.co.kr/donghyuk/img/iphone-background.jpg" style = "margin: 0; background-repeat: no-repeat; background-size: 100% 100%;">
        <div class = "timer"></div>
        <div class = "calendar"></div>
        <div class = 'popup'>
            <div class = 'popup-close-div'>
                <img class = 'popup-close-button' src = "http://schoolsharing.co.kr/donghyuk/img/close-white.png" style="position: relative; height: 80%;">
            </div>
            <div class = 'popup-receipt'>
                <img src = "http://schoolsharing.co.kr/donghyuk/img/receipt.jpeg" style="position: relative; width: 100%;">
            </div>
        </div>
        <div class = 'popup2'>
            <div class = 'popup2-title'>
                &nbsp;하나카드
            </div>
            <div class = 'popup2-content'>
                &nbsp;STARBUCKS<br>
                &nbsp;아메리카노<br>
                &nbsp;4,100 원
            </div>
            <div class = 'popup2-button-cancel'>
                취소
            </div>
            <div class = 'popup2-button-ok'>
                구매
            </div>
        </div>
    </body>
</html>

<script>

const week = ['일', '월', '화', '수', '목', '금', '토'];

$( document ).ready(function(){
		window.resizeTo('375','667'); // 웹페이지의 크기를 고정
    $('body').width($(window).width());
    $('body').height($(window).height());
    $('.popup').hide();
    $('.popup2').hide();
    activateTimer();
    setTimeout(function() {
        $('.popup2').show();
    }, 3000);
});

function activateTimer () {
    setInterval(function () {
        var Now = new Date();
        var Month = Now.getMonth() + 1;
        var DayOfMonth = Now.getDate();
        var DayOfWeek = Now.getDay();
        var Hour1 = Now.getHours();
        var Minute1 = Now.getMinutes();

        if ( Hour1 < 10)
        {
            Hour2 = Hour1;
            Hour1 = 0;
        }
        else
        {
            Hour2 = Hour1 % 10;
            Hour1 = Math.floor(Hour1 / 10);
        }

        if (parseInt(Minute1) < 10)
        {
            Minute2 = Minute1;
            Minute1 = 0;
        }
        else
        {
            Minute2 = Minute1 % 10;
            Minute1 = Math.floor(Minute1 / 10);
        }

        $(".timer").html(Hour1 + '' + Hour2 + ':' + Minute1 + '' + Minute2);
        $(".calendar").html(Month + '월  ' + DayOfMonth + '일  ' + week[DayOfWeek] + '요일' );

    },1000);
}
$('.popup2-button-cancel').click(function () {
    $('.popup2').hide();
});
$('.popup2-button-ok').click(function () {
    $('.popup2').hide();
    $('.popup').show();
});
$('.popup-close-button').click(function () {
    $('.popup').hide();
});
</script>

<style>
body {
    position: relative;
    float: left;
    min-width: 100%;
    min-height: 100%;
    margin : 0;
    overflow-x : hidden;
    overflow-y : hidden;
}
.timer {
    position: relative;
    float: left;
    padding-top: 8vh;
    width: 100%;
    text-align: center;
    font-size: 20vw;
}
.calendar {
    position: relative;
    float: left;
    width: 100%;
    text-align: center;
    font-size: 5vw;
}
.popup {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}
.popup-close-div{
    position: relative;
    float: left;
    width: 80%;
    height: 5%;
    margin-left: 10%;
    margin-top: 10%;
    text-align: right;
}
.popup-receipt{
    position: relative;
    float: left;
    width: 80%;
    height: 80%;
    margin-left: 10%;
    background-color: white;
    overflow-x : hidden;
    overflow-y : auto;
}
.popup2 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}
.popup2-title{
    position: relative;
    float: left;
    width: 80%;
    height: 10vw;
    line-height: 10vw;
    margin-top: 30%;
    margin-left: 10%;
    background-color: #298478;
    color: white;
    font-size: 5vw;
}
.popup2-content{
    position: relative;
    float: left;
    width: 80%;
    margin-left: 10%;
    padding: 3vw 0 3vw 0;
    background-color: white;
    color: black;
    font-size: 4vw;
    border-bottom: solid 1px black;
}
.popup2-button-cancel {
    position: relative;
    float: left;
    width: 40%;
    margin-left: 10%;
    padding: 2vw 0 2vw 0;
    background-color: white;
    color: black;
    font-size: 4vw;
    text-align: center;
}
.popup2-button-ok {
    position: relative;
    float: left;
    width: 40%;
    padding: 2vw 0 2vw 0;
    background-color: #298478;
    color: white;
    font-size: 4vw;
    text-align: center;
}
</style>