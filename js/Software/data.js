"use strict";

async function data_Software_Get(id) {
    let software;

    await new Promise((resolve, reject) => {
        let url = "api/software".concat("/".concat(id));
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        software = value; 
    });


    return software;
}

function data_Software_Delete(id) {
    let url = "api/software/".concat(id);
    const xhr = new XMLHttpRequest();

    xhr.open("DELETE", url);
    xhr.send();
}

async function data_Software_Edit(id) {
    let url = "api/software/".concat(id);
    const xhr = new XMLHttpRequest();

    let name = document.getElementById(`inputName_SoftwareEdit${id}`).value;
    let version = document.getElementById(`inputVersion_SoftwareEdit${id}`).value;
    let commentary = document.getElementById(`inputCommentary_SoftwareEdit${id}`).value;
    let dLink = document.getElementById(`inputDLink_SoftwareEdit${id}`).value;


    console.log(id);
    console.log(name);
    console.log(version);
    console.log(commentary);
    console.log(dLink);


    xhr.open("PUT", url);
    xhr.send(JSON.stringify({
        "id": id,
        "name": name,
        "version": version,
        "comment": commentary,
        "urlSetup": dLink
    }));
}

async function data_Software_Add(id) {
    let name = document.getElementById(`inputName_SoftwareAdd${id}`).value;
    let version = document.getElementById(`inputVersion_SoftwareAdd${id}`).value;
    let urlSetup = document.getElementById(`inputCommentary_SoftwareAdd${id}`).value;
    let urlTuto = '';
    let comment = document.getElementById(`inputDLink_SoftwareAdd${id}`).value;
    let courseId = id;

    let url = "api/software/0";
    const xhr = new XMLHttpRequest();

    xhr.open("POST", url);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(`name=${name}&version=${version}&urlSetup=${urlSetup}&urlTuto=${urlTuto}&comment=${comment}&courseId=${courseId}`);

    return id;
}