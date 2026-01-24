# Adding Learning Materials

This guide explains how to add and update teaching and learning materials on the SICSS website.

Organizers should add materials in two ways:
1.  **Overview Video Library**: Add individual videos (of lectures, tutorials, etc.) to the searchable grid on the [Overview](https://sicss.io/overview) page.
2.  **Alternative Curricula**: Add links to your site's full curriculum or materials to the ["Alternative Curricula"](https://sicss.io/alternative_curriculum) page.

## 1. Adding Videos to the Overview Grid

The [Overview](https://sicss.io/overview) page features a searchable, filterable grid of learning videos. To add a video to this grid, you need to add a new Markdown file to the `_videos` directory. At this time, you will have to manually add info about your video as described below.

### Step-by-Step
1.  **Create a New File**: Create a new Markdown file in the `_videos/` directory. The filename should be lowercase, using dashes for spaces (e.g., `my-new-topic.md`).
2.  **Add Front Matter**: Copy detailed metadata into the top of the file. This metadata controls how the video appears and how it is filtered.

### Front Matter Template
```yaml
---
title: "Title of the Video"
description_seo: "A brief description for search engines."
duration: "10:00"
keywords: topic1, topic2, computational social science
programming_lang: 
  - R
  - Python  # etc., etc.
venue: SICSS-MySite
location: MyCity
author: Author Name
author_title: Title (e.g., Professor)
is_bootcamp: false
date_published: 2025-06-01  # YYYY-MM-DD
has_order: 
preview: https://i.ytimg.com/vi/VIDEO_ID/hqdefault.jpg
video_url: https://www.youtube.com/watch?v=VIDEO_ID
embed_url: https://www.youtube.com/embed/VIDEO_ID
materials:
  - title: Slides
    url: https://link-to-slides.pdf
---
 
A short paragraph describing the video. This will appear on the video's detail page.
```

### How Tags and Filters Work
The filters on the left side of the Overview page (Programming Language, Location, Author) are generated automatically from the metadata in these video files.

-   **To add a new tag to an existing filter**: Simply type the new value in your front matter.
    *   *Example*: If you enter `author: Jane Doe`, "Jane Doe" will automatically appear in the Author filter list if she wasn't there before.
    *   *Example*: If you enter `location: Chicago`, "Chicago" will be added to the Location filter.

-   **To add a completely new filter category**: This requires editing `_config.yml` (under `video_listing: filters`). *Note: This affects the global site structure, so please do this only if necessary and with caution.*

## 2. Adding Alternative Curricula

If you have a full curriculum, a set of tutorials, or materials in a different language, you should list them on the **Alternative Curricula** page.

This is controlled by `_data/alternative_curriculum.md`.

### How to Edit
This is a standard Markdown file.
1.  Open `_data/alternative_curriculum.md`.
2.  Find the section for the current year (or create a new one).
3.  Add a new subsection for your site (e.g., `#### MyPartnerSite`).
4.  Add a bulleted list of your materials with links.

Example:
```markdown
#### MyPartnerSite
- Introduction to Python [Slides](URL_TO_SLIDES)
- Network Analysis in Python [Code](URL_TO_NOTEBOOK)
- [Full Schedule and Materials](URL_TO_YOUR_SITE_SCHEDULE)
```

## 3. Hosting Material Files

We recommend keeping files organized by year and topic in the repository.
1.  Navigate to the directory for the current year (e.g., `2025`).
2.  Create a `materials` directory if one doesn't exist.
3.  Upload your PDFs, RMarkdown files, etc., there.
4.  Use the persistent GitHub URL when linking to these files in your video metadata or alternative curriculum list.
