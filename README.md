# Overview

This site was originally created for Summer Institute in Computational Social
Science. It is powered by [GitHub Pages](https://pages.github.com/),
[Jekyll](https://jekyllrb.com/), and [Bootstrap](http://getbootstrap.com/).

# Table of Contents

* [Layouts](#layouts)
  * [Default](#default)
  * [Year Home](#year-home)
* [Top-level-directory specific YAML files](#top-level-directory-specific-yaml-files)
* [Navigation Links](#navigation-links)
* [Adding Additional Pages](#adding-additional-pages)
* [Homepage](#homepage)
* [Adding a partner location](#adding-a-partner-location)
* [Admin Documentation](#admin-documentation)

# Layouts

## Default

The [`default`](_layouts/default.html) layout is a very basic layout with a header, navbar, footer, and area where Markdown content converted to HTML will be placed.

## Home

The [`home`](_layouts/home.html) layout is intended to be used for as the homepage. It in includes the global navigation, announcement banner, hero, and promotional content that is located at the root of the [`_data`](_data) directory. For most of these sections, the content can be controlled by the data populated within these [YAML files](#top-level-directory-specific-yaml-files). Should you want to change the content within the announcement banner, you can update the content in the [`announcements.md`](_includes/anncouncements.md) file at the root of the `_includes` directory.

# Navigation Links

The global navigation links to the various, high level information related to the various programs, both historical and current. They are the following:

* Home: links to homepage
* Locations: lists all historical and upcoming locations
* Curriculum: lists the general curriculum
* People: lists all people to participate, organized by location and year

Each global page has a custom sidebar based upon the data it is responsible for. For `Locations` and `People` these are dynamically generated with each new location (more on this later). In the case of `curriculum` this is controlled by the [`curriculum.yml`](_data/curriculum.yml) file in the root of the `_data` directory.

Curriculum example:
```yaml
- day: Day 1
  id: day_1
  topic: Introduction and Ethics
  events:
    - name: "Introduction to computational social science"
      video: "https://www.youtube.com/embed/EF7X9wwl0q4"
      sublinks:
        - link: "https://youtu.be/EF7X9wwl0q4"
          text: "Video"
        - link: "https://github.com/compsocialscience/summer-institute/blob/master/2019/materials/day1-intro-ethics/02-intro-computational-social-science.pdf"
          text: "Slides"
```

Keep in mind that this `YAML` file controls both the generation of the sidebar and the video listing as well.

# Location specific pages

Each location should have it's own unique directory within the file structure. This means, that each location will have a specific directory filled with `YAML` data in `_data/{year}`, as well as a directory of Markdown files in the appropriate year at the root of the project. For simplicity, when creating a new location, we recommend copying the settings from an existing location as a starting point.

# Adding Additional Location Detail Pages

You're free to add additional pages by created a new Markdown file in the directory that would map to the URL that you desire. For example, `/duke/2017/models.md` would be available at the URL `duke/2017/models`.

The Markdown variation that is used by GitHub Pages is [kramdown](https://kramdown.gettalong.org/quickref.html).

You'll always want to include the proper front-matter in the Markdown file to give the page a [layout](#layouts) and a title. Again, we suggest referring to the structure of the other markdown files within the locations directory, to ensure that the correct front-matter is present.

You will also want to update the `sidebar.yml` file within the appropriate location, and add a link to point to your newly created page.

Sidebar example: (eg. [`_data/2020/duke/sidebar.yml`](_data/2020/sidebar.yml))
```yaml
- name: People
  url: "people"
- name: Travel
  url: "travel"
- name: Schedule & Materials
  url: "schedule"
```

and to add a link to the newly created `models.md`:

Sidebar example updated: (eg. [`_data/2020/duke/sidebar.yml`](_data/2020/sidebar.yml))
```yaml
- name: Models
  url: "models"
- name: People
  url: "people"
- name: Travel
  url: "travel"
- name: Schedule & Materials
  url: "schedule"
```

# Adding a partner location

As mentioned early, the global `Locations` page and sidebar is powered by each individual location directory within the file structure. This means, that when a new location is added, the global locations page with update with a new card, the sidebar will update with the appropriate link, and a new `location_detail` page will be generated.

Partner locations must have their own directory with one or more pages. For example, a partner location for 2020 at Northwestern University can have a URL like [https://compsocialscience.github.io/summer-institute/2020/northwestern/](https://compsocialscience.github.io/summer-institute/2018/northwestern/) complete with their own data and sub-pages.

Example steps for creating a new partner location for 2018 at Northwestern University:
1. Create a new file at `2018/northwestern/index.md`.
2. Front matter data in the newly created file should at least include:
   ```yaml
    ---
    layout: location_detail
    partner_site: northwestern
    main: true
    image: /assets/images/location.jpg
    ---
   ```
   The `partner_site` field above tells the site where to look for the data files for this page. In this example, it'd use the data files in `_data/2018/northwestern`. The `main` field identifies that this is the `index.md` file, and should look for the appropriate layout (with images and correct format)
3. Create the data files as desired. For example data, feel free to checkout the `.yml` files in `_data/2019`. When creating the `sidebar.yml` file, you'll need to be sure that the corresponding markdown files exist, or the link with throw a `404: page not found` error.

4. Additional markdown pages (like `apply.md`) may be created inside the `2020/northwestern/` directory. They should use the following front matter data:
    ```yaml
      ---
      layout: location_detail
      partner_site: northwestern
      ---
    ```
    Keep in mind, that this will create a type of `default` location_detail page, that will only read and render the markdown. These pages will therefore be static and not data driven.

    In order to keep things uniform, we also suggest using the same title styling for the title of this new page:

    `<h1 class="display-4">Apply</h1>`

    So after creation, this new page's markdown file should look similar to the following:

    ```yaml
      ---
      layout: location_detail
      partner_site: northwestern
      ---

      `<h1 class="display-4">Apply</h1>`

      # Markdown here
    ```


5. If the home page for the partner location needs a "People" section, add a `people.md` file to the `2020/northwestern` directory. Ensure that the front-matter also matches the other locations with the `people: true` flag to generate the appropriate layout. This will pull the appropriate data from the `people.yml` files created in the `_data` directory.

6. If the home page for the partner location needs a "Schedule & Materials" section, add a `schedule.md` to the `2020/northwestern` Ensure that the front-matter also matches the other locations with the `schedule: true` flag to generate the appropriate layout. Keep in mind that this page is also data driven. Update the `YAML` files appropriately

7. Additional images for the partner site may be added to the `images/` directory within that location directory.

## Requesting access

In order to grant access, we'll need the GitHub usernames of the contributors and the directory name that will be used for the partner site (e.g., `/helsinki` or `/chicago`).

## Submitting changes

In order to make changes to your partner site and have them reflected on the main site, you'll need to get your changes into the `master` branch. You can do this on your own, once you've been granted access (see above).

1. Create a new git branch.
2. Make changes to only the directories you're allowed access to (e.g., `2018/chicago` and `_data/2018/chicago`).
3. Commit your changes to git.
4. Push your changes _to this repository_.
5. Create a pull request to merge your branch into the `master` branch.
6. If all the tests pass, you will be able to merge your changes into `master` via the button the pull request. If the tests fail, inspect the errors from the tests and make corrections by pushing fixes to your branch.
7. Within a few minutes of merging into master, your changes should be deployed to the live site. You may need to clear your browser cache.

# Admin Documentation

Admins of this repository may add and remove collaborators from the [collaboration settings screen](https://github.com/compsocialscience/summer-institute/settings/collaboration). Simply invite people via their GitHub user name giving them "Write" permission.
