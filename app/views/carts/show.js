console.log("coucou")

var info = document.getElementByClassId("informations");
var btn = document.getElementByClassId("show-more");

console.log(info)
console.log(btn)

function Click() {
  info.classList.toggle("collapse");
}

btn.addEventListener("click",Click);







console.log("coucou")

var card = document.querySelectorAll("col-8")

for (i of card) {

  var info = i.querySelector("informations")
  var btn = i.querySelector("show-more");

      info.addEventListener("click", function()
      {
     text.classList.toggle("collapse");
   });

}
