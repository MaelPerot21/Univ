var menuBoxRecrute = document.getElementById('menu-box-recrute');
var menuBoxInterim = document.getElementById('menu-box-interim');
var menuBoxPerformance = document.getElementById('menu-box-performance');
var menuBoxTransformation = document.getElementById('menu-box-transformation');
var menuBoxAPropos = document.getElementById('menu-box-a-propos');
var menuBoxRessources = document.getElementById('menu-box-ressources');

function resetAndPrint(menu, menuButton) {
    menuBoxRecrute.style.display = "none";
    menuBoxPerformance.style.display = "none";
    menuBoxInterim.style.display = "none";
    menuBoxTransformation.style.display = "none";
    menuBoxAPropos.style.display = "none";
    menuBoxRessources.style.display = "none";
    var buttons = document.getElementsByClassName("topMenuButton");
    for (var i = 0; i<buttons.length; i++) {
        buttons[i].style["border"] = 'none';
    }

    menuButton.style.border = '5px solid darkblue';
    menu.style.display = "block";
    document.getElementById('topMenu-box').style.background = 'white';
}

function hide(menu, menuButton) {
    menuButton.style.border = 'none';
    menu.style.display = "none";
    document.getElementById('topMenu-box').style.background = 'transparent';
}

function Recrutement() {
    var menuButton = document.getElementById('ButtonRecrut');
    if(menuBoxRecrute.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxRecrute, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxRecrute, menuButton);
    }
}

function Interim() {
    var menuButton = document.getElementById('ButtonInterim');
    if(menuBoxInterim.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxInterim, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxInterim, menuButton);
    }
}

function Performance() {
    var menuButton = document.getElementById('ButtonPerfo');
    if(menuBoxPerformance.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxPerformance, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxPerformance, menuButton);
    }
}

function Transformation() {
    var menuButton = document.getElementById('ButtonTransfo');
    if(menuBoxTransformation.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxTransformation, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxTransformation, menuButton);
    }
}

function A_propos() {
    var menuButton = document.getElementById('ButtonAP');
    if(menuBoxAPropos.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxAPropos, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxAPropos, menuButton);
    }
}

function Ressources() {
    var menuButton = document.getElementById('ButtonRess');
    if(menuBoxRessources.style.display == "block") { // if is menuBox displayed, hide it
        hide(menuBoxRessources, menuButton);
    }
    else { // if is menuBox hidden, display it
        resetAndPrint(menuBoxRessources, menuButton);
    }
}
