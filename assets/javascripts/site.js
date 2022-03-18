// generic evnet handler
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

// sets up participant search - only fires on the "people" page (aka, the page that has the
// #participant_search_form element
function setupParticipantSearch() {
  var searchIndex;

  // test for the presence of the participant search form; if present, fetch the "all people" index
  // data from the server, and initialize the lunr index with the data.
  document.getElementById("participant_search_form") &&
    fetch("/assets/json/all-people-index.json")
      .then((res) => res.json())
      .then((data) => {
        searchIndex = lunr.Index.load(data);
      });

  // submit handler for the participant search form; assumes that the lunr index has been loaded and
  // indexed already per above
  on("submit", "#participant_search_form", function (ev) {
    ev.preventDefault();
    var searchResultsCont = document.getElementById(
      "people_search_results_container"
    );
    searchResultsCont.classList.remove("d-none");
    var searchResultsEl = document.getElementById("people_search_results");
    if (searchIndex) {
      let queries = [
        ...ev.target.querySelectorAll(
          "input[name=q], input[name='addl_query']"
        ),
      ].map((i) => i.value);
      let allResults = queries.map((q) => searchIndex.search(q));

      // create hash of result ref and number of queries it shows up in
      let resultCountByRef = {};
      for (let i = 0; i < allResults.length; i++) {
        for (let j = 0; j < allResults[i].length; j++) {
          let ref = allResults[i][j].ref;
          if (!resultCountByRef[ref]) {
            resultCountByRef[ref] = 0;
          }
          resultCountByRef[ref] += 1;
        }
      }

      // While looping through the first result set, only add items to results
      // that in are in all result sets.
      let results = [];
      for (let i = 0; i < allResults[0].length; i++) {
        let ref = allResults[0][i].ref;
        if (resultCountByRef[ref] === queries.length) {
          results.push(allResults[0][i]);
        }
      }
      var mostRecentPeopleByName = {};
      var names = results.map((result) => {
        var person = window.allPeople.find((p) => p.id === result.ref);
        if (
          !mostRecentPeopleByName[person.name] ||
          mostRecentPeopleByName[person.name].year < person.year
        ) {
          mostRecentPeopleByName[person.name] = person;
        }
        return person.name;
      });
      var displayedNames = {};
      var resultHtml = names.map((personName) => {
        if (!personName) {
          return "";
        }
        var person = mostRecentPeopleByName[personName];
        if (!person || displayedNames[personName]) {
          return "";
        }
        displayedNames[personName] = true;
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
              <h5 class="mt-0 font-weight-bold">${name}${person.category
            ? ` <span class="badge badge-secondary">${person.category}</span>`
            : ""
          }</h5>
              ${person.bio}
            </div>
          </div>`;
      });
      searchResultsEl.innerHTML = resultHtml.join(" ");
      let zeroResultsEl = document.getElementById(
        "zero_searches_results_found"
      );
      let someResultsEl = document.getElementById("search_results_listing");
      if (results.length === 0) {
        zeroResultsEl.classList.remove("d-none");
        someResultsEl.classList.add("d-none");
      } else {
        zeroResultsEl.classList.add("d-none");
        someResultsEl.classList.remove("d-none");
      }
    }
  });
}

// set up the search filtering behavior - only fires on the "people" page (aka, the page that has
// the #participant_search_form element
function setupSearchFilter() {
  // an internal function that will add/remove a hidden element called "addl_query" to the
  // participant search form. The element will contain filtering information that will be used by
  // lunr in the participant search to filter out the found results based on the additional filter
  // items.
  function updateSearchFormFields(ev) {
    let searchForm = document.getElementById("participant_search_form");
    let form = ev.target.closest("[data-js-search-filter]");
    let checked = [...form.querySelectorAll(":checked")];
    let queries = {};
    for (let i = 0; i < checked.length; i++) {
      if (!queries[checked[i].name]) {
        queries[checked[i].name] = [];
      }
      queries[checked[i].name].push(`${checked[i].name}:${checked[i].value}`);
    }
    newQueries = Object.values(queries).map((q) => q.join(" "));
    searchForm
      .querySelectorAll("input[type='hidden']")
      .forEach((e) => e.remove());
    for (let i = 0; i < newQueries.length; i++) {
      let input = document.createElement("input");
      input.setAttribute("type", "hidden");
      input.setAttribute("name", "addl_query");
      input.setAttribute("value", newQueries[i]);
      searchForm.append(input);
    }
    searchForm.querySelector("[type='submit']").click();
  }

  // when the search filter items are changed, update the search fields
  on("change", "[data-js-search-filter]", updateSearchFormFields);

  // when the search filter items are reset, update the search fields once the call stack clears (
  // setTimeout with timeout of 0)
  on("reset", "[data-js-search-filter]", function (ev) {
    setTimeout(function () {
      updateSearchFormFields(ev);
    }, 0);
  });
}

// setup video searching
function setupVideoSearch() {
  const ids = {
    search: 'video-search-form',
    container: 'video-listing-container',
  };
  const classes = {
    searching: 'is-searching',
    results: 'with-video-results',
    noResults: 'no-video-results',
    result: 'video-result',
    video: 'video-card',
  };
  let searchEl = document.getElementById(ids.search);
  let containerEl = document.getElementById(ids.container);
  let searchIndex = null;

  // don't do anything if we're not on the video search page
  if (!searchEl || !containerEl || !VIDEO_LISTING) {
    return;
  }

  // setup the lunr search index
  // FIXME replace this with a server-side generated lunr index
  searchIndex = lunr(function () {
    this.ref(VIDEO_LISTING.ref);
    VIDEO_LISTING.fields.forEach((field) => this.field(field) );
    VIDEO_LISTING.data.forEach((video) => this.add(video) );
  });

  // when submitting a query:
  //
  // - remove all 'video-result' classes from all video elements
  // - if the query is non-blank
  //   - run a lunr search to find matches
  //   - if any match
  //     - add a 'with-video-results' class to the container
  //      - add a 'video-result' class to each matching video
  //   - otherwise, add a 'no-video-results' class to the container
  // - otherwise
  //   - remove 'with-video-results' and 'no-video-results' from the container
  on("submit", `#${ids.search}`, function (ev) {
    ev.preventDefault();
    let query = ev.target.querySelector("input[name=q]").value.trim();

    // whether or not there's a query, remove all classes from any previously-found video results
    containerEl.querySelectorAll(`.${classes.video}`).forEach((item) => item.classList.remove(classes.result));

    // remove any with-results and no-results classes
    containerEl.classList.remove(classes.searching, classes.results, classes.noResults);

    // if we don't have a search index or a query, there's nothing more to do
    if (!searchIndex || !query) {
      return;
    }

    // we have a query and a search index; run the search!
    containerEl.classList.add(classes.searching);
    let results = searchIndex.search(query);

    // we found some results
    if (results.length > 0) {
      containerEl.classList.add(classes.results);
      console.log(results);
      results.forEach((result) => {
        const resultEl = document.getElementById(`video-${result.ref}`);
        if (resultEl) {
          resultEl.classList.add(classes.result);
        }
      });
    }

    // no results
    else {
      containerEl.classList.add(classes.noResults);
    }
  });
}

function setupVideoFilter() {
  on('click', '.video-filter-group .video-filter', function (ev) {
    ev.preventDefault();
    let filterEl = ev.target;
    filterEl.classList.toggle('active');
  });
}

// execute setup functions on DOM load
setupParticipantSearch();
setupSearchFilter();
setupVideoSearch();
setupVideoFilter();
