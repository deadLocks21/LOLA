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
            case "2":
                var sector = create_Sector_ProfSimple(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                break;
            case "3":
                var sector = create_Sector_AdminSimple(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                break; 
        }
        document.getElementById("sectorContainer").appendChild(sector);
    });

    if(userType == 3) {
        display_AddSector_Simple();
    }

    listener_Sector_DeleteButton();
    listener_Sector_EditButton();
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