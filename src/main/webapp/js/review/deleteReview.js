function delete_review(){
const result = confirm('삭제하시겠습니까?');
if (result == 1) {
	 document.reviewForm.action = "gly?command=rate_delete";
	 document.reviewForm.submit();
 }

}

// Writer : Seyoung