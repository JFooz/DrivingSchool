let inputNomElmt = document.querySelector('#nom');
let inputPrenomElmt = document.querySelector('#prenom');
let inputAgeElmt = document.querySelector('#age');
let nomHelper = document.querySelector('#nom-helper');

console.log(inputAgeElmt);
console.log(inputNomElmt);
console.log(inputPrenomElmt);

inputNomElmt.addEventListener('input', (e)=> {
    if(e.target.value.trim().length > 5) {
    	nomHelper.textContent = 'le nom est trop long';
    }else if (e.target.value.trim().length < 2 && e.target.value.trim().length > 0) {
    	nomHelper.textContent = 'le nom est trop court';
	}else if (e.target.value.trim().length == 0) {
    	nomHelper.textContent = 'le champ est obligatoire';
	}else {
		nomHelper.textContent = '';
	}
});