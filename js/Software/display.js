"use strict";

async function display_Software_Open(id) {
    let oldDiv = document.getElementById(`div_SoftOpened${id}`);
    oldDiv.innerHTML = '';

    let content = await data_Software_Get(id);
    oldDiv.innerHTML = create_Software_Open(content).innerHTML;
}

function display_Software_Delete(id) {
    let oldDiv = document.getElementById(`div_SoftClose${id}`);
    let newDiv = create_Software_Delete(id);

    oldDiv.innerHTML = newDiv.innerHTML;

    oldDiv.classList.add("confirmDelete");
    oldDiv.classList.add("flex");
    oldDiv.classList.add("column");
    oldDiv.parentElement.classList.remove('clickable');
    oldDiv.parentElement.removeEventListener('click', callback_Software_Open);

    listener_Software_CancelDelete();
    listener_Software_ConfirmDelete();
}

async function display_Software_Simple(id) {
    let content = await data_Software_Get(id);
    let oldDiv = document.getElementById(`div_SoftClose${id}`);
    let newDiv = create_Software_Close(content);

    oldDiv.innerHTML = newDiv.innerHTML;

    oldDiv.classList.remove("confirmDelete");
    oldDiv.classList.remove("flex");
    oldDiv.classList.remove("column");
    oldDiv.parentElement.classList.add('clickable');
    oldDiv.parentElement.classList.remove('showSoftware');
    oldDiv.parentElement.addEventListener('click', callback_Software_Open);

    listener_Software_Edit();
    listener_Software_Trash();
}

async function display_Software_Edit(id) {
    let softInfos = await data_Software_Get(id);
    let oldDiv = document.getElementById(`div_SoftOpened${id}`);
    let newDiv = create_Software_Edit(id);

    let soft = document.getElementById(`li_Software${id}`);
    soft.classList.add("showSoftware");
    soft.classList.remove("clickable");
    soft.removeEventListener('click', callback_Software_Open);

    oldDiv.innerHTML = newDiv.innerHTML;

    let p = document.createElement('p');
    
    p.innerHTML = softInfos['name'];
    document.getElementById(`inputName_SoftwareEdit${id}`).setAttribute("value", p.innerText);
    p.innerHTML = softInfos['version'];
    document.getElementById(`inputVersion_SoftwareEdit${id}`).setAttribute("value", p.innerText);
    p.innerHTML = softInfos['comment'];
    document.getElementById(`inputCommentary_SoftwareEdit${id}`).setAttribute("value", p.innerText);
    p.innerHTML = softInfos['urlSetup'];
    document.getElementById(`inputDLink_SoftwareEdit${id}`).setAttribute("value", p.innerText);

    listener_Software_CancelEdit();
    listener_Software_ConfirmEdit();
}

function display_Software_AddOpen(id) {
    let oldLi = document.getElementById(`li_AddSoftware${id}`);
    let newDiv = create_Software_AddOpen(id);

    oldLi.classList.remove('clickable');
    oldLi.classList.add('showSoftware');
    oldLi.innerHTML = newDiv.outerHTML;
    oldLi.removeEventListener('click', callback_Software_Add);

    listener_Software_AddCancel();
    listener_Software_AddConfirm();
}

function display_Software_AddSimple(id) {
    let oldLi = document.getElementById(`li_AddSoftware${id}`);
    let newLi = create_Software_Add(id);

    oldLi.innerHTML = newLi.innerHTML;

    oldLi.classList.add('clickable');
    oldLi.classList.remove('showSoftware');
    oldLi.addEventListener('click', callback_Software_Add);
}
