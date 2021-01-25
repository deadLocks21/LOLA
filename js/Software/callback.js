"use strict";

function callback_Software_Open(e) {
    e.stopPropagation();

    let openSoftware = document.getElementsByClassName("showSoftware");
    for (let i = 0; i < openSoftware.length; i++) {
        openSoftware[i].classList.remove("showSoftware");
        openSoftware[i].classList.add("clickable")
    }

    let soft = document.getElementById(e.currentTarget.id);
    soft.classList.add("showSoftware");
    soft.classList.remove("clickable");
    soft.removeEventListener('click', callback_Software_Open);

    let id = e.currentTarget.id.replace("li_Software", "");
    display_Software_Open(id);
}

function callback_Software_DisplayDelete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("trash_Software", "");
    display_Software_Delete(id);
}

function callback_Software_Display(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("cross_SoftwareDelete", "");
    display_Software_Simple(id);
}

function callback_Software_Delete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_SoftwareDelete", "");
    
    data_Software_Delete(id);

    document.getElementById(`li_Software${id}`).parentElement.removeChild(document.getElementById(`li_Software${id}`));
}

function callback_Software_Edit(e) {
    e.stopPropagation();
    display_Software_Edit(e.currentTarget.id.replace("pencil_Software", ""));
}

function callback_Software_CancelEdit(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("cross_SoftwareEdit", "");
    display_Software_Simple(id);
}

function callback_Software_ConfirmEdit(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_SoftwareEdit", "");

    data_Software_Edit(id);
    setTimeout(() => {  console.log("World!"); }, 10000);

    display_Software_Simple(id);
}

function callback_Software_Add(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("li_AddSoftware", "");
    display_Software_AddOpen(id);
}

function callback_Software_CancelAdd(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("cross_SoftwareAdd", "");
    display_Software_AddSimple(id);
}

function callback_Software_ConfirmAdd(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_SoftwareAdd", "");

    data_Software_Add(id);

    display_Software_AddSimple(id);
}
