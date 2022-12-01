// console.log(document.getElementById("modal_open_btn"));
// console.log(document.getElementById("modal_close_btn"));
document.getElementById("modal_open_btn").onclick = function () {
  document.getElementById("modal").style.display = "block";
};

document.getElementById("modal_close_btn").onclick = function () {
  document.getElementById("modal").style.display = "none";
};

document.querySelector(".modal_layer").onclick = function () {
  document.getElementById("modal").style.display = "none";
};
