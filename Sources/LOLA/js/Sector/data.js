"use strict";


async function data_Sector_GetAll() {
    let sectors;

    await new Promise((resolve, reject) => {
        let url = "api/sectors/".concat(document.getElementById("getLogin").innerHTML);
    
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        sectors = value['sectors']; 
    });

    return sectors;
}

async function data_Sector_Get(id) {
    let sector;

    await new Promise((resolve, reject) => {
        let url = "api/sector/".concat(id);
    
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        sector = value;
    });

    return sector;
}

function data_Sector_Delete(id) {
    let url = "api/sector/".concat(id);
    const xhr = new XMLHttpRequest();

    xhr.open("DELETE", url);
    xhr.send();
}

async function data_Sector_Edit(id) {
    let url = "api/sector/".concat(id);
    const xhr = new XMLHttpRequest();

    xhr.open("PUT", url);
    xhr.send(JSON.stringify({
        "id": id,
        "code": document.getElementById(`code_SectorEdit${id}`).value,
        "label1": document.getElementById(`label1_SectorEdit${id}`).value,
        "label2": document.getElementById(`label2_SectorEdit${id}`).value
    }));
}