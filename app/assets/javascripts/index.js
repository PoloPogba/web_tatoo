console.log(document.getElementsByClassName("btn btn-warning btn-round btn-lg"))


var RedText = function() {
    var CardTest = document.getElementsByClassName("btn btn-warning btn-round btn-lg")
    CardTest[0].style.color = "red"

};
var ButtonEdit = document.getElementsByClassName("btn btn-warning btn-round btn-lg");
ButtonEdit[0].addEventListener("click", RedText);

