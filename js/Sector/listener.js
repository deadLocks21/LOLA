"use strict";

function listener_Sector_DeleteButton() {
    let addSectorButton = document.getElementsByClassName("sectorTrash");
    for (let i = 0; i < addSectorButton.length; i++)
        addSectorButton[i].addEventListener('click', callback_Sector_DisplayDelete);
}

function listener_Sector_CancelButton() {
    let cancelSectorForm = document.getElementsByClassName("cancelSectorForm");
    for (let i = 0; i < cancelSectorForm.length; i++)
        cancelSectorForm[i].addEventListener('click', display_Sector_All);
}

function listener_Sector_ConfirmButton() {
    let confirmSectorForm = document.getElementsByClassName("confirmSectorForm");
    for (let i = 0; i < confirmSectorForm.length; i++)
        confirmSectorForm[i].addEventListener('click', callback_Sector_Delete);
}

function listener_Sector_EditButton() {
    let sectorPencil = document.getElementsByClassName("sectorPencil");
    for (let i = 0; i < sectorPencil.length; i++)
        sectorPencil[i].addEventListener('click', callback_Sector_Edit);
}

function listener_SectorEdit_Cancel() {
    let cancelSectorEdit = document.getElementsByClassName("cancelSectorEdit");
    for (let i = 0; i < cancelSectorEdit.length; i++)
        cancelSectorEdit[i].addEventListener('click', display_Sector_All);
}

function listener_SectorEdit_Confirm() {
    let confirmSectorEdit = document.getElementsByClassName("confirmSectorEdit");
    for (let i = 0; i < confirmSectorEdit.length; i++)
        confirmSectorEdit[i].addEventListener('click', callback_Sector_Confirm);
}

function listener_Sector_Open() {
    let sector = document.getElementsByClassName("sector");
    for (let i = 0; i < sector.length; i++)
        if(sector[i].id != "addSector")
            sector[i].addEventListener('click', callback_Sector_Open);
}