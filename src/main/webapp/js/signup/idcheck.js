const reBtn = document.querySelector(".add_s");
console.log(reBtn);
reBtn.addEventListener("click", idcheck);

function idcheck() {
  if (document.signupForm.id.value == "") {
    alert("아이디를 입력하여 주십시오.");
    document.signupForm.id.focus();
    return;
  }
  var url = "gly?command=id_check_form&id=" + document.signupForm.id.value;
  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}