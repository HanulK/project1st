const joinBtn = document.querySelector("#joinBtn");
joinBtn.addEventListener("click", go_save);

const idCheck = document.querySelector("#double-check");
const pwCheck = document.querySelector("#correct-check");
const signup = document.signupForm;
console.log(signup);
function go_save() {
  if (signup.id.value == "") {
    alert("아이디를 입력하여 주세요.");
    signup.id.focus();
  } else if (signup.id.value != signup.reid.value) {
    alert("중복확인을 클릭하여 주세요.");
    signup.id.focus();
  } else if (signup.pw.value == "") {
    alert("비밀번호를 입력해 주세요.");
    signup.pw.focus();
  } else if (signup.pw.value != signup.pwc.value) {5
    pwCheck.innerText = "비밀번호가 일치하지 않습니다.";
    pwCheck.style.display = "inline-block";
    signup.pw.focus();
  } else if (signup.name.value == "") {
    alert("이름을 입력해 주세요.");
    signup.name.focus();
  } else if (signup.selYear.value == "" || signup.selMonth.value == "" || signup.selDay.value == "") {
    alert("생년월일을 입력해 주세요.");
    signup.selYear.focus();
  } else if (signup.gender.value == "") {
    alert("성별을 입력해 주세요.");
    signup.gender.focus();
  } else if (signup.address.value == "") {
    alert("주소를 입력해 주세요.");
    signup.address.focus();
  } else if (signup.email.value == "") {
    alert("이메일을 입력해 주세요.");
    signup.email.focus();
  } else if (signup.phone1.value == "" || signup.phone2.value == "" || signup.phone3.value == "") {
    alert("전화번호를 입력해 주세요.");
    signup.phone[0].focus();
  } else {
    signup.action = "gly?command=join";
    signup.submit();
  }
}
