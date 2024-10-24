// Sélectionner le bouton "Je veux commencer"
const startButton = document.getElementById("myButton");

// Sélectionner le header et le footer
const header = document.querySelector('header');
const footer = document.querySelector('footer');

// Ajouter un gestionnaire d'événements pour le clic sur le bouton
startButton.addEventListener('click', function () {
    // Ajouter la classe "highlight" au footer
    footer.classList.add('highlight');

    // Attendre 1 seconde avant de rediriger l'utilisateur vers la page de contact
    setTimeout(function () {
        window.location.href = 'contact.html';
    }, 1000);
});

// Sélectionner la liste des raisons pour nous faire confiance
const reasonsList = document.querySelector('#raisons ol');

// Sélectionner les images
const images = document.querySelectorAll('#raisons .images img');

// Ajouter un gestionnaire d'événements pour le clic sur les images
images.forEach(function(image, index) {
    image.addEventListener('click', function() {
        // Retirer la classe "highlight" des autres éléments <li>
        reasonsList.querySelectorAll('.highlight').forEach(function(li) {
            li.classList.remove('highlight');
        });

        // Ajouter la classe "highlight" à l'élément <li> correspondant
        reasonsList.children[index].classList.add('highlight');
    });
});
