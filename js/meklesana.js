document.addEventListener("DOMContentLoaded", function() {
    var searchForm = document.getElementById("search-form");
    var searchInput = document.getElementById("search-input");
    var searchResults = document.getElementById("search-results");

    // Pievienojam notikumu klausītāju teksta ievades laukam
    searchInput.addEventListener("input", function() {
        var searchTerm = searchInput.value;

        if (searchTerm.trim() !== "") {
            // Ja ir ievadīts meklēšanas termins, veicam meklēšanu
            performSearch(searchTerm);
        } else {
            // Ja meklēšanas lauks ir tukšs, notīram rezultātus
            searchResults.innerHTML = "";
        }
    });

    function performSearch(term) {
        // Šeit jūs varat izveidot meklēšanas funkcionalitāti un atjaunināt rezultātus "searchResults".
        // Piemēram, varat izmantot AJAX pieprasījumu, lai iegūtu rezultātus no servera.
        var searchResult = "Jūsu meklēšanas rezultāti: " + term;
        searchResults.innerHTML = searchResult;
    }
});
