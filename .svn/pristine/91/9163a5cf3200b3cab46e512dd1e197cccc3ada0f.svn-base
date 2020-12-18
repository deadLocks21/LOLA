"use strict";

function addSectors() {
    new Promise((resolve, reject) => {
        var url = "api/sectors/".concat(document.getElementById("getLogin").innerHTML);
    
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        var sectors = value['sectors'];
        var userType = document.getElementById("getUserType").innerHTML;
    
        sectors.forEach(element => {
            switch(userType) {
                case "2":
                    var sector = createProfessorSector(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                    break;
                case "3":
                    var sector = createAdminSector(element['id'], element['label1'], element['label2']);  // TODO Modifier le 1
                    break; 
            }
            document.getElementById("sectorContainer").appendChild(sector);
        });
    
        if(userType == 3) {
            document.getElementById("sectorContainer").appendChild(createAddSector());
        }
    
        addAddSectorListener();
        addDeleteSectorListener();
    });
}