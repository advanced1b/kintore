import $ from "jquery";

let list = $('.nav__item')
$.each(list,function() {
  $(this).on("click", function() {
    console.log("click")
  })
})
