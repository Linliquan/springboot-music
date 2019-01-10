$(function () {
    $(".content_list").mCustomScrollbar();
    var $audio = $("audio");

    var $progressBar = $(".music_progress_bar");
    var $progressLine = $(".music_progress_line");
    var $progressDot = $(".music_progress_dot");
    var progress = Progress($progressBar,$progressLine,$progressDot);
    progress.progressClick(function (value) {
        currentTime = duration * value
    });
    progress.progressMove(function (value) {
        currentTime = duration * value
    });


//点击切换播放暂停图标
    $(".list_check").click(function () {
        $(this).toggleClass("list_checked");
    });
    $(".music_play").bind("click",function () {
        $(this).toggleClass("music_play2");
    });

    audio.addEventListener('timeupdate', function () {//进度条同步
        if (!isNaN(audio.duration)) {
            var duration = audio.duration;
            var currentTime = audio.currentTime;
            var timeStr = formatDate(currentTime, duration);
            $(".music_progress_time").text(timeStr);
            var value = currentTime / duration *100;
            $('.music_progress_line').css({
                "width":value+'%'
            });
            $('.music_progress_dot').css("left",value+'%');

        }



    }, false);

    function formatDate(currentTime, duration) {//时间同步
        var endMin = parseInt(duration / 60);
        var endSec = parseInt(duration % 60);
        if (endMin < 10) {
            endMin = '0' + endMin;
        }
        if (endSec < 10) {
            endSec = '0' + endSec;
        }
        var startMin = parseInt(currentTime / 60);
        var startSec = parseInt(currentTime % 60);
        if (startMin < 10) {
            startMin = '0' + startMin;
        }
        if (startSec < 10) {
            startSec = '0' + startSec;
        }
        return startMin + ":" + startSec + " / " + endMin + ":" + endSec;
    }
    // function timeUpdate(currentTime, duration) {
    //
    // }

    //下方为调用关键代码
    $("#audio").attr({'src':$.cookie("song_link")});//将cookie存入的播放路径调用出来传给播放标签
    $(".music_progress_name").text($.cookie("song_name")+" / "+$.cookie("song_singer"));//将cookie存入的歌名歌手调用出来替换原有文本
    $(".songName").text($.cookie("song_name"));//将cookie存入的歌名调用出来替换原有文本
    $(".songSinger").text($.cookie("song_singer"));//将cookie存入的歌手调用出来替换原有文本
    $("title").html($.cookie("song_name")+" / "+$.cookie("song_singer"));//将cookie存入的歌名歌手调用出来替换网页标题
    $(".song_img").attr({'src':$.cookie("song_photo")});//替换歌曲图片和播放界面的背景图片

    //实现播放暂停功能
    var onOff=false;
    first("#audio").play();
    first(".music_play")[0].onclick = function(){
        if (onOff) {
            first("#audio").play();
            onOff=false;
        }
        else{
            first("#audio").pause();
            onOff=true;
        }
    }

    function first(selecoter){
        return selecoter.substring(0,1)=="."?
            document.getElementsByClassName(selecoter.substring(1)):
            document.getElementById(selecoter.substring(1));
    }


});