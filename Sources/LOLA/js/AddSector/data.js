"use strict";

function data_AddSector_add() {
    let code = document.getElementById("codeAddSector").value;
    let label1 = document.getElementById("label1AddSector").value;
    let label2 = document.getElementById("label2AddSector").value;
    let good = false;

    if(code != "" && label1 != "" && label2 != "") {
        good = true;
        let url = "api/sector/0";
        const xhr = new XMLHttpRequest();

        xhr.open("POST", url);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send(`code=${code}&label1=${label1}&label2=${label2}`);
    }

    return good;
}
