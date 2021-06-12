$(window).on("load", function(){
    $("li").on("click", function(){
        $("li").removeClass("selected");
        $(this).addClass("selected");
        $(".contents-menu div").hide();
        $("." + this.id).show();
    });
});