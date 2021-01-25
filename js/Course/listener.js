"use strict";

function listener_Course_Open() {
    let courses = document.getElementsByClassName("module");
    for (let i = 0; i < courses.length; i++)
        if(!courses[i].classList.contains("addCourse"))
            courses[i].addEventListener('click', callback_Course_Open);
}

function listener_Course_DeleteButton() {
    let deleteCourseButton = document.getElementsByClassName("courseTrash");
    for (let i = 0; i < deleteCourseButton.length; i++)
        deleteCourseButton[i].addEventListener('click', callback_Course_DisplayDelete);
}

function listener_Course_CancelButton() {
    let cancelCourseButton = document.getElementsByClassName("cancelCourseForm");
    for (let i = 0; i < cancelCourseButton.length; i++)
        cancelCourseButton[i].addEventListener('click', callback_Course_Display);
}

function listener_Course_ConfirmButton() {
    let confirmCourseForm = document.getElementsByClassName("confirmCourseForm");
    for (let i = 0; i < confirmCourseForm.length; i++)
        confirmCourseForm[i].addEventListener('click', callback_Course_Delete);
}

function listener_Course_EditButton() {
    let editCourseButton = document.getElementsByClassName("coursePencil");
    for (let i = 0; i < editCourseButton.length; i++)
        editCourseButton[i].addEventListener('click', callback_Course_Edit);
}

function listener_Course_AddButton() {
    let addCourseButton = document.getElementsByClassName("addCourse");
    for (let i = 0; i < addCourseButton.length; i++)
        addCourseButton[i].addEventListener('click', callback_Course_Add);
}

function listener_Course_Add_CancelButton() {
    let cancelAddCourseButton = document.getElementsByClassName("cancelAddCourse");
    for (let i = 0; i < cancelAddCourseButton.length; i++)
        cancelAddCourseButton[i].addEventListener('click', callback_Course_Add_Cancel);
}

function listener_Course_Add_ConfirmButton() {
    let confirmAddCourseButton = document.getElementsByClassName("confirmAddCourse");
    for (let i = 0; i < confirmAddCourseButton.length; i++)
        confirmAddCourseButton[i].addEventListener('click', callback_Course_Add_Confirm);
}

function listener_Course_Edit_CancelButton() {
    let cancelEditCourse = document.getElementsByClassName("cancelEditCourse");
    for (let i = 0; i < cancelEditCourse.length; i++)
        cancelEditCourse[i].addEventListener('click', callback_Course_Edit_Cancel);
}

function listener_Course_Edit_ConfirmButton() {
    let confirmEditCourse = document.getElementsByClassName("confirmEditCourse");
    for (let i = 0; i < confirmEditCourse.length; i++)
        confirmEditCourse[i].addEventListener('click', callback_Course_Edit_Confirm);
}