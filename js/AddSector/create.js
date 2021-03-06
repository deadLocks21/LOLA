"use strict";

function create_AddSector_Form() {
    let classNameASF = "addSectorForm";
    let classNameI = "inputs";

    let okImg = document.createElement("img");
    okImg.classList.add(classNameASF);
    okImg.classList.add("confirmSectorForm");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = "confirmSectorForm";
    let crossImg = document.createElement("img");
    crossImg.classList.add(classNameASF);
    crossImg.classList.add("cancelSectorForm");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = "cancelSectorForm";
    
    let h4 = document.createElement("h4");
    h4.classList.add(classNameASF);
    h4.innerHTML = "Ajouter une formation";
    let inputCode = document.createElement("input");
    inputCode.classList.add(classNameI);
    inputCode.classList.add(classNameASF);
    inputCode.setAttribute("type", "text");
    inputCode.setAttribute("name", "codeSector");
    inputCode.setAttribute("placeholder", "Code formation");
    inputCode.id = "codeAddSector";
    let inputLabel1 = document.createElement("input");
    inputLabel1.classList.add(classNameI);
    inputLabel1.classList.add(classNameASF);
    inputLabel1.setAttribute("type", "text");
    inputLabel1.setAttribute("name", "label1Sector");
    inputLabel1.setAttribute("placeholder", "Nom de la formation");
    inputLabel1.id = "label1AddSector";
    let inputLabel2 = document.createElement("input");
    inputLabel2.classList.add(classNameI);
    inputLabel2.classList.add(classNameASF);
    inputLabel2.setAttribute("type", "text");
    inputLabel2.setAttribute("name", "label2Sector");
    inputLabel2.setAttribute("placeholder", "Semestre");
    inputLabel2.id = "label2AddSector";
    let divCOrC = document.createElement("div");
    divCOrC.classList.add(classNameASF);
    divCOrC.classList.add("confirmOrCancel");
    let span = document.createElement("span");
    span.innerHTML = "&nbsp;";
    span.classList.add("fix-margin");

    let div = document.createElement("div");
    div.id = "addSector";
    div.classList.add("sector");
    div.classList.add("addSectorForm");


    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    div.appendChild(h4);
    div.appendChild(inputCode);
    div.appendChild(inputLabel1);
    div.appendChild(inputLabel2);
    div.appendChild(divCOrC);
    div.appendChild(span);

    return div;
}

function create_AddSector_Simple() {
    let classNameASF = "addSector";

    let h31 = document.createElement("h3");
    h31.classList.add(classNameASF);
    let h32 = document.createElement("h3");
    h32.classList.add(classNameASF);
    let div = document.createElement("div");
    let span = document.createElement("span");
    span.innerHTML = "&nbsp;";
    span.classList.add("fix-margin");

    h31.innerHTML = "Ajouter une";
    h32.innerHTML = "formation";

    div.classList.add("sector");
    div.appendChild(h31);
    div.appendChild(h32);
    div.appendChild(span);
    div.id = classNameASF;

    return div;
}