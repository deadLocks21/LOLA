"use strict";

function listener_Software_Open() {
    let softwares = document.getElementsByClassName("software");

    for (let i = 0; i < softwares.length; i++)
        if(!softwares[i].classList.contains('addSoftware'))
            softwares[i].addEventListener('click', callback_Software_Open);
}

function listener_Software_Trash() {
    let deleteSoftwareButton = document.getElementsByClassName("softwareTrash");
    for (let i = 0; i < deleteSoftwareButton.length; i++)
        deleteSoftwareButton[i].addEventListener('click', callback_Software_DisplayDelete);
}

function listener_Software_CancelDelete() {
    let cancelSoftwareDelete = document.getElementsByClassName("cancelSoftwareDelete");
    for (let i = 0; i < cancelSoftwareDelete.length; i++)
        cancelSoftwareDelete[i].addEventListener('click', callback_Software_Display);
}

function listener_Software_ConfirmDelete() {
    let confirmSoftwareDelete = document.getElementsByClassName("confirmSoftwareDelete");
    for (let i = 0; i < confirmSoftwareDelete.length; i++)
        confirmSoftwareDelete[i].addEventListener('click', callback_Software_Delete);
}

function listener_Software_Edit() {
    let editSoftwareButton = document.getElementsByClassName("softwarePencil");
    for (let i = 0; i < editSoftwareButton.length; i++)
        editSoftwareButton[i].addEventListener('click', callback_Software_Edit);
}

function listener_Software_CancelEdit() {
    let cancelEditSoftware = document.getElementsByClassName("cancelEditSoftware");
    for (let i = 0; i < cancelEditSoftware.length; i++)
        cancelEditSoftware[i].addEventListener('click', callback_Software_CancelEdit);
}

function listener_Software_ConfirmEdit() {
    let confirmEditSoftware = document.getElementsByClassName("confirmEditSoftware");
    for (let i = 0; i < confirmEditSoftware.length; i++)
        confirmEditSoftware[i].addEventListener('click', callback_Software_ConfirmEdit);
}

function listener_Software_Add() {
    let addSoftware = document.getElementsByClassName("addSoftware");
    for (let i = 0; i < addSoftware.length; i++)
        addSoftware[i].addEventListener('click', callback_Software_Add);
}

function listener_Software_AddCancel() {
    let cancelAddSoftware = document.getElementsByClassName("cancelAddSoftware");
    for (let i = 0; i < cancelAddSoftware.length; i++)
        cancelAddSoftware[i].addEventListener('click', callback_Software_CancelAdd);
}

function listener_Software_AddConfirm() {
    let confirmAddSoftware = document.getElementsByClassName("confirmAddSoftware");
    for (let i = 0; i < confirmAddSoftware.length; i++)
        confirmAddSoftware[i].addEventListener('click', callback_Software_ConfirmAdd);
}