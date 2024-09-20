let first_name = "mael";
let last_name = "perot";
let id = first_name.concat(" ", last_name);

console.log(id);

let is_printed = 0;
let title = "";
function Show_name() {
    if (!is_printed) {
        title = document.getElementById("main_title").innerHTML;
        is_printed = 1;
        to_print = "\n" + id;
        document.getElementById("main_title").innerHTML += to_print;
    }
    else {
        is_printed = 0;
        document.getElementById("main_title").innerHTML = title;
    }
}
    