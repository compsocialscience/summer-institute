---
layout: location_detail
partner_site: melbourne
---

<style>
/* ═══════════════════════════════════════════════════════
   SICSS Melbourne 2026 · Training Resources styles
   ═══════════════════════════════════════════════════════ */

/* ── Base font ── */
.training-intro,
.training-section,
.res-card,
.theme-section {
  font-size: 1.08rem;
  line-height: 1.65;
}

/* ── Intro note ── */
.training-intro {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #f7fcfb;
  color: #2c3e50;
  font-style: italic;
  margin-bottom: 28px;
}

/* ── Section headers ── */
.training-section {
  padding: 17px 24px;
  border-top: 4px solid #00a99d;
  border-bottom: 1px solid #dce8f0;
  margin: 44px 0 10px 0;
  background: #f7fafc;
  border-radius: 0 8px 0 0;
}
.training-section h2 { color: #242425; margin: 0; font-size: 1.2em; }

/* ── Day sub-headers ── */
.day-header {
  padding: 13px 20px;
  background: linear-gradient(135deg, #f2f7fc 0%, #e8f0f7 100%);
  border: 1.5px solid #ccd8e4;
  border-radius: 10px;
  margin: 20px 0 12px 0;
}
.day-header h3 { color: #1a2e50; margin: 0; font-size: 1.05em; font-weight: 700; }

/* ── Resource card ── */
.res-card {
  margin: 14px 0;
  padding: 18px 22px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
}
.res-card-title {
  color: #1a2e50;
  font-size: 1.05em;
  font-weight: 700;
  margin: 0 0 8px 0;
}
.res-card-meta {
  font-size: 0.78em;
  color: #6b7f90;
  margin: 0 0 6px 0;
  letter-spacing: .01em;
}
.res-card h4 {
  color: #1a2e50;
  font-size: 0.92em;
  font-weight: 700;
  margin: 14px 0 6px 0;
}
.res-card ul {
  margin: 4px 0 0 0;
  padding-left: 18px;
}
.res-card li {
  margin-bottom: 6px;
  font-size: 0.94em;
  color: #3a4a5a;
  line-height: 1.55;
}
.res-card a { color: #00a99d; text-decoration: none; font-weight: 500; }
.res-card a:hover { text-decoration: underline; }
.setup-flag {
  display: inline-block;
  background: #fff3e0;
  color: #e65100;
  font-size: 0.75em;
  font-weight: 700;
  padding: 1px 7px;
  border-radius: 4px;
  margin-left: 4px;
  vertical-align: middle;
}

/* ── Foundational resource list ── */
.start-list { list-style: none; padding: 0; }
.start-list li {
  margin: 10px 0;
  padding: 14px 18px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
  font-size: 0.94em;
  color: #3a4a5a;
  line-height: 1.55;
}
.start-list a { color: #00a99d; text-decoration: none; font-weight: 600; }
.start-list a:hover { text-decoration: underline; }
.res-type {
  display: inline-block;
  background: #e4edf5;
  color: #4a6070;
  font-size: 0.75em;
  font-weight: 600;
  padding: 2px 9px;
  border-radius: 12px;
  margin-left: 6px;
  vertical-align: middle;
}

/* ── Thematic index ── */
.theme-section {
  margin: 18px 0;
  padding: 18px 22px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
}
.theme-section h3 {
  color: #1a2e50;
  font-size: 1em;
  font-weight: 700;
  margin: 0 0 10px 0;
  padding-bottom: 8px;
  border-bottom: 2px solid #e4edf5;
}
.theme-section ul { margin: 4px 0 0 0; padding-left: 18px; }
.theme-section li {
  margin-bottom: 5px;
  font-size: 0.92em;
  color: #3a4a5a;
  line-height: 1.5;
}
.theme-section a { color: #00a99d; text-decoration: none; font-weight: 500; }
.theme-section a:hover { text-decoration: underline; }

/* ── Responsive ── */
@media (max-width: 640px) {
  .res-card { padding: 14px 14px; }
  .training-section { padding: 13px 16px; }
  .day-header { padding: 10px 14px; }
}

/* ── Sticky nav ── */
.toc-nav {
  position: sticky;
  top: 0;
  z-index: 100;
  background: #fff;
  border-bottom: 2px solid #00a99d;
  padding: 10px 0;
  margin: 0 0 28px 0;
  overflow-x: auto;
  white-space: nowrap;
}
.toc-nav a {
  display: inline-block;
  margin: 0 4px;
  padding: 5px 13px;
  border-radius: 20px;
  font-size: 0.82em;
  font-weight: 600;
  color: #1a2e50;
  text-decoration: none;
  border: 1.5px solid #ccd8e4;
  background: #f7fafc;
  transition: background 0.15s, color 0.15s;
}
.toc-nav a:hover {
  background: #00a99d;
  color: #fff;
  border-color: #00a99d;
}
</style>

# Training Resources

<div class="training-intro">
This page compiles pre-reading, tools, and further reading for each confirmed session in the SICSS-Melbourne 2026 program. Use it to prepare before each day and to explore topics that interest you after the institute.
</div>

<!-- <nav class="toc-nav">
  <a href="#start-here">Foundations</a>
  <a href="#day1">Day 1 · CSS Intro</a>
  <a href="#day2">Day 2 · Ethics</a>
  <a href="#day3">Day 3 · Data Collection</a>
  <a href="#day4">Day 4 · Analysis</a>
  <a href="#day5">Day 5 · Careers</a>
  <a href="#week2">Week 2</a>
  <a href="#thematic">Thematic Index</a>
</nav> -->

<!-- ════════════════════════════════════════════════ -->
<div class="training-section" id="start-here">
  <h2>General Resources</h2>
</div>

<ul class="start-list">
  <li>
    <a href="https://www.bitbybitbook.com/" target="_blank" rel="noopener noreferrer">Bit by Bit: Social Research in the Digital Age</a> — Matthew J. Salganik, 2018. A comprehensive, open-access introduction to computational social science covering surveys, experiments, mass collaboration, and ethics. <span class="res-type">Book</span>
  </li>
  <li>
    <a href="https://doi.org/10.1126/science.1167742" target="_blank" rel="noopener noreferrer">Computational Social Science</a> — David Lazer et al., 2009. The foundational paper arguing for a field that leverages large-scale digital data to understand human behaviour. <span class="res-type">Paper</span>
  </li>
  <li>
    <a href="https://www.nhmrc.gov.au/about-us/publications/national-statement-ethical-conduct-human-research-2023" target="_blank" rel="noopener noreferrer">National Statement on Ethical Conduct in Human Research</a> — NHMRC / ARC / Universities Australia, 2023 (updated 2025). Australia's core framework for research ethics, essential for anyone working with human or digital trace data. <span class="res-type">Guide</span>
  </li>
  <li>
    <a href="https://cssbook.net/" target="_blank" rel="noopener noreferrer">Computational Analysis of Communication</a> — Wouter van Atteveldt, Damian Trilling &amp; Carlos Arcila, 2022. An open-access textbook with R and Python code covering text, network, and image analysis. It is not expected of the participants to be familiar with R or Python, but it is advisable to explore what they are and some foundational terms. <span class="res-type">Book</span>
  </li>
  <li>
    <a href="https://r4ds.had.co.nz/" target="_blank" rel="noopener noreferrer">R for Data Science</a> — Hadley Wickham &amp; Garrett Grolemund, 2nd ed. A practical, free introduction to data science with R and the tidyverse for researchers with little coding experience. Another resource that would be useful as an introduction into the key aspects of working with data using R.<span class="res-type">Tutorial</span>
  </li>
  <li>
    <a href="https://melaniewalsh.github.io/Intro-Cultural-Analytics/welcome.html" target="_blank" rel="noopener noreferrer">Introduction to Cultural Analytics &amp; Python</a> — Melanie Walsh, 2021. A free online textbook covering Python basics, text analysis, and social media data specifically for humanities and social science scholars. <span class="res-type">Tutorial</span>
  </li>
</ul>

<!-- ════════════════════════════════════════════════ -->
<div class="training-section" id="thematic">
  <h2>Session-Related Resources</h2>
</div>

<!-- ─── DAY 1 ─── -->
<div class="day-header" id="day1">
  <h3>Day 1 — Introduction to Computational Social Science &nbsp;·&nbsp; Monday, 22 June</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">11:00–12:30 &nbsp;|&nbsp; Keynote Dialogue</p>
  <p class="res-card-title">What is Computational Social Science and Why It Matters in Australia?</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1126/science.1167742" target="_blank" rel="noopener noreferrer">Computational Social Science</a> — Lazer et al., 2009. The landmark essay that defined the field and its potential for studying society at scale. <span class="res-type">Paper</span></li>
    <li><a href="https://www.bitbybitbook.com/en/1st-ed/introduction/" target="_blank" rel="noopener noreferrer">Bit by Bit — Chapter 1: Introduction</a> — Salganik, 2018. An accessible overview of how digital data is transforming social research. <span class="res-type">Book</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://sicss.io/" target="_blank" rel="noopener noreferrer">SICSS Website</a> — Hub for all Summer Institutes in Computational Social Science worldwide.</li>
    <li><a href="https://internetobservatory.org.au/" target="_blank" rel="noopener noreferrer">Australian Internet Observatory (AIO)</a> — Australia-wide research infrastructure for digital platform observability.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1126/science.aaz8170" target="_blank" rel="noopener noreferrer">Computational Social Science: Obstacles and Opportunities</a> — Lazer et al., 2020. A decade-on reassessment of CSS's challenges, including access to proprietary data and issues of generalisation. <span class="res-type">Paper</span></li>
    <li><a href="https://cssbook.net/" target="_blank" rel="noopener noreferrer">Computational Analysis of Communication</a> — van Atteveldt, Trilling &amp; Arcila, 2022. Full open-access textbook with hands-on R/Python code. <span class="res-type">Book</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">15:15–16:30 &nbsp;|&nbsp; Keynote</p>
  <p class="res-card-title">Social Bias in Computational Social Science</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://osf.io/preprints/socarxiv/xr45y_v1" target="_blank" rel="noopener noreferrer">Reflecting on Social Bias: Challenges and Opportunities for Computational Social Science</a> — Kathirgamalingam et al., 2025. The keynote speaker's forthcoming paper on social bias in CSS. <span class="res-type">Preprint</span></li>
    <li><a href="https://doi.org/10.3389/fdata.2019.00013" target="_blank" rel="noopener noreferrer">Social Data: Biases, Methodological Pitfalls, and Ethical Boundaries</a> — Olteanu et al., 2019. A comprehensive survey of biases arising from digital data sources, collection strategies, and analytical methods. <span class="res-type">Paper</span></li>
    <li><a href="https://www.bitbybitbook.com/en/1st-ed/observing-behavior/" target="_blank" rel="noopener noreferrer">Bit by Bit — Chapter 2: Observing Behavior</a> — Salganik, 2018. Covers limitations and biases inherent in using digital trace data for research. <span class="res-type">Book</span></li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1080/0960085X.2021.1927212" target="_blank" rel="noopener noreferrer">Algorithmic bias: review, synthesis, and future research directions</a> — Nima Kordzadeh and Maryam Ghasemaghaei, 2021. A discussion of alogrithmic biases and the importance of considering them in research and data-driven decision-making. <span class="res-type">Paper</span></li>
  </ul>
</div>

<!-- ─── DAY 2 ─── -->
<div class="day-header" id="day2">
  <h3>Day 2 — Working with Data: Ethics and Practices &nbsp;·&nbsp; Tuesday, 23 June</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">09:00–10:30 &nbsp;|&nbsp; Panel</p>
  <p class="res-card-title">Ethics in Computational Social Science</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://www.bitbybitbook.com/en/1st-ed/ethics/" target="_blank" rel="noopener noreferrer">Bit by Bit — Chapter 6: Ethics</a> — Salganik, 2018. A practical guide to ethical considerations in digital-age research, including informed consent and privacy. <span class="res-type">Book</span></li>
    <li><a href="https://www.nhmrc.gov.au/about-us/publications/national-statement-ethical-conduct-human-research-2023" target="_blank" rel="noopener noreferrer">National Statement on Ethical Conduct in Human Research</a> — NHMRC, 2023. Australia's authoritative framework for research involving human participants. <span class="res-type">Guide</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://www.go-fair.org/fair-principles/" target="_blank" rel="noopener noreferrer">FAIR Principles</a> — Guidelines for making research data Findable, Accessible, Interoperable, and Reusable.</li>
    <li><a href="https://www.gida-global.org/careprinciples" target="_blank" rel="noopener noreferrer">CARE Principles for Indigenous Data Governance</a> — Framework centred on Collective benefit, Authority to control, Responsibility, and Ethics.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.17705/1CAIS.04724" target="_blank" rel="noopener noreferrer">Tutorial: Legality and Ethics of Web Scraping</a> — Vlad Krotov, Leigh Johnson, &amp; Leiser Silva, 2020. An examination of ethical and legal challenges when collecting data from the web. <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">11:00–12:30 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Data Donations and Participant-Centric Research</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.5117/CCR2022.2.002.BOES" target="_blank" rel="noopener noreferrer">A framework for privacy preserving digital trace data collection through data donation</a> — Boeschoten et al., 2022. Introduces data donation as a methodology, covering design principles, participant experience, and infrastructure. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://datadonation.eu/" target="_blank" rel="noopener noreferrer">Data Donation (datadonation.eu)</a> — European research hub for data donation methodology, tools, and projects.</li>
    <li><a href="https://aio2024.cloud.edu.au/ddrs/" target="_blank" rel="noopener noreferrer">Australian Internet Observatory (AIO) Data Donation System</a> — A demo version of AIO's data donation platform demonstrating current functionality.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.5117/CCR2022.2.001.ARAU" target="_blank" rel="noopener noreferrer">OSD2F: An Open-Source Data Donation Framework</a> — Araujo et al., 2022. Technical overview of the original data donation framework (now archived, succeeded by Port). <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">15:00–16:00 &nbsp;|&nbsp; Talk</p>
  <p class="res-card-title">Nectar Research Cloud</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://ardc.edu.au/services/ardc-nectar-research-cloud/" target="_blank" rel="noopener noreferrer">ARDC Nectar Research Cloud — ARDC Page</a> — ARDC. Introduction to Australia's national research cloud, what it offers, and who can use it. <span class="res-type">Guide</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://dashboard.rc.nectar.org.au" target="_blank" rel="noopener noreferrer">Nectar Research Cloud Dashboard</a> — The main portal for accessing virtual machines and cloud compute.</li>
    <li><a href="https://tutorials.rc.nectar.org.au/" target="_blank" rel="noopener noreferrer">Nectar Cloud Tutorials</a> — Step-by-step guides for getting started with instances, storage, and networking.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://support.ehelp.edu.au/a/solutions/articles/6000055380" target="_blank" rel="noopener noreferrer">Nectar Cloud Getting Started Guide</a> — ehelp.edu.au. Detailed walkthrough of account setup, authentication via AAF, and launching your first project. <span class="res-type">Tutorial</span></li>
  </ul>
</div>

<!-- ─── DAY 3 ─── -->
<div class="day-header" id="day3">
  <h3>Day 3 — Data Collection and Working Across Disciplines &nbsp;·&nbsp; Wednesday, 24 June</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">09:00–10:30 &nbsp;|&nbsp; Panel</p>
  <p class="res-card-title">Does Computational Social Science Lack Theory?</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1017/CBO9781316257340.001" target="_blank" rel="noopener noreferrer">Preface: Big Data Is Not About the Data!</a> — Gary King, 2016. A provocative argument that CSS suffers from an overemphasis on methodology at the expense of substantive theory. <span class="res-type">Paper</span></li>
    <li><a href="https://doi.org/10.1038/s41586-021-03659-0" target="_blank" rel="noopener noreferrer">Integrating Explanation and Prediction in Computational Social Science</a> — Hofman et al., 2021. Argues for balancing predictive accuracy with explanatory power in CSS research. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://politicalscience.stanford.edu/publications/text-data-new-framework-machine-learning-and-social-sciences" target="_blank" rel="noopener noreferrer">Text as Data: A New Framework for Machine Learning and the Social Sciences</a> — Grimmer, Roberts &amp; Stewart, 2022. An authoritative guide linking computational text methods to social science theory and inference. <span class="res-type">Book</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">11:00–12:30 &nbsp;|&nbsp; Talk</p>
  <p class="res-card-title">The AIReD Platform for Australia-wide Social Media Discovery and Usage</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://internetobservatory.org.au/about/" target="_blank" rel="noopener noreferrer">Australian Internet Observatory — About</a> — Overview of the AIO's mission and the platforms it covers. <span class="res-type">Guide</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://www.aio.eresearch.unimelb.edu.au/" target="_blank" rel="noopener noreferrer">AIReD — Australian Internet Research Dashboard</a> — Platform with 500M+ social media posts from BlueSky, Mastodon, YouTube, GDELT, and historic X/Twitter data. <span class="setup-flag">Setup</span> (requires AAF institutional login)</li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">13:30–15:00 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Collecting and Analysing Data Download Packages</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.5117/CCR2022.2.002.BOES" target="_blank" rel="noopener noreferrer">A framework for privacy preserving digital trace data collection through data donation</a> — Boeschoten et al., 2022. Covers design principles and infrastructure for data download package studies. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://github.com/eyra/port" target="_blank" rel="noopener noreferrer">Port</a> — Open-source framework for locally processing donated data download packages.</li>
    <li><a href="https://datadonation.eu/" target="_blank" rel="noopener noreferrer">Data Donation (datadonation.eu)</a> — Resources on best practices for requesting and using DDPs from major platforms.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.5117/CCR2022.2.002.BOES" target="_blank" rel="noopener noreferrer">A framework for privacy preserving digital trace data collection through data donation</a> — Boeschoten et al., 2022. A detailed methods paper on designing and implementing DDP-based research. <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">15:30–17:00 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Working with Text Using Computational Techniques</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://www.tidytextmining.com/" target="_blank" rel="noopener noreferrer">Text Mining with R: A Tidy Approach</a> — Silge &amp; Robinson, 2017. Free online book covering tokenisation, sentiment analysis, and topic modelling in R. <span class="res-type">Book</span></li>
    <li><a href="https://cssbook.net/" target="_blank" rel="noopener noreferrer">Computational Analysis of Communication — Ch. 10-12</a> — van Atteveldt et al., 2022. Covers text as data from preprocessing to supervised and unsupervised methods. <span class="res-type">Book</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://cran.r-project.org/web/packages/tidytext/" target="_blank" rel="noopener noreferrer">tidytext (R)</a> — R package for tidy text mining workflows. </li>
    <li><a href="https://cran.r-project.org/web/packages/quanteda/" target="_blank" rel="noopener noreferrer">quanteda (R)</a> — Comprehensive R package for quantitative text analysis.</li>
    <li><a href="https://spacy.io/" target="_blank" rel="noopener noreferrer">spaCy (Python)</a> — Industrial-strength NLP library for tokenisation, NER, and text processing.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1017/S0003055421000885" target="_blank" rel="noopener noreferrer">Text as Data: A New Framework for Machine Learning and the Social Sciences</a> — Grimmer, Roberts &amp; Stewart, 2022. The definitive guide to computational text analysis in social science. <span class="res-type">Book</span></li>
    <li><a href="https://ladal.edu.au/" target="_blank" rel="noopener noreferrer">LADAL — Language Technology and Data Analysis Laboratory</a> — Australian-hosted tutorials for NLP in R and Python, designed for linguists and social scientists. <span class="res-type">Tutorial</span></li>
  </ul>
</div>

<!-- ─── DAY 4 ─── -->
<div class="day-header" id="day4">
  <h3>Day 4 — Tools and Approaches to Data Analysis &nbsp;·&nbsp; Thursday, 25 June</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">09:00–10:30 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Screen Capture for Data Collection</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://www.admscentre.org.au/adobservatory/" target="_blank" rel="noopener noreferrer">MOAT</a> — Description of the Australian Internet Observatory's Mobile Ad Observatory Toolkit (MOAT) and relevant work conducted.<span class="res-type">Guide</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://internetobservatory.org.au/screen-capture-explainer/" target="_blank" rel="noopener noreferrer">AIO Mobile Screen Capture Tools</a> — Research-grade mobile and browser extension tools for capturing personalised platform content (ads, feeds, recommendations).</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.25916/7bge-bp35" target="_blank" rel="noopener noreferrer">The Australian Ad Observatory: Background Paper</a> — Jean Burgess, Mark Andrejevic, Daniel Angus &amp; Abdul Karim Obeid, 2022. Outlines the rationale, citizen science approach, and methodology of the project. <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">11:00–12:30 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Using LLMs to Create Data Analysis Pipelines for Text-as-Data Research</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://sicss.io/2026/melbourne/Using-LLMs-to-Create-Pipelines.pdf" target="_blank" rel="noopener noreferrer">PREPARATION steps for the session on ”Using LLMs to Create Data Analysis Pipelines for Text-as-Data Research”</a> - Use this to setup and prepare your computer for the hands-on component of the workshop.</li>
    <li><a href="https://cran.r-project.org/package=quallmer" target="_blank" rel="noopener noreferrer">quallmer: AI-Assisted Qualitative Data Analysis</a> — Maerz &amp; Benoit, 2025. CRAN page for the R package that enables codebook-based, LLM-assisted text coding with built-in replication and validation. <span class="res-type">Tool</span></li>
    <li><a href="https://doi.org/10.48550/arXiv.2303.15056" target="_blank" rel="noopener noreferrer">Can ChatGPT Replace Manual Annotation?</a> — Gilardi et al., 2023. Assesses GPT-4's accuracy as a text annotator compared to crowd workers across multiple tasks. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://github.com/quallmer/quallmer" target="_blank" rel="noopener noreferrer">quallmer (GitHub)</a> — R package for structured LLM-assisted coding, validation, and audit trails in text-as-data research. <span class="setup-flag">Setup</span></li>
    <li><a href="https://github.com/quallmer/quallmer.app" target="_blank" rel="noopener noreferrer">quallmer.app</a> — Interactive Shiny companion app for manual coding, reviewing LLM annotations, and computing agreement metrics.</li>
    <li><a href="https://cran.r-project.org/package=ellmer" target="_blank" rel="noopener noreferrer">ellmer (R)</a> — Backend package for connecting to multiple LLM providers (OpenAI, Anthropic, Google, Ollama).</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1177/08944393241286471" target="_blank" rel="noopener noreferrer">Large Language Models Outperform Expert Coders and Supervised Classifiers at Annotating Political Social Media Messages</a> — Törnberg, 2024. Evaluates LLM annotation quality across multiple political science classification tasks. <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">13:30–14:30 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">RAG Systems in Research</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.48550/arXiv.2005.11401" target="_blank" rel="noopener noreferrer">Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks</a> — Lewis et al., 2020. The seminal paper introducing the RAG framework that combines retrieval with generation. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.48550/arXiv.2312.10997" target="_blank" rel="noopener noreferrer">Retrieval-Augmented Generation for Large Language Models: A Survey</a> — Gao et al., 2024. Comprehensive survey categorising the evolution of RAG into Naive, Advanced, and Modular paradigms. <span class="res-type">Paper</span></li>
  </ul>
</div>

<div class="res-card">
  <p class="res-card-meta">14:45–16:15 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Image Analysis for Qualitative and Quantitative Research</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://cssbook.net/" target="_blank" rel="noopener noreferrer">Computational Analysis of Communication — Ch. 14: Multimedia Analysis</a> — van Atteveldt et al., 2022. Introduces computational image analysis concepts and methods for communication researchers. <span class="res-type">Book</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://espace.library.uq.edu.au/view/UQ:3d79106" target="_blank" rel="noopener noreferrer">Image Machine</a> — Open-source tool for clustering visually similar images using machine vision embeddings and identifying visual patterns in large datasets.</li>
    <li><a href="https://umap-learn.readthedocs.io/" target="_blank" rel="noopener noreferrer">UMAP</a> — Uniform Manifold Approximation and Projection for dimensionality reduction, used for 2D visualisation of image similarity.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.4324/9780429341175" target="_blank" rel="noopener noreferrer">Automating Vision: The Social Impact of the New Camera Consciousness</a> — Anthony McCosker &amp; Rowan Wilken, 2020. Discussion of how machine vision techniques can be applied to analyse visual culture at scale. <span class="res-type">Book</span></li>
  </ul>
</div>

<!-- ─── DAY 5 ─── -->
<div class="day-header" id="day5">
  <h3>Day 5 — Disciplines, Careers, and Industry &nbsp;·&nbsp; Friday, 26 June</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">09:00–10:30 &nbsp;|&nbsp; Panel</p>
  <p class="res-card-title">Cross-Disciplinary Collaboration: Bringing Social Science and Computational Analysis Together</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1038/nature18315" target="_blank" rel="noopener noreferrer">Interdisciplinary research has consistently lower funding success</a> — Bromham et al., 2016. Empirical analysis of why interdisciplinary work is both valuable and difficult, with practical strategies for success. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1126/science.aaz8170" target="_blank" rel="noopener noreferrer">Computational Social Science: Obstacles and Opportunities</a> — Lazer et al., 2020. Discusses how cross-disciplinary teams can overcome institutional and methodological barriers. <span class="res-type">Paper</span></li>
  </ul>
</div>

<!-- ─── WEEK 2 ─── -->
<div class="day-header" id="week2">
  <h3>Week 2 — Collaborative Research Projects &nbsp;·&nbsp; Wed 1 July</h3>
</div>

<div class="res-card">
  <p class="res-card-meta">Wed 1 Jul &nbsp;·&nbsp; 09:00 &nbsp;|&nbsp; Workshop</p>
  <p class="res-card-title">Validation in Computational Social Science</p>

  <h4>Pre-reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1093/pan/mps028" target="_blank" rel="noopener noreferrer">Text as Data: The Promise and Pitfalls of Automatic Content Analysis Methods for Political Texts</a> — Grimmer &amp; Stewart, 2013. Foundational discussion of validation strategies including human evaluation, replication, and inter-coder reliability. <span class="res-type">Paper</span></li>
  </ul>

  <h4>Tools &amp; Platforms</h4>
  <ul>
    <li><a href="https://cran.r-project.org/package=irr" target="_blank" rel="noopener noreferrer">irr (R)</a> — R package for computing inter-rater reliability statistics including Cohen's kappa and Krippendorff's alpha.</li>
  </ul>

  <h4>Further reading</h4>
  <ul>
    <li><a href="https://doi.org/10.1038/s41586-021-03659-0" target="_blank" rel="noopener noreferrer">Integrating Explanation and Prediction in Computational Social Science</a> — Hofman et al., 2021. Practical guidance on balancing predictive accuracy with explanatory validity. <span class="res-type">Paper</span></li>
  </ul>
</div>

<!-- ════════════════════════════════════════════════ -->
<div class="training-section">
  <h2>Thematic Index</h2>
</div>

<div class="theme-section">
  <h3>Foundations &amp; Theory</h3>
  <p>This theme covers the intellectual history, definitions, and core theoretical debates in computational social science. Participants will explore the origins of CSS, discuss the relationship between prediction and explanation, and examine critiques regarding whether CSS lacks theory. Additionally, resources under this theme address key issues of validation and research reproducibility in computational studies.</p>
  <ul>
    <li><strong>What is CSS and Why It Matters in Australia</strong> — Day 1</li>
    <li><strong>Does CSS Lack Theory?</strong> — Day 3</li>
    <li><strong>Validation in CSS</strong> — Week 2</li>
  </ul>
  <p style="font-size:0.88em; color:#6b7f90; margin-top:10px;"><em>Key resources:</em>
    <a href="https://doi.org/10.1126/science.1167742" target="_blank">Lazer et al. (2009)</a>,
    <a href="https://www.bitbybitbook.com/" target="_blank">Bit by Bit</a>,
    <a href="https://doi.org/10.1038/s41586-021-03659-0" target="_blank">Hofman et al. (2021)</a>
  </p>
</div>

<div class="theme-section">
  <h3>Ethics &amp; Research Design</h3>
  <p>Computational social science introduces unique ethical challenges and data quality concerns that go beyond traditional social research. This theme focuses on identifying and mitigating algorithmic and data biases, navigating ethical review processes under Australian and international guidelines, and implementing participant-centric methodologies such as privacy-preserving data donations. Students will learn how to align their research designs with the FAIR and CARE principles.</p>
  <ul>
    <li><strong>Bias in CSS</strong> — Day 1</li>
    <li><strong>Ethics in CSS</strong> — Day 2</li>
    <li><strong>Data Donations and Participant-Centric Research</strong> — Day 2</li>
  </ul>
  <p style="font-size:0.88em; color:#6b7f90; margin-top:10px;"><em>Key resources:</em>
    <a href="https://doi.org/10.3389/fdata.2019.00013" target="_blank">Olteanu et al. (2019)</a>,
    <a href="https://www.nhmrc.gov.au/about-us/publications/national-statement-ethical-conduct-human-research-2023" target="_blank">NHMRC National Statement</a>,
    <a href="https://www.go-fair.org/fair-principles/" target="_blank">FAIR Principles</a>
  </p>
</div>

<div class="theme-section">
  <h3>Data Collection Methods</h3>
  <p>This theme introduces practical techniques and infrastructure for gathering digital trace data. Resources cover the use of API-based dashboards (specifically the AIReD platform), methodologies for collecting and processing user-donated data download packages, and deployed screen capture solutions for observing personalized algorithmic feeds. It also covers the setup and use of the Nectar Research Cloud for scaling data collection.</p>
  <ul>
    <li><strong>The AIReD Platform</strong> — Day 3</li>
    <li><strong>Collecting and Analysing Data Download Packages</strong> — Day 3</li>
    <li><strong>Screen Capture for Data Collection</strong> — Day 4</li>
    <li><strong>Nectar Research Cloud</strong> — Day 2</li>
  </ul>
  <p style="font-size:0.88em; color:#6b7f90; margin-top:10px;"><em>Key resources:</em>
    <a href="https://www.aio.eresearch.unimelb.edu.au/" target="_blank">AIReD</a>,
    <a href="https://github.com/eyra/port" target="_blank">Port</a>,
    <a href="https://dashboard.rc.nectar.org.au" target="_blank">Nectar Cloud</a>
  </p>
</div>

<div class="theme-section">
  <h3>Computational Analysis (Text, Images, LLMs)</h3>
  <p>Once data is collected, computational techniques are required to process and analyze it at scale. This theme spans quantitative and qualitative text analysis (using tidy workflows and R/Python NLP libraries), the deployment of large language models for text-as-data annotation, retrieval-augmented generation (RAG) pipelines, and computer vision methodologies for pattern discovery in large image datasets.</p>
  <ul>
    <li><strong>Working with Text Using Computational Techniques</strong> — Day 3</li>
    <li><strong>Using LLMs for Text-as-Data Research (Quallmer)</strong> — Day 4</li>
    <li><strong>RAG 101</strong> — Day 4</li>
    <li><strong>Image Analysis for Qualitative and Quantitative Research</strong> — Day 4</li>
  </ul>
  <p style="font-size:0.88em; color:#6b7f90; margin-top:10px;"><em>Key resources:</em>
    <a href="https://www.tidytextmining.com/" target="_blank">Text Mining with R</a>,
    <a href="https://github.com/quallmer/quallmer" target="_blank">quallmer</a>,
    <a href="https://doi.org/10.48550/arXiv.2005.11401" target="_blank">Lewis et al. (2020) RAG paper</a>,
    <a href="https://research.qut.edu.au/dmrc/" target="_blank">Image Machine (QUT DMRC)</a>
  </p>
</div>

<div class="theme-section">
  <h3>Careers, Collaboration &amp; Publishing</h3>
  <p>This theme focuses on the professional development of computational social scientists. It provides guides and advice on building successful interdisciplinary collaborations that bridge computer science and social research, working with industry and public policy partners, writing grants for CSS projects, and demystifying the publishing process in cross-disciplinary journals.</p>
  <ul>
    <li><strong>Cross-Disciplinary Collaboration</strong> — Day 5</li>
    <li><strong>Working With and In the Industry</strong> — Day 5</li>
    <li><strong>Career Success</strong> — Day 5</li>
    <li><strong>Grant Writing in CSS</strong> — Day 5</li>
    <li><strong>Demystifying Publishing in CSS</strong> — Day 2</li>
  </ul>
  <p style="font-size:0.88em; color:#6b7f90; margin-top:10px;"><em>Key resources:</em>
    <a href="https://doi.org/10.1038/nature18315" target="_blank">Bromham et al. (2016)</a>,
    <a href="https://doi.org/10.1126/science.aaz8170" target="_blank">Lazer et al. (2020)</a>
  </p>
</div>

<br>
<hr>
<br>

<div class="container" style="display: flex; flex-wrap: nowrap; align-items: center; justify-content: center; gap: 20px;">
  <a href="https://internetobservatory.org.au/" target="_blank" rel="noopener noreferrer">
    <img src="/assets/images/melbourne-aio.png" alt="Australian Internet Observatory" style="max-width: 500px; width: 100%; height: auto; margin-bottom: 15px;">
  </a>
  <a href="https://www.admscentre.org.au/" target="_blank" rel="noopener noreferrer">
    <img src="/assets/images/melbourne-adms.png" alt="ARC Centre for Automated Decision Making and Society" style="max-width: 250px; width: 100%; height: auto; margin-bottom: 15px;">
  </a>
</div>

<br>

<img src="/assets/images/melbourne-ardc.svg" alt="Australian Research Data Commons Logo" style="max-width: 800px; margin-bottom: 15px;">

The Australian Internet Observatory ([https://doi.org/10.25956/twvn-ca19](https://doi.org/10.25956/twvn-ca19)) is a co-investment partnership with RMIT University, QUT, University of Queensland, University of Melbourne, Swinburne University, Deakin University and the Australian Research Data Commons (ARDC) through the HASS and Indigenous Research Data Commons (DOI:[10.3565/hjrp-b141](https://doi.org/10.3565/hjrp-b141)). The ARDC is enabled by the Australian Government's National Collaborative Research Infrastructure Strategy (NCRIS).
