"use strict";

function create_Course_ProfSimple(id, name) {
    let span = document.createElement("span");
    span.innerHTML = name;
    span.id = "spanMName_Course".concat(id);

    let div = document.createElement("div");
    div.classList.add("module");
    div.classList.add("flex");
    div.classList.add("clickable");
    div.id = "mainDiv_Course".concat(id);

    let spaceSpan = document.createElement("span");
    spaceSpan.id = "spaceSpan_SectorOpen".concat(id);
    spaceSpan.innerHTML = "&nbsp;";
    spaceSpan.classList.add("fix-margin");

    div.appendChild(span);
    div.appendChild(spaceSpan);

    return div;
}

function create_Course_AdminSimple(id, name) {
    let div = create_Course_ProfSimple(id, name);

    if(document.getElementById("getUserType").innerHTML == 3) {
        var ipencil = document.createElement("i");
        ipencil.classList.add("fas");
        ipencil.classList.add("fa-pencil-alt");
        ipencil.classList.add("coursePencil");
        ipencil.id = `pencil_Course${id}`;
        var itrash = document.createElement("i");
        itrash.classList.add("far");
        itrash.classList.add("fa-trash-alt");
        itrash.classList.add("courseTrash");
        itrash.id = `trash_Course${id}`;

        var span = document.createElement("span");
        span.classList.add("editDelete");
        span.id = `spanUD_Course${id}`;

        span.appendChild(ipencil);
        span.appendChild(itrash);

        div.appendChild(span);
    }

    return div;
}

async function create_Course_AdminSimpleId(id) {
    let courseInfo = await data_Course_Get(id);

    return create_Course_AdminSimple(id, courseInfo['name']);
}

function create_Course_Delete(id) {
    let classNameASF = "deleteCourse";

    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmCourseForm");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_CourseDelete${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelCourseForm");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_CourseDelete${id}`;
    
    let h4 = document.createElement("h4");
    h4.innerHTML = "Etes-vous sur de bien vouloir supprimer cette formation ?";
    h4.id = `h4_CourseDelete${id}`;
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_CourseDelete${id}`;

    let div = document.createElement("div");
    div.id = `div_CourseDelete${id}`;
    div.classList.add("module");
    div.classList.add("flex");


    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    div.appendChild(h4);
    div.appendChild(divCOrC);

    return div;
}

function create_Course_Add(id) {
    let span = document.createElement("span");
    span.id = `span_CourseAdd${id}`;
    span.innerText = "Ajouter un module";

    let div = document.createElement("div");
    div.id = `div_CourseAdd${id}`;
    div.classList.add("module");
    div.classList.add("flex");
    div.classList.add("clickable");
    div.classList.add("addCourse");

    div.appendChild(span);

    return div;
}

function create_Course_Add_Form(id) {
    let span = document.createElement("span");
    span.id = "span_CourseAdd".concat(id);
    span.innerText = "Ajouter un module";

    let inputCode = document.createElement("input"); 
    inputCode.id = "inputCode_CourseAdd".concat(id);
    inputCode.classList.add("inputs");
    inputCode.setAttribute("type", "text");
    inputCode.setAttribute("name", "codeModule");
    inputCode.setAttribute("placeholder", "Code du module");

    let inputName = document.createElement("input"); 
    inputName.id = "inputName_CourseAdd".concat(id);
    inputName.classList.add("inputs");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("name", "nameModule");
    inputName.setAttribute("placeholder", "Nom complet");


    let label = document.createElement("label");
    label.id = "label_CourseAdd".concat(id);
    label.classList.add("inputfile-label");
    label.classList.add("clickable");
    label.setAttribute("for", "imgModule");

    let i = document.createElement("i");
    i.id = "i_CourseAdd".concat(id);
    i.classList.add("fas");
    i.classList.add("fa-cloud-upload-alt");

    label.appendChild(i);
    label.appendChild(document.createTextNode(" Choisir une image "));


    let inputImage = document.createElement("input"); 
    inputImage.id = "inputImage_CourseAdd".concat(id);
    inputImage.classList.add("inputfile");
    inputImage.setAttribute("type", "file");
    inputImage.setAttribute("name", "imgModule");


    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmAddCourse");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_CourseAdd${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelAddCourse");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_CourseAdd${id}`;
    
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_CourseAdd${id}`;

    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    let div = document.createElement("div");
    div.id = `div_CourseAdd${id}`;
    div.classList.add("module");
    div.classList.add("flex");

    div.appendChild(span);
    div.appendChild(inputCode);
    div.appendChild(inputName);
    div.appendChild(label);
    div.appendChild(inputImage);
    div.appendChild(divCOrC);

    return div;
}

function create_Course_Edit(id) {
    let span = document.createElement("span");
    span.id = "span_CourseEdit".concat(id);
    span.innerText = "Editer un module";

    let inputCode = document.createElement("input"); 
    inputCode.id = "inputCode_CourseEdit".concat(id);
    inputCode.classList.add("inputs");
    inputCode.setAttribute("type", "text");
    inputCode.setAttribute("name", "codeModule");
    inputCode.setAttribute("placeholder", "Code du module");

    let inputName = document.createElement("input"); 
    inputName.id = "inputName_CourseEdit".concat(id);
    inputName.classList.add("inputs");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("name", "nameModule");
    inputName.setAttribute("placeholder", "Nom complet");


    let label = document.createElement("label");
    label.id = "label_CourseEdit".concat(id);
    label.classList.add("inputfile-label");
    label.classList.add("clickable");
    label.setAttribute("for", "imgModule");

    let i = document.createElement("i");
    i.id = "i_SoftwareEdit".concat(id);
    i.classList.add("fas");
    i.classList.add("fa-cloud-upload-alt");

    label.appendChild(i);
    label.appendChild(document.createTextNode(" Choisir une image "));


    let inputImage = document.createElement("input"); 
    inputImage.id = "inputImage_CourseEdit".concat(id);
    inputImage.classList.add("inputfile");
    inputImage.setAttribute("type", "file");
    inputImage.setAttribute("name", "imgModule");


    let okImg = document.createElement("img");
    okImg.classList.add("clickable");
    okImg.classList.add("confirmEditCourse");
    okImg.setAttribute("src", "src/ok.svg");
    okImg.id = `ok_CourseEdit${id}`;
    let crossImg = document.createElement("img");
    crossImg.classList.add("clickable");
    crossImg.classList.add("cancelEditCourse");
    crossImg.setAttribute("src", "src/cross.svg");
    crossImg.id = `cross_CourseEdit${id}`;
    
    let divCOrC = document.createElement("div");
    divCOrC.classList.add("confirmOrCancel");
    divCOrC.id = `COrC_CourseEdit${id}`;

    divCOrC.appendChild(okImg);
    divCOrC.appendChild(crossImg);

    let div = document.createElement("div");
    div.classList.add("module");
    div.classList.add("flex");

    div.appendChild(span);
    div.appendChild(inputCode);
    div.appendChild(inputName);
    div.appendChild(label);
    div.appendChild(inputImage);
    div.appendChild(divCOrC);

    return div;
}