"use strict";

async function display_Sector_All() {
    try {
        let sectorC = document.getElementById("sectorContainer");
        while(sectorC.firstChild)
            sectorC.removeChild(sectorC.firstChild);
    } catch(error) {}

    var sectors = await data_Sector_GetAll();
    var userType = document.getElementById("getUserType").innerHTML;

    sectors.forEach(element => {
        switch(userType) {
            case "1":
                var sector = create_Sector_Student(element['id'], element['label1'], element['label2']);
                break;
            case "2":
                var sector = create_Sector_ProfSimple(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                break;
            case "3":
                var sector = create_Sector_AdminSimple(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                break; 
        }
        document.getElementById("sectorContainer").appendChild(sector);
        if(userType == 1)
            display_Sector_Open(sector.id);
    });

    if(userType == 3) {
        display_AddSector_Simple();
    }

    listener_Sector_DeleteButton();
    listener_Sector_EditButton();
    listener_Sector_Open();
}

function display_Sector_Delete(id) {
    var ctn = document.getElementById(`div_Sector${id}`);
    
    while(ctn.firstChild)
        ctn.removeChild(ctn.firstChild);

    var newCtn = create_Sector_Delete(id);

    ctn.appendChild(newCtn.firstChild);
    ctn.appendChild(newCtn.lastChild);

    ctn.classList.add("deleteSectorForm");
    ctn.id = `div_SectorDelete${id}`;

    listener_Sector_CancelButton();
    listener_Sector_ConfirmButton();
}

async function display_Sector_Edit(id) {
    var ctn = document.getElementById(`div_Sector${id}`);
    
    while(ctn.firstChild)
        ctn.removeChild(ctn.firstChild);

    let newCtn = await create_Sector_Edit(id);
    ctn.innerHTML = newCtn.innerHTML;

    ctn.classList.add("editSectorForm");
    ctn.id = `div_SectorEdit${id}`;

    listener_SectorEdit_Cancel();
    listener_SectorEdit_Confirm();
}

async function display_Sector_Open(HTML_id) {
    let div_Sector = document.getElementById(HTML_id);
    let id = HTML_id.replace("div_Sector", "");
    let label1 = document.getElementById("h3_Sector".concat(id)).innerHTML;
    let label2 = document.getElementById("h4_Sector".concat(id)).innerHTML;

    div_Sector.innerHTML = "";

    let span = document.createElement("span");
    span.classList.add("sectorSemester");
    span.innerHTML = label1.concat(" ".concat(label2));
    span.id = "span_SectorOpen".concat(id);

    let div = document.createElement("div");
    div.classList.add("sectorInfo");
    div.appendChild(span);
    div.id = "divInfo_SectorOpen".concat(id);

    div_Sector.appendChild(div);



    let divCourses = document.createElement("div");
    divCourses.id = "divCourses_SectorOpen".concat(id);
    divCourses.classList.add("modules");
    divCourses.classList.add("flex");

    let courses = await data_Courses_Get(id);
    let userType = document.getElementById("getUserType").innerHTML;
    
    courses.forEach(element => {
        let c;

        if(userType == 3) {
            c = create_Course_AdminSimple(element['id'], element['name']);
        } else {
            c = create_Course_ProfSimple(element['id'], element['name']);
        }
        
        divCourses.appendChild(c);
    });

    div_Sector.appendChild(divCourses);

    if(userType == 3)
        divCourses.appendChild(create_Course_Add(id));

    let spaceSpan = document.createElement("span");
    spaceSpan.id = "spaceSpan_SectorOpen".concat(id);
    spaceSpan.innerHTML = "&nbsp;";
    spaceSpan.classList.add("fix-margin");

    divCourses.appendChild(spaceSpan);

    listener_Course_Open();
    listener_Course_AddButton();
    listener_Course_DeleteButton();
    listener_Course_EditButton();
}