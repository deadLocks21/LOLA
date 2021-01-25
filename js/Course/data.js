"use strict";

async function data_Courses_Get(id) {  // Id = Id of the sector
    let courses;

    await new Promise((resolve, reject) => {
        let url = "api/courses/".concat(document.getElementById('getLogin').innerHTML.concat("/".concat(id)));
    
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        courses = value['courses']; 
    });

    return courses;
}

async function data_Course_Get(id) {
    let course;

    await new Promise((resolve, reject) => {
        let url = "api/course".concat("/".concat(id));
        const xhr = new XMLHttpRequest();
        xhr.open("GET", url);
        xhr.onload = () => resolve(JSON.parse(xhr.responseText));
        xhr.onerror = () => reject(xhr.statusText);
        xhr.send();
    }).then( (value) => {
        course = value; 
    });


    return course;
}

function data_Course_Delete(id) {
    let url = "api/course/".concat(id);
    const xhr = new XMLHttpRequest();

    xhr.open("DELETE", url);
    xhr.send();
}

async function data_Course_Add(code, name, login, idSector) {
    let id = 0;

    if(code != "" && name != "") {
        let url = "api/course/0";
            const xhr = new XMLHttpRequest();

            xhr.open("POST", url);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.send(`code=${code}&name=${name}&userName=${login}&idSector=${idSector}`);
    }

    return id;
}


async function data_Course_Edit(id) {
    let url = "api/course/".concat(id);
    const xhr = new XMLHttpRequest();

    let code = document.getElementById(`inputCode_CourseEdit${id}`).value;
    let name = document.getElementById(`inputName_CourseEdit${id}`).value;
    let userName = document.getElementById("getLogin").innerText;

    let idSector = document.getElementById(`mainDiv_Course${id}`).parentElement.id.replace("divCourses_SectorOpen", "");

    xhr.open("PUT", url);
    xhr.send(JSON.stringify({
        "id": id,
        "code": code,
        "name": name,
        "idSector": idSector,
        "userName": userName
    }));
}