// 以下 page level plugin
//=require jquery-validation
//=require jquery-validation/additional-methods
//=require select2
//=require plugins/jquery.backstretch
// 以下 page level scripts
//=require global/metronic
//=require base/layout
//=require base/demo

//=require login/login

jQuery(document).ready(function() {
  Metronic.init();
  Layout.init();
  Demo.init();
  Login.init();
  UIToastr.init();
});
