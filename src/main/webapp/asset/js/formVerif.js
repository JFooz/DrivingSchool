let inputNomElmt = document.querySelector('#nom');
let inputPrenomElmt = document.querySelector('#prenom');
let inputAgeElmt = document.querySelector('#age');
let nomHelper = document.querySelector('#nom-helper');
let prenomHelper = document.querySelector('#prenom-helper');
let buttonSubmitElmt = document.querySelector('#submit-inscription');
let nomIsValid = false;
let prenomIsValid = false;

buttonSubmitElmt.setAttribute('disabled', '');

console.log(inputAgeElmt);
console.log(inputNomElmt);
console.log(inputPrenomElmt);

desactiverButton();

inputNomElmt.addEventListener('input', (e)=> {
    if(e.target.value.trim().length > 5) {
    	nomHelper.textContent = 'le nom est trop long';
    	nomIsValid = false;
    }else if (e.target.value.trim().length < 2 && e.target.value.trim().length > 0) {
    	nomHelper.textContent = 'le nom est trop court';
    	nomIsValid = false;
    	
	}else if (e.target.value.trim().length == 0) {
    	nomHelper.textContent = 'le champ est obligatoire';
    	nomIsValid = false;
	}else {
		nomIsValid = true;
		nomHelper.textContent = '';
		
	}
    checkValidForm();
});


inputPrenomElmt.addEventListener('input', (e)=> {
    if(e.target.value.trim().length > 5) {
    	prenomHelper.textContent = 'le prenom est trop long';
    	prenomIsValid = false;
    }else if (e.target.value.trim().length < 2 && e.target.value.trim().length > 0) {
    	prenomHelper.textContent = 'le prenom est trop court';
    	prenomIsValid = false;
    	
	}else if (e.target.value.trim().length == 0) {		
		prenomHelper.textContent = 'le champ est obligatoire';
    	prenomIsValid = false;
    	
	}else {
		prenomIsValid = true;
		prenomHelper.textContent = '';		
	}
    checkValidForm();
});


function checkValidForm() {
	if(nomIsValid && prenomIsValid) {
		activerButton();
	}else {
		desactiverButton();
	}
}


function desactiverButton() {
	buttonSubmitElmt.setAttribute('disabled', '');
}

function activerButton() {
	buttonSubmitElmt.removeAttribute('disabled');
}