# Guide: Adding Post-Mortems to SICSS Website

This guide explains how to correctly add a post-mortem report for your SICSS location to the website.

## Overview

Post-mortems are reflective reports that describe:
- How the Institute was run
- What worked well
- What could be done differently next time

These reports help future organizers learn from past experiences and improve their own SICSS locations.

## Required Files

To add a post-mortem for your location, you need to create or update **three files**:

### 1. Location's `sidebar.yml` File

**Location:** `_data/{year}/{location}/sidebar.yml`

Add a post-mortem entry to your location's sidebar navigation. This creates a link in your location's sidebar menu.

**Example:** For SICSS-Saarbrücken 2025 (`_data/2025/saarbrucken/sidebar.yml`):

```yaml
- name: "Post Mortem"
  url: "post-mortem"
  link: '#saarbrucken'
```

**Important:** The `link` value must match the anchor ID you'll use in the year's post-mortem.md file (see step 3).

### 2. Location's `post_mortem.yml` File

**Location:** `_data/{year}/{location}/post_mortem.yml`

Create a simple YAML file with a title entry. This signals to the website that a post-mortem exists for this location.

**Example:** For SICSS-Saarbrücken 2025 (`_data/2025/saarbrucken/post_mortem.yml`):

```yaml
- title: "Post-Mortem"

- text: | 
    Your organizing team consisted of...
    [Post-mortem content can go here, or in the year's post-mortem.md file]
```

**Note:** You can include the full post-mortem text in this file using the `text` field with the pipe (`|`) character for multi-line content, OR you can put the content in the year's post-mortem.md file (recommended for longer reports).

### 3. Year's `post-mortem.md` File

**Location:** `{year}/post-mortem.md`

This is the main post-mortem page that displays all location reports for a given year. If this file doesn't exist yet, create it.

**Example:** For 2025 (`2025/post-mortem.md`):

```markdown
---
title: "Post-Mortems"
subtitle: "A collection of post-mortems"
layout: about
---

<h2 class="display-4">Summer Institutes in Computational Social Science 2025 Post-mortem</h2>

**Published on:** [Date]

[Introduction paragraph about the year's SICSS program]

These post-mortems describe, for each site, a) how the Institute was run, b) what each site thinks worked well, and c) what each site will do differently next time.

Skip to: 

- [SICSS-Location1](#location1)
- [SICSS-Location2](#location2)

<h2 class="display-4" id="location1">SICSS-Location1</h2>

[Post-mortem content for Location 1]

<h2 class="display-4" id="location2">SICSS-Location2</h2>

[Post-mortem content for Location 2]
```

**Critical Requirements:**
- Use the `layout: about` in the front matter
- Each location section must have an anchor ID (e.g., `id="saarbrucken"`)
- The anchor ID must match the `link` value in the sidebar.yml (step 1)
- Add your location to the "Skip to:" navigation list at the top

## Step-by-Step Instructions

### For First Post-Mortem of a Year

If you're adding the **first** post-mortem for a year (e.g., 2026):

1. **Create the year's post-mortem.md file:**
   ```bash
   touch 2026/post-mortem.md
   ```

2. **Add the front matter and structure:**
   ```markdown
   ---
   title: "Post-Mortems"
   subtitle: "A collection of post-mortems"
   layout: about
   ---

   <h2 class="display-4">Summer Institutes in Computational Social Science 2026 Post-mortem</h2>

   **Published on:** December 1, 2026

   [Introduction...]

   Skip to: 

   - [SICSS-YourLocation](#yourlocation)

   <h2 class="display-4" id="yourlocation">SICSS-YourLocation</h2>

   [Your post-mortem content here]
   ```

3. **Create your location's post_mortem.yml:**
   ```bash
   touch _data/2026/yourlocation/post_mortem.yml
   ```

4. **Add title to post_mortem.yml:**
   ```yaml
   - title: "Post-Mortem"
   ```

5. **Update your location's sidebar.yml:**
   Add the post-mortem link (see Required Files section above)

### For Additional Post-Mortems in an Existing Year

If the year's post-mortem.md file already exists:

1. **Create your location's post_mortem.yml:**
   ```bash
   touch _data/{year}/{yourlocation}/post_mortem.yml
   ```

2. **Add title to post_mortem.yml:**
   ```yaml
   - title: "Post-Mortem"
   ```

3. **Update your location's sidebar.yml:**
   Add the post-mortem link with the correct anchor

4. **Edit the year's post-mortem.md:**
   - Add your location to the "Skip to:" list
   - Add a new section with an anchor ID:
   ```markdown
   <h2 class="display-4" id="yourlocation">SICSS-YourLocation</h2>

   [Your post-mortem content]
   ```

## Tips for Writing Post-Mortems

### Structure

A good post-mortem typically includes:

1. **Outreach and Application Process**
   - How you advertised the institute
   - Number of applications received
   - Selection criteria and process

2. **Pre-arrival and Onboarding**
   - Communication with participants
   - Preparatory materials provided
   - Technical setup

3. **First Week**
   - Schedule structure
   - Lectures and workshops
   - What worked well
   - What could be improved

4. **Second Week / Group Projects**
   - Project formation process
   - Support provided to teams
   - Final presentations
   - Outcomes

5. **Post-departure**
   - Feedback collection
   - Follow-up with participants
   - Lessons learned for next time

### Best Practices

- **Be honest:** Share both successes and challenges
- **Be specific:** Include concrete examples and numbers
- **Be helpful:** Focus on actionable insights for future organizers
- **Be concise:** While detailed, avoid unnecessary verbosity
- **Include feedback:** Quote or summarize participant feedback when relevant

### Example Content Length

- Short post-mortem: 500-1000 words
- Standard post-mortem: 1000-2000 words
- Detailed post-mortem: 2000-4000 words

## Troubleshooting

### Post-mortem doesn't appear on the website

**Check these items:**

1. ✅ Does `_data/{year}/{location}/post_mortem.yml` exist?
2. ✅ Does it have a `title` field?
3. ✅ Does `{year}/post-mortem.md` exist?
4. ✅ Does the anchor ID in post-mortem.md match the `link` value in sidebar.yml?
5. ✅ Is the location added to the "Skip to:" list?
6. ✅ Have you committed and pushed all three files?

### Link goes to wrong section

**Issue:** The sidebar link jumps to the wrong location or doesn't jump at all.

**Solution:** Ensure the `link` value in sidebar.yml matches the `id` attribute in the post-mortem.md file exactly (case-sensitive).

Example:
- sidebar.yml: `link: '#saarbrucken'`
- post-mortem.md: `<h2 class="display-4" id="saarbrucken">`

### Post-mortem appears in navigation but shows "404"

**Issue:** The year's post-mortem.md file doesn't exist or is in the wrong location.

**Solution:** Create the file at `{year}/post-mortem.md` (not in a subdirectory).

## Examples

### Example 1: SICSS-Saarbrücken 2025

Files created:
- `_data/2025/saarbrucken/post_mortem.yml`
- `_data/2025/saarbrucken/sidebar.yml` (updated)
- `2025/post-mortem.md` (created or updated)

### Example 2: SICSS-Bologna 2024

Files created:
- `_data/2024/bologna/post_mortem.yml`
- `_data/2024/bologna/sidebar.yml` (updated)
- `2024/post-mortem.md` (updated)

## Getting Help

If you encounter issues:

1. Review this guide carefully
2. Check the README.md file in the repository root for additional context
3. Look at existing post-mortems as examples (e.g., 2024/post-mortem.md)
4. Open an issue on GitHub with details about your problem
5. Contact the SICSS technical team

## Additional Resources

- [Main README](../README.md) - General repository documentation
- [2024 Post-Mortems](../2024/post-mortem.md) - Example of a complete post-mortem page
- [Jekyll Documentation](https://jekyllrb.com/) - For understanding the site structure
- [Markdown Guide](https://www.markdownguide.org/) - For formatting your content

## Summary Checklist

When adding a post-mortem, make sure you:

- [ ] Create `_data/{year}/{location}/post_mortem.yml` with a title
- [ ] Update `_data/{year}/{location}/sidebar.yml` with post-mortem link
- [ ] Create or update `{year}/post-mortem.md` with your content
- [ ] Use matching anchor IDs between sidebar.yml and post-mortem.md
- [ ] Add your location to the "Skip to:" navigation
- [ ] Write a comprehensive report with lessons learned
- [ ] Commit and push all changes
- [ ] Verify the post-mortem appears correctly on the website

---

Last updated: December 2025
