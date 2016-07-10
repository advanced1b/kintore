// 以下 page level plugin
//=require jquery-validation
//=require jquery-validation/additional-methods
//=require plugins/jquery.backstretch
// 以下 page level scripts
//=require global/metronic
//=require base/layout
//=require base/demo
//=require login/login
//=require custom/ui-toastr

jQuery(document).ready(function() {
  Metronic.init();
  Layout.init();
  Demo.init();
  Login.init();
  UIToastr.init();
});
