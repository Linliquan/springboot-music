(function (window) {
    function Progress($progressBar,$progressLine,$progressDot) {
        return new Progress.prototype.init($progressBar,$progressLine,$progressDot);

    }
    Progress.prototype = {
        constructor:Progress,
        init:function ($progressBar,$progressLine,$progressDot) {
            this.$progressBar = $progressBar;
            this.$progressLine = $progressLine;
            this.$progressDot = $progressDot;
        },
        progressClick:function (callBack) {
            var $this = this;
            this.$progressBar.click(function () {
                var normalLeft = $(this).offset().left;
                var eventLeft = event.pageX;
                $this.$progressLine.css("width",eventLeft - normalLeft)
                $this.$progressDot.css("left",eventLeft - normalLeft)
                var value = (eventLeft - normalLeft) / $(this).width();
                callBack(value);
            })
        },
        progressMove:function (callBack) {
            var $this = this;
            this.$progressBar.mousedown(function () {
                var normalLeft = $(this).offset().left;
                $(document).mousemove(function () {

                    var eventLeft = event.pageX;
                    $this.$progressLine.css("width", eventLeft - normalLeft);
                    $this.$progressDot.css("left", eventLeft - normalLeft);
                    var value = (eventLeft - normalLeft) / $(this).width();
                    callBack(value);
                });
            });
            $(document).mouseup(function () {
                $(document).off("mousemove");
            });
        }

    },
        Progress.prototype.init.prototype = Progress.prototype;
    window.Progress = Progress;
})(window);