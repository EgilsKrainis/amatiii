// Atrod ikonas elementu pēc ID
const icon = document.getElementById("shake-icon");

// Izveido mainīgo, lai izsekotu, vai animācija ir jau aktivizēta
let isAnimating = false;

// Pievieno notikumu klausītāju, kas sāks animāciju, kad lietotājs uzklikšķina uz ikonas
icon.addEventListener("mouseenter", function() {
  // Pārbauda, vai animācija jau nav aktivizēta
  if (!isAnimating) {
    // Pievieno klasi, kas nodrošina animāciju
    icon.classList.add("shake-animation");
    isAnimating = true;

    // Noņem klasi pēc 3 sekundēm, lai pabeigtu animāciju
    setTimeout(function() {
      icon.classList.remove("shake-animation");
      isAnimating = false;
    }, 3000);
  }
});


