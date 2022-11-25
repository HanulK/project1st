const joinBtn = document.querySelector("#joinBtn");
joinBtn.addEventListener("click", go_save);

const idCheck = document.querySelector("#double-check");
const pwCheck = document.querySelector("#correct-check");

function go_save() {
  if (document.signupForm.id.value == "") {
    alert("아이디를 입력하여 주세요.");
    document.signupForm.id.focus();
  } else if (document.signupForm.pw.value == "") {
    alert("비밀번호를 입력해 주세요.");
    document.signupForm.pw.focus();
  } else if (document.signupForm.pw.value != document.signupForm.pwc.value) {
    pwCheck.innerText = "비밀번호가 일치하지 않습니다.";
    pwCheck.style.display = "inline-block";
    document.signupForm.pw.focus();
  } else if (document.signupForm.name.value == "") {
    alert("이름을 입력해 주세요.");
    document.signupForm.name.focus();
  } else if (
    document.signupForm.selYear.value == "" ||
    document.signupForm.selMonth.value == "" ||
    document.signupForm.selDay.value == ""
  ) {
    alert("생년월일을 입력해 주세요.");
    document.signupForm.selYear.focus();
  } else if (document.signupForm.gender.value == "") {
    alert("성별을 입력해 주세요.");
    document.signupForm.gender.focus();
  } else if (document.signupForm.address.value == "") {
    alert("주소를 입력해 주세요.");
    document.signupForm.address.focus();
  } else if (document.signupForm.email.value == "") {
    alert("이메일을 입력해 주세요.");
    document.signupForm.email.focus();
  } else if (
    document.signupForm.phone1.value == "" ||
    document.signupForm.phone2.value == "" ||
    document.signupForm.phone3.value == ""
  ) {
    alert("전화번호를 입력해 주세요.");
    document.signupForm.phone[0].focus();
  } 
  else {
    document.signupForm.action = "gly?command=join";
    document.signupForm.submit();
  }
}
