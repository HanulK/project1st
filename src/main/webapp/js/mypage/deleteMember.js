const delBtn = document.querySelector("#memberSecessionBtn");

delBtn.addEventListener("click", delMember);

function delMember() {
  const confirmMember = confirm("탈퇴하시겠습니까?");
  if (confirmMember) {
  	location.href ='gly?command=delete_member'
  }
}

// Writer : Seyoung 