"use strict";

function displayAddForm(e) {
    document.getElementById(e.currentTarget.id).remove();
    document.getElementById("sectorContainer").appendChild(createAddSectorForm());
    addAddSectorFormListener();
}

function displayAdd(e) {
    document.getElementById("addSectorForm").remove();
    document.getElementById("sectorContainer").appendChild(createAddSector());
    addAddSectorListener();
}
