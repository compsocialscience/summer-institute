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

## Year Home

The [`year_home`](_layouts/year_home.html) layout is intended to be used for as the homepage for a particular year or iteration of the summer institute. It includes the same header, navbar, and footer as `default` and the first section is the Markdown content converted to HTML. It also includes additional sections: People and Schedule. These sections are populated by [top-level-directory specific YAML files](#top-level-directory-specific-yaml-files) with the appropriate data.

People example:
```yaml
faculty:
  title: Faculty
  people:
    - name: Matt Salganik
      image: /assets/images/matt.jpg
      bio: Bio here
      website: https://www.princeton.edu/~mjs3/

teacherassistants:
  title: Teacher Assistants
  people:
    - name: Broderick
      image: http://placehold.it/200x267
```

Schedule example:
```yaml
- date: 2017-06-19
  name: Introduction and Ethics
  events:
    - name: What is Computational Social Science?
      time: "8:00"
    - name: "Ethics: Principles-based approach"
      time: "10:00"
    - name: "Four areas of difficulty: informed consent, informational risk, privacy, and making decisions in the face of uncertainty"
      time: "13:00"
    - name: Problem set
      time: "15:00"
    - name: Dinner & discussion
      time: "19:00"
```
# Top-level-directory specific YAML files

Typically each year would have its own top-level directory. For example the information for the 2017 summer institute would live in `2017/`. Each top-level-directory may also have it's own set of data files that are unique to that year. For 2017, these would live in `_data/2017`. Both the navbar and the special sections in the [`year_home` layout](#year-home) are powered by the data in this directory. Navigation links that are specific to 2017 should live in `_data/2017/navigation.yml`,  people: `_data/2017/people.yml`, and schedule: `_data/2017/schedule.yml`.

# Navigation Links

Each year can have its own `navigation.yml` to include navigation links specific to that year via the [top-level-directory specific YAML files](#top-level-directory-specific-yaml-files). You can also include global links for all years by updating `_data/navigation.yml`. The global links will be on the right-hand side of the navigation bar.

You can added custom navigation links to the navbar by editing the appropriate `navigation.yml` file. This file should be a list of links each with a name and url. A simple example would be:

```yaml
- name: People
  url: "#people"
- name: Schedule
  url: "#schedule"
```

If you'd like to have a drop-down menu, you'll need to specify children links. You can do so as follows:

```yaml
- name: Schedule
  url: "#schedule"
  children:
    - name: Test
      url: "#test"
    - name: Test 2
      url: "#test2"
    - separator: true
    - name: Test 3
      url: "#test3"
```

The resulting drop-down would look like this:

![navigation sample](documentation/navsample.png)

# Adding Additional Pages

You're free to add additional pages by created a new Markdown file in the directory that would map to the URL that you desire. For example, `2017/agenda.md` would be available at the URL `/2017/agenda`. If you wanted to include additional pages within the agenda URL structure, you could use `2017/agenda/index.md` as the main agenda page (`/2017/agenda/`) and additional Markdown files could be added to the agenda directory.

You'll always want to include the proper front-matter in the Markdown file to give the page a [layout](#layouts) and a title.

You can link to your new page from other Markdown files or add it to the [navigation bar](#navigation-links).

The Markdown variation that is used by GitHub Pages is [kramdown](https://kramdown.gettalong.org/quickref.html).

# Homepage

The homepage redirects to a specific year page. To modify which year it should redirect to, update the `current_year` setting in `_config.yml`.

# Adding a partner location

Partner locations can have their own directory with one or more pages. For example, a partner location for 2018 at Northwestern University can have a URL like [https://compsocialscience.github.io/summer-institute/2018/northwestern/](https://compsocialscience.github.io/summer-institute/2018/northwestern/) complete with their own data and sub-pages.

Example steps for creating a new partner location for 2018 at Northwestern University:
1. Create a new file at `2018/northwestern/index.md`.
2. Front matter data in the newly created file should at least include:
   ```yaml
   ---
   partner_site: northwestern
   layout: year_home
   ---
   ```
   The `partner_site` field above tells the site where to look for the data files for this page. In this example, it'd use the data files in `_data/2018/northwestern`.
3. Create the data files as desired. For example data, feel free to checkout the `.yml` files in `_data/2018`. When creating the `navigation.yml` file, you'll need to be sure to use the URLs that refer to the partner location (e.g., `/2018/northwestern/#people`).
4. Additional pages (like `apply.md`) may be created inside the `2018/northwestern/` directory. They should use the following front matter data:
    ```yaml
    ---
    partner_site: northwestern
    layout: default
    ---
    ```
5. If the home page for the partner location needs a "Pre-arrival" section, add `pre_arrival: _pre_arrival.md` to the `2018/northwestern/index.md` front matter and create `2018/northwestern/_pre_arrival.md` file with the Markdown desired for that section.
5. If the home page for the partner location needs a "Live Stream" section, add `live_stream: _live_stream.md` to the `2018/northwestern/index.md` front matter and create `2018/northwestern/_live_stream.md` file with the Markdown desired for that section.
5. Additional images for the partner site may be added to the `2018/northwestern/` directory or an `images/` directory within that directory.

# Partner location contributors

Partner location contributors can be given access to particular portions of the git repository in order to make changes only to their partner site.

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
