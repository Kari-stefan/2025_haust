document.addEventListener("keydown", (e) => {
    const output = document.getElementById("output");
    const flash = document.getElementById("flash");

    output.textContent = `You pressed: ${e.key.toUpperCase()}`;

    // Screen flash effect
    flash.classList.add("flash-active");
    setTimeout(() => {
        flash.classList.remove("flash-active");
    }, 100);
});
