# Overview

This site was originally created for Summer Institute in Computational Social Science. It is powered by [GitHub Pages](https://pages.github.com/), [Jekyll](https://jekyllrb.com/), and [Bootstrap](http://getbootstrap.com/).

# Table of Contents

* [Layouts](#layouts)
  * [Default](#default)
  * [Year Home](#year-home)
* [Top-level-directory specific YAML files](#top-level-directory-specific-yaml-files)
* [Navigation Links](#navigation-links)
* [Adding Additional Pages](#adding-additional-pages)
* [Homepage](#homepage)

# Layouts

## Default

The [`default`](_layouts/default.html) layout is a very basic layout with a header, navbar, footer, and area where Markdown content converted to HTML will be placed.

## Year Home

The [`year_home`](_layouts/year_home.html) layout is intended to be used for as the homepage for a particular year or iteration of the summer institute. It includes the same header, navbar, and footer as `default` and the first section is the Markdown content converted to HTML. It also includes additional sections: Faculty, Speakers, Teaching Assistants, and Schedule. These sections are populated by [top-level-directory specific YAML files](#top-level-directory-specific-yaml-files) with the appropriate data.

Faculty or Speaker example:
```yaml
- name: Matt Salganik
  image: /assets/images/matt.jpg
  bio: Bio here
  website: https://www.princeton.edu/~mjs3/
```

Teacher assistant example:
```yaml
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

Typically each year would have its own top-level directory. For example the information for the 2017 summer institute would live in `2017/`. Each top-level-directory may also have it's own set of data files that are unique to that year. For 2017, these would live in `_data/2017`. Both the navbar and the special sections in the [`year_home` layout](#year-home) are powered by the data in this directory. Navigation links that are specific to 2017 should live in `_data/2017/navigation.yml`,  faculty: `_data/2017/faculty.yml`, speakers: `_data/2017/speakers.yml`, teaching assistants: `_data/2017/teaching_assistants.yml`, and schedule: `_data/2017/schedule.yml`.

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
