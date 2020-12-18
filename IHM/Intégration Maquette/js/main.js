"use strict";

// NAV DEROULANT

var listeLogiciels=document.getElementsByClassName("softwares");
var headings=document.getElementsByClassName("heading");

for (let i=0;i<headings.length;i++) {
    headings[i].addEventListener("click", function () {
        listeLogiciels[i].classList.toggle("open");
        headings[i].classList.toggle("open");
    })
}

// MODE NUIT

var theme=document.getElementById("switchMode");

theme.addEventListener("click", function () {
    document.getElementsByTagName("body")[0].classList.toggle("night");
})