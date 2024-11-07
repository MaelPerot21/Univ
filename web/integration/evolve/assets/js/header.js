var menuBoxRecrute = document.getElementById('menu-box-recrute');
var menuBoxInterim = document.getElementById('menu-box-interim');    
var menuBoxPerformance = document.getElementById('menu-box-performance');    
var menuBoxTransformation = document.getElementById('menu-box-transformation');    
var menuBoxAPropos = document.getElementById('menu-box-a-propos');    
var menuBoxRessources = document.getElementById('menu-box-ressources');

function annihilation(menu) {
    menuBoxRecrute.style.display = "none";
    menuBoxPerformance.style.display = "none";
    menuBoxInterim.style.display = "none";
    menuBoxTransformation.style.display = "none";
    menuBoxAPropos.style.display = "none";
    menuBoxRessources.style.display = "none";

    menu.style.display = "block";

}

function Recrutement() {
    var menuButton = document.getElementById('ButtonRecrut');
    if(menuBoxRecrute.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxRecrute.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        menuButton.classList.add('highlight');
        annihilation(menuBoxRecrute);
    }
}

function Interim() {
    if(menuBoxInterim.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxInterim.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        annihilation(menuBoxInterim);    
    }
}

function Performance() {
    if(menuBoxPerformance.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxPerformance.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        annihilation(menuBoxPerformance);    
    }
}

function Transformation() {
    if(menuBoxTransformation.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxTransformation.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        annihilation(menuBoxTransformation);    
    }
}

function A_propos() {
    if(menuBoxAPropos.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxAPropos.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        annihilation(menuBoxAPropos);    
    }
}

function Ressources() {
    if(menuBoxRessources.style.display == "block") { // if is menuBox displayed, hide it
        menuBoxRessources.style.display = "none";
    }
    else { // if is menuBox hidden, display it
        annihilation(menuBoxRessources);
    }
}