const toggle = document.getElementById('Button_DM');

toggle.addEventListener('click', () => {
    document.body.classList.toggle('Darkbuttons');

    if (document.body.classList.contains('dark-mode')) {

    }
});

const button1 = document.getElementById('Button_click');
const display = document.getElementById('display');
let count = 1;
let cost = 10;
let autoClickerInterval = null;

button1.addEventListener('click', () => {
    display.value = parseFloat(display.value) + count;
});

const button2 = document.getElementById('Button_upgrade');
button2.addEventListener('click', () => {
    if (parseFloat(display.value) < cost) {
        alert("Ekki nóg clicks");
        return;
    }
    display.value = parseFloat(display.value) - cost;
    count += 1;
    cost += 20;
});

document.addEventListener("keydown", function(event) {
    if (event.key === "d") {
        display.value = parseFloat(display.value) + count;
    }
});

const button3 = document.getElementById('Button_autoclicker');
button3.addEventListener('click', () => {
    if (parseFloat(display.value) < 100) {
        alert("Ekki nóg clicks fyrir autoclicker");
        return;
    }
    display.value = parseFloat(display.value) - 100;
    if (autoClickerInterval) {
        clearInterval(autoClickerInterval);
    }
    autoClickerInterval = setInterval(() => {
        display.value = parseFloat(display.value) + count;
    }, 1000);
});

const button4 = document.getElementById('Button_reset');
button4.addEventListener('click', () => {
    count = 1;
    cost = 10;
    display.value = 0;
    if (autoClickerInterval) {
        clearInterval(autoClickerInterval);
        autoClickerInterval = null;
    }
    document.body.classList.remove('Darkbuttons');
});