"use strict";

function listener_AddSector_Simple() {
    var addSectorButton = document.getElementsByClassName("addSector");
    for (let i = 0; i < addSectorButton.length; i++)
        addSectorButton[i].addEventListener('click', () => {});

    addSectorButton = document.getElementById("addSector");
    addSectorButton.addEventListener("click", callback_AddSector_DisplayForm);
}

function listener_AddSector_Form() {
    let cancelSectorFormButton = document.getElementById("cancelSectorForm");
    cancelSectorFormButton.addEventListener("click", callback_AddSector_CancelForm);

    let confirmSectorForm = document.getElementById("confirmSectorForm");
    confirmSectorForm.addEventListener("click", callback_AddSector_ValidateForm);
}
