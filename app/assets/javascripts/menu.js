$(window).on("load",function(){
$("button").on("click",function(){
      $("#nav ul li").show();
      
      $(this).on("click",function(){
      $("#nav ul li").hide(); 
   });
   });
});