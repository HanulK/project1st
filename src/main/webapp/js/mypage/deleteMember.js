const delBtn = document.querySelector("#memberSecessionBtn");
console.log(delBtn);

delBtn.addEventListener("click", delMember);

function delMember() {
  const confirmMember = confirm("탈퇴하시겠습니까?");
  console.log(confirmMember);
}
