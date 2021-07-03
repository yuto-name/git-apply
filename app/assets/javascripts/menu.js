var menu = document.getElementById("menu");
var back = document.getElementById("back");
var nav = document.getElementById("nav");


menu.addEventListener("click", () => {
 if (nav.className === "navi") {
     nav.classList.add("open-menu");
     back.classList.add("open");
     menu.textContent = "閉じる";
 }else {nav.classList.remove("open-menu");
     back.classList.remove("open");
        menu.textContent = "menu";
       }
});
 
back.addEventListener("click", () => {
    back.classList.remove("open");
    nav.classList.remove("open-menu");
    menu.textContent = "menu";
});