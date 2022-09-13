function deleteStudents(){

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length==0){
        alert("Пожайлуйста выберите хотя бы одного студента");
        return;

    }
    var ids = "";
    for (var  i=0;i<checkedCheckboxs.length;i++){
        ids=ids+checkedCheckboxs[i].value+" "

    }
    document.getElementById("idsHiddenDelete").value = ids;
    document.getElementById("deleteForm").submit();

}
function modifyStudent() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Пожайлуста выберите  одного студента");
        return;

    }
    if (checkedCheckboxs.length > 1) {
        alert("Пожайлуста выберите только одного студента");
        return;
    }
        var id = checkedCheckboxs[0].value;


    document.getElementById("idHiddenModify").value = id;
    document.getElementById("modifyForm").submit();

}
function progressStudent() {

    var checkedCheckboxs = document.querySelectorAll('input[name=idStudent]:checked')
    if (checkedCheckboxs.length == 0) {
        alert("Пожайлуста выберите  одного студента");
        return;

    }
    if (checkedCheckboxs.length > 1) {
        alert("Пожайлуста выберите только одного студента");
        return;
    }
    var id = checkedCheckboxs[0].value;


    document.getElementById("idHiddenProgress").value = id;
    document.getElementById("progressForm").submit();

}

