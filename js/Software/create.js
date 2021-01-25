"use strict";

function create_Software_Open(el) {
    let id = el['id'];

    let divOpen = document.createElement("div");
    divOpen.id = "div_SoftOpened".concat(id);
    divOpen.classList.add("softwareOpened");



    let title = document.createElement("h2");
    title.id = "title_SoftOpen".concat(id);
    title.innerHTML = el['name'];
    divOpen.appendChild(title);

    if(el['version']) {
        let version = document.createElement("h6");
        version.id = "version_SoftOpen".concat(id);
        version.innerHTML = "Version ".concat(el['version']);
        divOpen.appendChild(version);
    }

    if(el['comment'] != '') {
        let labelCom = document.createElement("h4");
        labelCom.id = "labelCom_SoftOpen".concat(id);
        labelCom.innerHTML = "Commentaire";
        divOpen.appendChild(labelCom);
    
        let commentary = document.createElement("h6");
        commentary.id = "commentary_SoftOpen".concat(id);
        commentary.innerHTML = el['comment'];
        divOpen.appendChild(commentary);
    }

    if(el['urlTuto'] != '') {
        let urlTuto = document.createElement("a");
        urlTuto.id = "urlTuto_SoftOpen".concat(id);
        urlTuto.setAttribute("href", el['urlTuto']);
        urlTuto.innerHTML = 'Tutoriel';
        divOpen.appendChild(urlTuto);
    }

    if(el['urlSetup']) {
        let urlSetup = document.createElement("a");
        urlSetup.id = "urlSetup_SoftOpen".concat(id);
        urlSetup.setAttribute("href", el['urlSetup']);
        urlSetup.innerHTML = 'Installateur';
        divOpen.appendChild(urlSetup);
    }

    return divOpen;
} 


function create_Software_Close(el) {
    let id = el['id'];
    let divClose = document.createElement("div");
    divClose.id = "div_SoftClose".concat(id);
    divClose.classList.add("softwareClosed");

    let h5Cl = document.createElement('h5');
    h5Cl.id = "h5_SoftClose".concat(id);
    h5Cl.innerHTML = el['name'];

    if(document.getElementById("getUserType").innerText == "3") {
        var ipencil = document.createElement("i");
        ipencil.classList.add("fas");
        ipencil.classList.add("fa-pencil-alt");
        ipencil.classList.add("softwarePencil");
        ipencil.id = `pencil_Software${id}`;
        var itrash = document.createElement("i");
        itrash.classList.add("far");
        itrash.classList.add("fa-trash-alt");
        itrash.classList.add("softwareTrash");
        itrash.id = `trash_Software${id}`;

        var span = document.createElement("span");
        span.classList.add("editDelete");
        span.id = `spanUD_Software${id}`;

        span.appendChild(ipencil);
        span.appendChild(itrash);

        divClose.appendChild(span);
    }

    divClose.appendChild(h5Cl);

    return divClose;
} 

function create_Software_Delete(id) {
    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmSoftwareDelete");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_SoftwareDelete${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelSoftwareDelete");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_SoftwareDelete${id}`;
    
    let h4 = document.createElement("h4");
    h4.id = `h'_SoftwareDelete${id}`;
    h4.innerText = "Etes-vous sûrs ?";
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_SoftwareDelete${id}`;

    let div = document.createElement("div");
    div.id = `div_SoftwareDelete${id}`;
    div.classList.add("confirmDelete");
    div.classList.add("flex");
    div.classList.add("column");


    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    div.appendChild(h4);
    div.appendChild(divCOrC);

    return div;
}

function create_Software_Edit(id) {
    let span = document.createElement("span");
    span.id = `title_SoftwareEdit${id}`;
    span.innerText = "Modification du logiciel";

    let inputName = document.createElement("input"); 
    inputName.id = "inputName_SoftwareEdit".concat(id);
    inputName.classList.add("inputs");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("name", "nameSoftware");
    inputName.setAttribute("placeholder", "Nom du logiciel");

    let inputVersion = document.createElement("input"); 
    inputVersion.id = "inputVersion_SoftwareEdit".concat(id);
    inputVersion.classList.add("inputs");
    inputVersion.setAttribute("type", "text");
    inputVersion.setAttribute("name", "versionSoftware");
    inputVersion.setAttribute("placeholder", "Version du logiciel");

    let inputCommentary = document.createElement("input"); 
    inputCommentary.id = "inputCommentary_SoftwareEdit".concat(id);
    inputCommentary.classList.add("inputs");
    inputCommentary.setAttribute("type", "text");
    inputCommentary.setAttribute("name", "commentSoftware");
    inputCommentary.setAttribute("placeholder", "Commentaire");

    let inputDLink = document.createElement("input"); 
    inputDLink.id = "inputDLink_SoftwareEdit".concat(id);
    inputDLink.classList.add("inputs");
    inputDLink.setAttribute("type", "text");
    inputDLink.setAttribute("name", "downloadSoftware");
    inputDLink.setAttribute("placeholder", "Lien de téléchargement");

    let labelTuto = document.createElement("label");
    labelTuto.id = "labelTuto_SoftwareEdit".concat(id);
    labelTuto.classList.add("inputfile-label");
    labelTuto.classList.add("clickable");
    labelTuto.setAttribute("for", "tutoSoftware");

    let iTuto = document.createElement("i");
    iTuto.id = "iTuto_SoftwareEdit".concat(id);
    iTuto.classList.add("fas");
    iTuto.classList.add("fa-cloud-upload-alt");

    labelTuto.appendChild(iTuto);
    labelTuto.appendChild(document.createTextNode(" Choisir un tutoriel PDF"));

    let inputTuto = document.createElement("input"); 
    inputTuto.id = "inputTuto_SoftwareEdit".concat(id);
    inputTuto.classList.add("inputfile");
    inputTuto.setAttribute("type", "file");
    inputTuto.setAttribute("name", "tutoSoftware");
    inputTuto.setAttribute("accept", "application/pdf");

    let labelImage = document.createElement("label");
    labelImage.id = "labelImage_SoftwareEdit".concat(id);
    labelImage.classList.add("inputfile-label");
    labelImage.classList.add("clickable");
    labelImage.setAttribute("for", "imgSoftware");

    let iImage = document.createElement("i");
    iImage.id = "iImage_SoftwareEdit".concat(id);
    iImage.classList.add("fas");
    iImage.classList.add("fa-cloud-upload-alt");

    labelImage.appendChild(iImage);
    labelImage.appendChild(document.createTextNode(" Choisir une image"));

    let inputImage = document.createElement("input"); 
    inputImage.id = "inputImage_SoftwareEdit".concat(id);
    inputImage.classList.add("inputfile");
    inputImage.setAttribute("type", "file");
    inputImage.setAttribute("name", "imgSoftware");
    inputImage.setAttribute("accept", "image/*");


    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmEditSoftware");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_SoftwareEdit${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelEditSoftware");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_SoftwareEdit${id}`;
    
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_SoftwareEdit${id}`;

    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    let div = document.createElement("div");

    div.appendChild(span);
    div.appendChild(inputName);
    div.appendChild(inputVersion);
    div.appendChild(inputCommentary);
    div.appendChild(inputDLink);
    div.appendChild(labelTuto);
    div.appendChild(inputTuto);
    div.appendChild(labelImage);
    div.appendChild(inputImage);
    div.appendChild(divCOrC);

    return div;
}

function create_Software_Add(id) {
    let li = document.createElement("li");
    li.id = `li_AddSoftware${id}`;
    li.classList.add('software');
    li.classList.add('clickable');
    li.classList.add('addSoftware');
    li.appendChild(document.createTextNode('Ajouter un logiciel'));

    let span = document.createElement('span');
    span.innerHTML = "&nbsp;";
    span.classList.add('fix-margin-bottom');

    li.appendChild(span);

    return li;
}

function create_Software_AddOpen(id) {
    let span = document.createElement("span");
    span.id = `title_SoftwareAdd${id}`;
    span.innerText = "Ajouter un logiciel";

    let inputName = document.createElement("input"); 
    inputName.id = "inputName_SoftwareAdd".concat(id);
    inputName.classList.add("inputs");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("name", "nameSoftware");
    inputName.setAttribute("placeholder", "Nom du logiciel");

    let inputVersion = document.createElement("input"); 
    inputVersion.id = "inputVersion_SoftwareAdd".concat(id);
    inputVersion.classList.add("inputs");
    inputVersion.setAttribute("type", "text");
    inputVersion.setAttribute("name", "versionSoftware");
    inputVersion.setAttribute("placeholder", "Version du logiciel");

    let inputCommentary = document.createElement("input"); 
    inputCommentary.id = "inputCommentary_SoftwareAdd".concat(id);
    inputCommentary.classList.add("inputs");
    inputCommentary.setAttribute("type", "text");
    inputCommentary.setAttribute("name", "commentSoftware");
    inputCommentary.setAttribute("placeholder", "Commentaire");

    let inputDLink = document.createElement("input"); 
    inputDLink.id = "inputDLink_SoftwareAdd".concat(id);
    inputDLink.classList.add("inputs");
    inputDLink.setAttribute("type", "text");
    inputDLink.setAttribute("name", "downloadSoftware");
    inputDLink.setAttribute("placeholder", "Lien de téléchargement");

    let labelTuto = document.createElement("label");
    labelTuto.id = "labelTuto_SoftwareAdd".concat(id);
    labelTuto.classList.add("inputfile-label");
    labelTuto.classList.add("clickable");
    labelTuto.setAttribute("for", "tutoSoftware");

    let iTuto = document.createElement("i");
    iTuto.id = "iTuto_SoftwareAdd".concat(id);
    iTuto.classList.add("fas");
    iTuto.classList.add("fa-cloud-upload-alt");

    labelTuto.appendChild(iTuto);
    labelTuto.appendChild(document.createTextNode(" Choisir un tutoriel PDF"));

    let inputTuto = document.createElement("input"); 
    inputTuto.id = "inputTuto_SoftwareAdd".concat(id);
    inputTuto.classList.add("inputfile");
    inputTuto.setAttribute("type", "file");
    inputTuto.setAttribute("name", "tutoSoftware");
    inputTuto.setAttribute("accept", "application/pdf");

    let labelImage = document.createElement("label");
    labelImage.id = "labelImage_SoftwareAdd".concat(id);
    labelImage.classList.add("inputfile-label");
    labelImage.classList.add("clickable");
    labelImage.setAttribute("for", "imgSoftware");

    let iImage = document.createElement("i");
    iImage.id = "iImage_SoftwareAdd".concat(id);
    iImage.classList.add("fas");
    iImage.classList.add("fa-cloud-upload-alt");

    labelImage.appendChild(iImage);
    labelImage.appendChild(document.createTextNode(" Choisir une image"));

    let inputImage = document.createElement("input"); 
    inputImage.id = "inputImage_SoftwareAdd".concat(id);
    inputImage.classList.add("inputfile");
    inputImage.setAttribute("type", "file");
    inputImage.setAttribute("name", "imgSoftware");
    inputImage.setAttribute("accept", "image/*");


    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmAddSoftware");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_SoftwareAdd${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelAddSoftware");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_SoftwareAdd${id}`;
    
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_SoftwareAdd${id}`;

    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    let div = document.createElement("div");
    div.id = `div_AddSoftwareOpen${id}`;
    div.classList.add('softwareOpened');

    div.appendChild(span);
    div.appendChild(inputName);
    div.appendChild(inputVersion);
    div.appendChild(inputCommentary);
    div.appendChild(inputDLink);
    div.appendChild(labelTuto);
    div.appendChild(inputTuto);
    div.appendChild(labelImage);
    div.appendChild(inputImage);
    div.appendChild(divCOrC);

    return div;
}