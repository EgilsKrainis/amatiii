document.addEventListener("DOMContentLoaded", function () {
  var searchForm = document.getElementById("search-form");
  var searchInput = document.getElementById("search-input");
  var searchResults = document.getElementById("search-results");

  searchForm.addEventListener("submit", function (e) {
    e.preventDefault();
    var searchTerm = searchInput.value;
    performSearch(searchTerm);
  });

  function performSearch(term) {
    // Izveido URL, no kura iegūt JSON datus
    // var searchURL = "https://api.example.com/search?q=" + encodeURIComponent(term);
    var searchURL = "/json/meklesana.json" + encodeURIComponent(term);


    fetch(searchURL)
      .then(function (response) {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        return response.json();
      })
      .then(function (jsonData) {
        displayResults(jsonData);
      })
      .catch(function (error) {
        console.error("There was a problem with the fetch operation:", error);
      });
  }

  function displayResults(results) {
    var resultHTML = "";

    if (results.length === 0) {
      resultHTML = "Nekas netika atrasts.";
    } else {
      results.forEach(function (result) {
        resultHTML += "<h3><a href='" + result.url + "'>" + result.title + "</a></h3>";
        resultHTML += "<p>" + result.desc + "</p>";
      });
    }

    searchResults.innerHTML = resultHTML;
  }
});