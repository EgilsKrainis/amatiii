document.addEventListener("DOMContentLoaded", function() {
    var searchForm = document.getElementById("search-form");
    var searchInput = document.getElementById("search-input");
    var searchResults = document.getElementById("search-results");
  
    searchForm.addEventListener("submit", function(e) {
      e.preventDefault();
      var searchTerm = searchInput.value;
      performSearch(searchTerm);
    });
  
    function performSearch(term) {
      // Šeit varētu būt JSON datu avots no servera vai citur
      var jsonData = [
        {
          "name": "Par mums",
          "title": "Sadaļa Par mums",
          "desc": "Sadaļa",
          "url": "http://kaut.kads.links"
        },
        // Papildus sadaļu dati...
      ];
  
      var results = jsonData.filter(function(item) {
        // Meklēšana pēc nosaukuma, nosaukuma, vai apraksta
        return (
          item.name.toLowerCase().includes(term.toLowerCase()) ||
          item.title.toLowerCase().includes(term.toLowerCase()) ||
          item.desc.toLowerCase().includes(term.toLowerCase())
        );
      });
  
      displayResults(results);
    }
  
    function displayResults(results) {
      var resultHTML = "";
  
      if (results.length === 0) {
        resultHTML = "Nekas netika atrasts.";
      } else {
        results.forEach(function(result) {
          resultHTML += "<h3><a href='" + result.url + "'>" + result.title + "</a></h3>";
          resultHTML += "<p>" + result.desc + "</p>";
        });
      }
  
      searchResults.innerHTML = resultHTML;
    }
  });



  
// document.addEventListener("DOMContentLoaded", function() {
//     var searchForm = document.getElementById("search-form");
//     var searchInput = document.getElementById("search-input");
//     var searchResults = document.getElementById("search-results");

    
//     searchInput.addEventListener("input", function() {
//         var searchTerm = searchInput.value;

//         if (searchTerm.trim() !== "") {
//             performSearch(searchTerm);
//         } else {
//             searchResults.innerHTML = "";
//         }
//     });

//     function performSearch(term) {
//         // Šeit jūs varat izveidot meklēšanas funkcionalitāti un atjaunināt rezultātus "searchResults".
//         // Piemēram, varat izmantot AJAX pieprasījumu, lai iegūtu rezultātus no servera.
//         var searchResult = "Jūsu meklēšanas rezultāti: " + term;
//         searchResults.innerHTML = searchResult;
//     }
// });




// document.getElementById("search-button").addEventListener("click", function() {
//     var searchTerm = searchInput.value;
//     if (searchTerm.trim() !== "") {
//       performSearch(searchTerm);
//     } else {
//       searchResults.innerHTML = "Ievadiet meklēšanas terminu!";
//     }
//   });

//   function performSearch(term) {
//     // Šeit jūs varat izveidot meklēšanas funkcionalitāti un atjaunināt rezultātus "searchResults".
//     // Piemēram, varat izmantot AJAX pieprasījumu, lai iegūtu rezultātus no servera.
//     var searchResult = "Jūsu meklēšanas rezultāti: " + term;
//     searchResults.innerHTML = searchResult;
//   }



