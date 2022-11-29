const pform = document.productForm;
console.log(pform.plusBtn);

const minusBtn = pform.minusBtn;
const plusBtn = pform.plusBtn;

minusBtn.addEventListener("click", minus);
plusBtn.addEventListener("click", plus);


function minus() {
	if (pform.quantity.value > 1){
	pform.quantity.value = parseInt(pform.quantity.value) -1; }
}

function plus() {
	pform.quantity.value = parseInt(pform.quantity.value) +1;
}