"use strict";

function create_Sector_ProfSimple(id, label1, label2) {
    var p = document.createElement("p");
    p.setAttribute("style", "display: none;");
    p.id = "getSectorId";
    var h3 = document.createElement("h3");
    h3.id = `h3_Sector${id}`;
    var h4 = document.createElement("h4");
    h4.id = `h4_Sector${id}`;
    var div = document.createElement("div");
    div.id = `div_Sector${id}`;

    p.innerHTML = id;
    h3.innerHTML = label1;
    h4.innerHTML = label2;

    div.classList.add("sector");
    div.appendChild(p);
    div.appendChild(h3);
    div.appendChild(h4);

    return div;
}

function create_Sector_AdminSimple(id, label1, label2) {
    var div = create_Sector_ProfSimple(id, label1, label2);

    var ipencil = document.createElement("i");
    ipencil.classList.add("fas");
    ipencil.classList.add("fa-pencil-alt");
    ipencil.classList.add("sectorPencil");
    ipencil.id = `pencil_Sector${id}`;
    var itrash = document.createElement("i");
    itrash.classList.add("far");
    itrash.classList.add("fa-trash-alt");
    itrash.classList.add("sectorTrash");
    itrash.id = `trash_Sector${id}`;

    var span = document.createElement("span");
    span.classList.add("editDelete");
    span.id = `span_Sector${id}`;

    span.appendChild(ipencil);
    span.appendChild(itrash);

    div.appendChild(span);

    return div;
}

async function create_Sector_Edit(id) {
    let classNameI = "inputs";
    let sector = await data_Sector_Get(id);
    console.log(sector['code']);

    let okImg = document.createElement("img");
    okImg.classList.add("confirmSectorEdit");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_SectorEdit${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("cancelSectorEdit");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_SectorEdit${id}`;
    
    let h4 = document.createElement("h4");
    h4.innerHTML = "Modifier la formation";
    h4.id = `h4_SectorEdit${id}`;
    let inputCode = document.createElement("input");
    inputCode.classList.add(classNameI);
    inputCode.setAttribute("type", "text");
    inputCode.setAttribute("name", "codeSector");
    inputCode.setAttribute("placeholder", "Code formation");
    inputCode.setAttribute("value", sector['code']);
    inputCode.id = `code_SectorEdit${id}`;
    let inputLabel1 = document.createElement("input");
    inputLabel1.classList.add(classNameI);
    inputLabel1.setAttribute("type", "text");
    inputLabel1.setAttribute("name", "label1Sector");
    inputLabel1.setAttribute("placeholder", "Nom de la formation");
    inputLabel1.id = `label1_SectorEdit${id}`;
    inputLabel1.setAttribute("value", sector['label1']);
    let inputLabel2 = document.createElement("input");
    inputLabel2.classList.add(classNameI);
    inputLabel2.setAttribute("type", "text");
    inputLabel2.setAttribute("name", "label2Sector");
    inputLabel2.setAttribute("placeholder", "Semestre");
    inputLabel2.id = `label2_SectorEdit${id}`;
    inputLabel2.setAttribute("value", sector['label2']);
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_SectorEdit${id}`;

    let div = document.createElement("div");
    div.id = `div_SectorEdit${id}`;
    div.classList.add("sector");
    div.classList.add("editSectorForm");


    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    div.appendChild(h4);
    div.appendChild(inputCode);
    div.appendChild(inputLabel1);
    div.appendChild(inputLabel2);
    div.appendChild(divCOrC);

    return div;
}

function create_Sector_Delete(id) {
    let classNameASF = "deleteSector";

    let okImg = document.createElement("img");
    okImg.classList.add(classNameASF);
    okImg.classList.add("confirmSectorForm");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_SectorDelete${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add(classNameASF);
    crossImg.classList.add("cancelSectorForm");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_SectorDelete${id}`;
    
    let h4 = document.createElement("h4");
    h4.classList.add(classNameASF);
    h4.innerHTML = "Etes-vous sur de bien vouloir supprimer cette formation ?";
    h4.id = `h4_SectorDelete${id}`;
    let divCOrC = document.createElement("div");
    divCOrC.classList.add(classNameASF);
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_SectorDelete${id}`;

    let div = document.createElement("div");
    div.id = `div_SectorDelete${id}`;
    div.classList.add("sector");
    div.classList.add("deleteSectorForm");


    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    div.appendChild(h4);
    div.appendChild(divCOrC);

    return div;
}
