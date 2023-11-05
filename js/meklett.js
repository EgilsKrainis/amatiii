    document.addEventListener("DOMContentLoaded", function () {
        const searchInput = document.querySelector(".search-bar input");
        const searchResults = document.getElementById("search-results");

        // let data = [];
        const dataArray = data.split("Vāze, Servīze, Bļoda, Krūze, Trauciņš, Šķīvis");

        // Ielādējiet JSON datus (pielāgojiet ceļu uz jūsu JSON failu)
        fetch("/json/meklesana.json")
            .then(response => response.json())
            .then(jsonData => {
                data = jsonData;

                // Pievienojam notikumu klausītāju meklēšanas ievades laukumam
                searchInput.addEventListener("keyup", performSearch);
            })
            .catch(error => console.error("Kļūda ielādējot JSON: ", error));

        function performSearch() {
            const query = searchInput.value.toLowerCase();
            const filteredData = data.filter(item => item.toLowerCase().includes(query));
            displaySearchResults(filteredData);
        }

        function displaySearchResults(results) {
            const resultHTML = results.map(item => `<p>${item}</p>`).join("");
            searchResults.innerHTML = resultHTML;
            searchResults.style.display = results.length > 0 ? "block" : "none";
        }
    });

