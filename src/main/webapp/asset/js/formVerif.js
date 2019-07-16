let inputNomElmt = document.querySelector('#nom');
let inputPrenomElmt = document.querySelector('#prenom');
let inputAgeElmt = document.querySelector('#age');
let nomHelper = document.querySelector('#nom-helper');
let prenomHelper = document.querySelector('#prenom-helper');
let buttonSubmitElmt = document.querySelector('#submit-inscription');
let erreur = 

buttonSubmitElmt.setAttribute('disabled', '');

console.log(inputAgeElmt);
console.log(inputNomElmt);
console.log(inputPrenomElmt);

desactiverButton();

inputNomElmt.addEventListener('input', (e)=> {
    if(e.target.value.trim().length > 5) {
    	nomHelper.textContent = 'le nom est trop long';
    	desactiverButton()
    }else if (e.target.value.trim().length < 2 && e.target.value.trim().length > 0) {
    	nomHelper.textContent = 'le nom est trop court';
    	desactiverButton();
    	
	}else if (e.target.value.trim().length == 0) {
    	nomHelper.textContent = 'le champ est obligatoire';
    	desactiverButton();
	}else {
		nomHelper.textContent = '';
		activerButton()
	}
});


inputPrenomElmt.addEventListener('input', (e)=> {
    if(e.target.value.trim().length > 5) {
    	prenomHelper.textContent = 'le prenom est trop long';
    	desactiverButton()
    }else if (e.target.value.trim().length < 2 && e.target.value.trim().length > 0) {
    	prenomHelper.textContent = 'le prenom est trop court';
    	desactiverButton();
    	
	}else if (e.target.value.trim().length == 0) {
		prenomHelper.textContent = 'le champ est obligatoire';
    	desactiverButton();
	}else {
		prenomHelper.textContent = '';
		activerButton()
	}
});



function desactiverButton() {
	buttonSubmitElmt.setAttribute('disabled', '');
}

function activerButton() {
	buttonSubmitElmt.removeAttribute('disabled');
}