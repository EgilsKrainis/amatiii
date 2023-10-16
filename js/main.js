console.log("Hello world");
 
document.addEventListener("DOMContentLoaded", () => {
    const superHeaders = document.getElementsByClassName("container")[0];

    setTimeout(() => {
        superHeaders.style.gridTemplateRows = "2em 6.25em auto 3.75em";
    }, 3000);

    superHeaders.addEventListener("click", () => {
        superHeaders.style.gridTemplateRows = "0 6.25em auto 3.75em";
    });
});