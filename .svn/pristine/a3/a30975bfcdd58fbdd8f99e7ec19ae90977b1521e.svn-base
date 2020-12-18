"use strict";

var DOM_softwareList=document.getElementById("modules");
addClickListener();
addLinks();


function addClickListener() {

    // AGGRANDISSEMENT MODULE
    var modules=document.getElementsByClassName("module-click");

    for (let i=0;i<modules.length;i++) {
        modules[i].addEventListener("click", function () {
            modules[i].classList.toggle("openModule");
            modules[i].classList.toggle("clickable");
        });
    }

    // AFFICHAGE LOGICEL DYNAMIQUE (impossible d'avoir 2 logiciels ouverts en même temps)

    var logiciels=document.querySelectorAll(".software");

    logiciels.forEach(logiciel => {
        logiciel.addEventListener("click",(e)=>{
            e.stopPropagation();
            logiciel.classList.add("showSoftware");

            for (let i=0;i<logiciels.length;i++) {
                if (logiciels[i]!==e.target.parentNode.parentNode) {
                    logiciels[i].classList.remove("showSoftware");
                }
            }
        });
    });

    // for (let i=0;i<logiciels.length;i++) {
    //     logiciels[i].addEventListener('click',function(e) {
    //         e.stopPropagation();
    //         logiciels[i].classList.toggle("showSoftware");
    //         logiciels[i].classList.toggle("clickable");
    //     })
    // } 

    // AJOUTER FORMATION
    // var btnAddSector=document.getElementById("addSector");
    // var cancelSector=document.getElementById("cancelSectorForm");

    // btnAddSector.addEventListener("click", ()=>{
    //     btnAddSector.classList.add("openAddSector");
    // });

    // cancelSector.addEventListener("click", (e)=>{
    //     e.stopPropagation();
    //     btnAddSector.classList.remove("openAddSector");
    // });

    // var btnEditSector=document.querySelectorAll(".fa-pencil-alt");
    // btnEditSector.forEach(elt => {
    //     elt.addEventListener("click",()=>{
    //         elt.classList.toggle("openEditSector");
    //     })
    // });
}

// LINKS
var link;
function addLinks() {
    var listeLogiciels=document.getElementsByClassName("soft");

    for (var i = 0; i < listeLogiciels.length; i++) {
        listeLogiciels[i].addEventListener('click', giveLink);
    }
}

function giveLink(event) {
    event.preventDefault();
    event.stopPropagation();

    var soft = asyncFunction("api/software/".concat(this.id));
    soft.then((value) => {
        var softInfos = JSON.parse(value);

        document.getElementById("idSoftware").innerHTML = softInfos.id;
        document.getElementById("softwareName").innerHTML = softInfos.name;
        document.getElementById("softwareVersion").innerHTML = "Version ".concat(softInfos.version);
        document.getElementById("softwareDesc").innerHTML = softInfos.comment;
        document.getElementById("softwareDownloadLink").innerHTML = softInfos.urlSetup;
        document.getElementById("softwareTutorialLink").innerHTML = softInfos.urlTuto;

        document.body.classList.remove("edit");
    });
}


// FUNCTIONS
function asyncFunction(url) {
    return new Promise((resolve, reject) => {
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(xhr.responseText);
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    });
}

// FORMULAIRE

// var btnEdit=document.querySelector("#editSoftware");
// btnEdit.addEventListener("click", function() {
//     document.body.classList.toggle("edit");
//     document.querySelector("#name").value=document.querySelector("#softwareName").innerHTML;
//     document.querySelector("#version").value=document.querySelector("#softwareVersion").innerHTML;
//     // document.querySelector("#logo").value=document.querySelector("#softwareLogo").src;
//     document.querySelector("#setup").value=document.querySelector("#softwareDownloadLink").innerHTML;
//     // document.querySelector("#tuto").value=document.querySelector("#softwareTutorialLink").innerHTML;
//     document.querySelector("#comment").value=document.querySelector("#softwareDesc").innerHTML;
// });

// var btModify = document.getElementById("add_software_form_button");
// btModify.addEventListener("click", (event) => {
//     event.preventDefault();
//     event.stopPropagation();
//     document.body.classList.remove("edit");

//     modify();
// })


function modify() 
{
    var url = "api/software/".concat(document.getElementById("idSoftware").innerHTML);
    console.log(url);
    var modify = new Promise((resolve, reject) => {
        const xhr = new XMLHttpRequest();
        xhr.open("PUT", url);
        xhr.onload = () => resolve(xhr.responseText);
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send(JSON.stringify({
            "id": document.getElementById("idSoftware").innerHTML,
            "name": document.querySelector("#name").value,
            "version": document.querySelector("#version").value,
            "urlSetup": document.querySelector("#softwareDownloadLink").innerHTML,
            "urlTuto": document.querySelector("#tuto").value,
            "comment": document.querySelector("#comment").value
        }));
    });
    modify.then((value) => {
        console.log("Modif");
        document.getElementById("22").innerHTML = document.querySelector("#name").value;
        document.querySelector("#softwareName").innerHTML = document.querySelector("#name").value;
        document.querySelector("#softwareVersion").innerHTML = document.querySelector("#version").value;
        document.querySelector("#softwareDownloadLink").innerHTML = document.querySelector("#setup").value;
        document.querySelector("#softwareDesc").innerHTML = document.querySelector("#comment").value;
    });
}
// MODE NUIT

// var theme=document.getElementById("switchMode");

// theme.addEventListener("click", function () {
//     document.getElementsByTagName("body")[0].classList.toggle("night");
// })