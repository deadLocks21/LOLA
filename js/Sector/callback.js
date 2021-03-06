"use strict";

async function callback_Sector_Delete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_SectorDelete", "");
    
    await data_Sector_Delete(id);
    
    document.getElementById("sectorContainer").removeChild(document.getElementById(`div_SectorDelete${id}`));
}

function callback_Sector_DisplayDelete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("trash_Sector", "");
    display_Sector_Delete(id);
}

function callback_Sector_Edit(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("pencil_Sector", "");
    display_Sector_Edit(id);
}

function callback_Sector_Confirm(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_SectorEdit", "");
    
    if(data_Sector_Edit(id)) {
        display_Sector_All();
    }
}

function callback_Sector_Open(e) {
    e.stopPropagation();

    let openSector = document.getElementsByClassName("openSector");
    for (let i = 0; i < openSector.length; i++)
        openSector[i].classList.remove("openSector");

    let me = document.getElementById(e.currentTarget.id);
    me.classList.add("openSector");
    me.classList.remove("clickable");

    display_Sector_Open(e.currentTarget.id);
}