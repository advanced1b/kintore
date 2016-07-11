var UIToastr = function () {
    return {
      init: function () {
        var i = -1,
        toastCount = 0,
        $toastlast

        if ($('div').hasClass('notice')){
          var title = $('.notice').data("status");
          var msg   = $('.notice').data("msg") || '';
          var shortCutFunction = $(".notice").data("status");
          var toastIndex = toastCount++;
          toastr.options = {
            closeButton: true,
            debug: false,
            positionClass: "toast-top-right",
            onclick: null,
            showDuration: "1000",
            hideDuration: "1000",
            timeOut: "5000",
            extendedTimeOut: "1000",
            showEasing: "swing",
            hideEasing: "linear",
            showMethod: "fadeIn",
            hideMethod: "fadeOut"
          };

          if (title == "success") {
            title = "成功"
          } else {
            title = "失敗"
          }

          var $toast = toastr[shortCutFunction](msg);
          // var $toast = toastr[shortCutFunction](msg+ 'しました。', title);
          $toastlast = $toast;

          $('#toastr').removeClass('notice');
        }
      }
    };
}();
