"use strict";

async function display_Course_Open(HTML_id) {
    let id = HTML_id.replace("mainDiv_Course", "");
    let div = document.getElementById(HTML_id);
    let span = document.createElement("span");
    span.id = "spanMName_Course".concat(id);
    span.innerHTML = document.getElementById(span.id).innerHTML;
    div.innerHTML = "";
    div.appendChild(span);
    let course = await data_Course_Get(id)
    let softwares = course['softwares'];

    let ul = document.createElement('ul');
    ul.id = "ul_CourseOpen".concat(id);
    ul.classList.add('softwares');
    ul.classList.add('list');

    softwares.forEach(element => {
        let idS = element['id'];

        let li = document.createElement("li");
        li.id = "li_Software".concat(idS);
        li.classList.add("software");
        li.classList.add("clickable");

        li.appendChild(create_Software_Close(element));
        li.appendChild(create_Software_Open(element));

        ul.appendChild(li);
    });

    if(document.getElementById("getUserType").innerHTML == 3)
        ul.appendChild(create_Software_Add(id));
    
    div.appendChild(ul);

    listener_Software_Open();
    listener_Software_Trash();
    listener_Software_Edit();
    listener_Software_Add();
}

function display_Course_Delete(id) {
    let course = document.getElementById("mainDiv_Course".concat(id));
    course.removeEventListener('click', callback_Course_Open);
    course.classList.remove("clickable");
    course.classList.add("deleteCourse");
    course.innerHTML = create_Course_Delete(id).innerHTML;

    listener_Course_CancelButton();
    listener_Course_ConfirmButton();
}

async function display_Course_Simple(id) {
    let oldCourse = document.getElementById("mainDiv_Course".concat(id));
    let newCourse = await create_Course_AdminSimpleId(id);

    oldCourse.innerHTML = newCourse.innerHTML;
    oldCourse.classList.remove('deleteCourse');
    oldCourse.classList.remove('openModule');
    oldCourse.classList.remove('editModule');
    oldCourse.classList.add('clickable');
    oldCourse.addEventListener('click', callback_Course_Open);
    
    listener_Course_DeleteButton();
    listener_Course_EditButton();
}

async function display_Course_Edit(id) {
    let courseInfos = await data_Course_Get(id);
    let newDiv = create_Course_Edit(id);
    let oldDiv = document.getElementById(`mainDiv_Course${id}`);

    oldDiv.innerHTML = newDiv.innerHTML;
    oldDiv.classList.add("editCourse");

    let p = document.createElement('p');
    
    p.innerHTML = courseInfos['code'];
    document.getElementById(`inputCode_CourseEdit${id}`).setAttribute("value", p.innerText)
    p.innerHTML = courseInfos['name'];
    document.getElementById(`inputName_CourseEdit${id}`).setAttribute("value", p.innerText)

    oldDiv.removeEventListener('click', callback_Course_Open);
    oldDiv.classList.remove('clickable');

    listener_Course_Edit_CancelButton();
    listener_Course_Edit_ConfirmButton();
}

function display_Course_Add_Form(id) {
    let newDiv = create_Course_Add_Form(id);
    let oldDiv = document.getElementById(`div_CourseAdd${id}`);

    oldDiv.innerHTML = newDiv.innerHTML;
    oldDiv.classList.remove('clickable');
    oldDiv.removeEventListener('click', callback_Course_Add);

    listener_Course_Add_CancelButton();
    listener_Course_Add_ConfirmButton();
}

function display_Course_Add_Simple(id) {
    let newDiv = create_Course_Add(id);
    let oldDiv = document.getElementById(`div_CourseAdd${id}`);

    oldDiv.innerHTML = newDiv.innerHTML;
    oldDiv.classList.add('clickable');
    oldDiv.addEventListener('click', callback_Course_Add);
}
