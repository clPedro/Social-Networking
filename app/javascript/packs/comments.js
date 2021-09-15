import $ from "jquery";

document.addEventListener("turbolinks:load", function () {

  $('.comments-toggle').click(function () {
    //console.log($(this).closest(".card")) usado pra ver o log
    $(this).closest(".card").next(".comments-list").toggle();
  })
});
