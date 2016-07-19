//******** システム共通jsの読み込み ********
//=require jquery
//=require jquery-migrate
//=require jquery-ui
//=require bootstrap
//=require jquery_ujs
//=require jquery-validation
//=require jquery-validation/additional-methods

jQuery(document).ready(function() {
    CreateValidation.init();
    // CreateValidation.init();
});

var CreateValidation = function () {
    var handleValidation = function() {
        var form = $('.new_user');
        var error = $('.alert-danger', form);
        var success = $('.alert-success', form);

        //半角アルファベット（大文字･小文字）もしくは数字のみ
        jQuery.validator.addMethod("alphanum", function(value, element) {
          return this.optional(element) || /^([0-9A-Za-z_.-]+)$/.test(value);
          }, "半角英数字を入力してください"
        );


        form.validate({
            errorElement: 'span',
            errorClass: 'has-error help-block help-block-error',
            focusInvalid: false,
            ignore: "",
            rules: {
                "user[name]": {
                    required: true
                },
                "user[login]": {
                    required: true,
                    alphanum:  true,
                    maxlength: 15,
                    minlength: 6
                },
                "user[password]": {
                    required: true,
                    alphanum:  true,
                    maxlength: 15,
                    minlength: 6,
                },
                "user[password_confirmation]": {
                    required: true,
                    equalTo:  '#user_password',
                    alphanum:  true
                },
                "user[height]": {
                    required: true,
                    number: true
                },
                "user[weight]": {
                    required: true,
                    number: true

                },

            },

            messages:{
                "user[name]": {
                    required: jQuery.validator.format("名前を入力してください。")
                },
                "user[login]": {
                    required: jQuery.validator.format("ログインIDに入力してください。"),
                    maxlength: jQuery.validator.format("15文字以下を入力してください"),
                    minlength: jQuery.validator.format("6文字以上を入力してください"),
                    alphanum: jQuery.validator.format("半角英数字を入力してください"),
                },
                "user[password]": {
                    required: jQuery.validator.format("パスワードを入力してください。"),
                    maxlength: jQuery.validator.format("15文字以下を入力してください"),
                    minlength: jQuery.validator.format("6文字以上を入力してください"),
                    alphanum: jQuery.validator.format("半角英数字を入力してください"),
                },

                "user[password_confirmation]": {
                    required: jQuery.validator.format("パスワード(確認)を入力してください。"),
                    equalTo: jQuery.validator.format("パスワードと同じに入力してください"),
                },
                "user[height]": {
                    required: jQuery.validator.format("身長を入力してください。"),
                    number: jQuery.validator.format("半角数字を入力してください"),
                },

                "user[weight]": {
                    required: jQuery.validator.format("体重を入力してください。"),
                    number: jQuery.validator.format("半角数字を入力してください"),
                },
            },

            invalidHandler: function (event, validator) {
                success.hide();
                error.show();
                // Metronic.scrollTo(error, -200);
            },

            highlight: function (element) {
                $(element)
                    .closest('.form-group').removeClass('has-success').addClass('has-error');
                $(element).addClass('edited');
            },

            unhighlight: function (element) {
                $(element)
                    .closest('.form-group').removeClass('has-error');
                $(element).removeClass('edited');
            },

            success: function (label) {
                label
                    .closest('.form-group').removeClass('has-error').addClass('has-success');
            },
        });

    }


    return {
        init: function () {
            handleValidation();
        }
    };
}();
