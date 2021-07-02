
$(window).on("load", function(){
    $("#nav").on("click", function(){
      $(".nav").removeClass("nav");
      $("#nav div").addClass("nav");
      $(this).show();
      $(".header-contents").hide();
      $(".header-contents").show();
    });
});