"use strict";

function display_AddSector_Simple() {
    try {
        document.getElementById("addSector").remove();
    } catch(error) {}

    document.getElementById("sectorContainer").appendChild(create_AddSector_Simple());

    listener_AddSector_Simple();
}

function display_AddSector_Form() {
    try {
        document.getElementById("addSector").remove();
    } catch(error) {}

    document.getElementById("sectorContainer").appendChild(create_AddSector_Form());

    listener_AddSector_Form();
}