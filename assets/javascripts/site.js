function on(eventName, elementSelector, handler) {
  document.addEventListener(
    eventName,
    function (e) {
      // loop parent nodes from the target to the delegation node
      for (
        var target = e.target;
        target && target != this;
        target = target.parentNode
      ) {
        if (target.matches(elementSelector)) {
          handler.call(target, e);
          break;
        }
      }
    },
    false
  );
}

function setupParticipantSearch() {
  var searchIndex;
  document.getElementById("participant_search_form") &&
    fetch("/assets/json/all-people-index.json")
      .then((res) => res.json())
      .then((data) => {
        searchIndex = lunr.Index.load(data);
      });
  on("submit", "#participant_search_form", function (ev) {
    ev.preventDefault();
    var searchResultsCont = document.getElementById(
      "people_search_results_container"
    );
    searchResultsCont.classList.remove("d-none");
    var searchResultsEl = document.getElementById("people_search_results");
    if (searchIndex) {
      var results = searchIndex.search(
        ev.target.querySelector("input[name=q]").value
      );
      var resultHtml = results.map((result) => {
        let person = window.allPeople.find((p) => p.id === result.ref);
        if (!person) {
          return "";
        }
        let website =
          person.website ||
          person.webpage ||
          person.twitter ||
          person.linkedin ||
          person.google_scholar;
        let image = '<div style="width: 150px" class="mr-5"></div>';
        if (person.image) {
          image = `<img loading="lazy" src="${person.image}" alt="Image of ${person.name}" class="mr-5 rounded" width="150">`;
        }
        let name = person.name;
        if (website) {
          name = `<a href="${website}" target="_blank" rel="noopener noreferrer">${name}</a>`;
        }
        return `<div class="media mb-5">
            ${image}
            <div class="media-body">
              <h5 class="mt-0 font-weight-bold">${name}</h5>
              ${person.bio}
            </div>
          </div>`;
      });
      searchResultsEl.innerHTML = resultHtml.join(" ");
      if (results.length === 0) {
        searchResultsEl.innerHTML = "<p>No search results for your search.</p>";
      }
    }
  });
}
setupParticipantSearch();
