"use strict";

function callback_Course_Open(e) {
    e.stopPropagation();

    let openCourse = document.getElementsByClassName("openModule");
    for (let i = 0; i < openCourse.length; i++)
        display_Course_Simple(openCourse[i].id.replace("mainDiv_Course", ""));

    let me = document.getElementById(e.currentTarget.id);
    me.classList.add("openModule");
    me.classList.remove("clickable");
    me.removeEventListener('click', callback_Course_Open);

    display_Course_Open(e.currentTarget.id);
}

function callback_Course_DisplayDelete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("trash_Course", "");

    let coursesWhoWantToDelete = document.getElementsByClassName('deleteCourse');
    for (let i = 0; i < coursesWhoWantToDelete.length; i++)
        display_Course_Simple(coursesWhoWantToDelete[i].id.replace("mainDiv_Course", ""));

    display_Course_Delete(id);
}

function callback_Course_Display(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("cross_CourseDelete", "");
    display_Course_Simple(id);
}

function callback_Course_Delete(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_CourseDelete", "");
    
    data_Course_Delete(id);

    document.getElementById(`mainDiv_Course${id}`).parentElement.removeChild(document.getElementById(`mainDiv_Course${id}`));
}

function callback_Course_Edit(e) {
    e.stopPropagation();

    let coursesWhoWantToDelete = document.getElementsByClassName('editCourse');
    for (let i = 0; i < coursesWhoWantToDelete.length; i++)
        display_Course_Simple(coursesWhoWantToDelete[i].id.replace("mainDiv_Course", ""));

    display_Course_Edit(e.currentTarget.id.replace("pencil_Course", ""));
}

function callback_Course_Add(e) {
    e.stopPropagation();

    display_Course_Add_Form(e.currentTarget.id.replace("div_CourseAdd", ""));
}

function callback_Course_Add_Cancel(e) {
    e.stopPropagation();
    
    display_Course_Add_Simple(e.currentTarget.id.replace('cross_CourseAdd', ''));
}

function callback_Course_Add_Confirm(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_CourseAdd", "");

    let code = document.getElementById(`inputCode_CourseAdd${id}`).value;
    let name = document.getElementById(`inputName_CourseAdd${id}`).value;
    let login = document.getElementById("getLogin").innerText;

    data_Course_Add(code, name, login, id);

    new Promise((resolve) => {
        let courses = data_Courses_Get(id);
        resolve(courses);
    }).then( (value) => {
        let course = value[value.length - 1];
        let newCourse = create_Course_AdminSimple(course['id'], course['name']);
        document.getElementById(`divCourses_SectorOpen${id}`).appendChild(newCourse);

        listener_Course_EditButton();
        listener_Course_DeleteButton();
        listener_Course_Open();
    });
    
    display_Course_Add_Simple(id);
}

function callback_Course_Edit_Cancel(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("cross_CourseEdit", "");
    display_Course_Simple(id);
}

function callback_Course_Edit_Confirm(e) {
    e.stopPropagation();
    let id = e.currentTarget.id.replace("ok_CourseEdit", "");

    data_Course_Edit(id);
    setTimeout(() => {  console.log("World!"); }, 5000);

    display_Course_Simple(id);
}