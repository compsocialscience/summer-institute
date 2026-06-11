---
layout: location_detail
partner_site: melbourne
---

<style>
/* ═══════════════════════════════════════════════════════
   SICSS Melbourne 2026 · Printable Program Handout
   ═══════════════════════════════════════════════════════ */

.handout-banner {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #eef6f5;
  margin-bottom: 24px;
  font-size: 0.95rem;
}

.cover-page {
  text-align: center;
  padding: 40px 20px 50px;
  border-bottom: 3px solid #00a99d;
  margin-bottom: 32px;
}
.cover-page h1 {
  color: #1a2e50;
  font-size: 1.8em;
  margin: 0 0 8px 0;
}
.cover-page .cover-dates {
  color: #4a6070;
  font-size: 1.15em;
  margin: 0 0 20px 0;
}
.cover-page .cover-tagline {
  color: #3a4a5a;
  font-style: italic;
  margin: 0 0 28px 0;
  line-height: 1.5;
}
.cover-logos {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  gap: 24px;
  margin: 28px 0;
}
.cover-logos img { max-height: 70px; width: auto; }
.cover-note {
  font-size: 0.85em;
  color: #6b7f90;
  margin-top: 24px;
}

.venue-ref {
  padding: 18px 22px;
  border: 1px solid #dce8f0;
  border-radius: 8px;
  background: #f7fafc;
  margin-bottom: 32px;
  page-break-after: always;
}
.venue-ref h2 {
  color: #1a2e50;
  font-size: 1.1em;
  margin: 0 0 12px 0;
}
.venue-ref ul { margin: 0; padding-left: 20px; }
.venue-ref li { margin-bottom: 6px; color: #3a4a5a; }

.week-header {
  padding: 14px 20px;
  border-top: 4px solid #00a99d;
  border-bottom: 1px solid #dce8f0;
  margin: 28px 0 16px 0;
  background: #f7fafc;
}
.week-header h2 { color: #242425; margin: 0; font-size: 1.15em; }

.day-section {
  margin: 16px 0 24px;
  border: 1.5px solid #ccd8e4;
  border-radius: 10px;
  overflow: hidden;
  page-break-inside: avoid;
}
.day-header {
  background: linear-gradient(135deg, #f2f7fc 0%, #e8f0f7 100%);
  padding: 16px 20px;
  border-bottom: 1px solid #ccd8e4;
}
.day-badge-row {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 6px;
  flex-wrap: wrap;
}
.day-num-pill {
  background: #1a2e50;
  color: #fff;
  font-size: 0.72em;
  font-weight: 700;
  padding: 3px 11px;
  border-radius: 20px;
}
.day-date-pill {
  background: #e4edf5;
  color: #4a6070;
  font-size: 0.72em;
  font-weight: 600;
  padding: 3px 11px;
  border-radius: 20px;
}
.day-title {
  color: #1a2e50;
  font-size: 1.05em;
  font-weight: 700;
  margin: 0 0 4px 0;
}
.day-venue {
  font-size: 0.85em;
  color: #6b7f90;
  margin: 0;
}

.sessions-inner { padding: 12px 18px 18px; }

.session-block {
  margin: 10px 0;
  padding: 14px 18px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
}
.session-meta {
  font-size: 0.78em;
  color: #6b7f90;
  margin: 0 0 4px 0;
}
.session-title {
  color: #1a2e50;
  font-size: 0.98em;
  font-weight: 700;
  margin: 0 0 6px 0;
}
.session-speakers {
  margin: 0 0 8px 0;
  font-size: 0.9em;
}
.session-speakers a { color: #00a99d; text-decoration: none; }
.session-desc {
  color: #3a4a5a;
  margin: 0 0 10px 0;
  font-size: 0.88em;
  line-height: 1.5;
}
.outcomes-box {
  border-left: 3px solid #1a2e50;
  padding: 8px 12px;
  border-radius: 0 5px 5px 0;
  background: #f3f7fb;
  font-size: 0.82em;
  color: #3a4a5a;
}
.outcomes-box p { margin: 0 0 4px 0; font-weight: 600; color: #1a2e50; }
.outcomes-box ul { margin: 4px 0 0 0; padding-left: 18px; }
.outcomes-box li { margin-bottom: 2px; }

.break-block {
  margin: 6px 0;
  padding: 6px 14px;
  border-radius: 5px;
  font-size: 0.82em;
  background: #f7f9fb;
  border-left: 3px solid #dde6ef;
}
.social-block {
  margin: 14px 0;
  padding: 12px 16px;
  border-left: 4px solid #f0a030;
  border-radius: 0 8px 8px 0;
  background: #fffbf3;
  font-size: 0.9em;
  page-break-inside: avoid;
}

.handout-footer {
  margin-top: 32px;
  padding-top: 16px;
  border-top: 1px solid #dce8f0;
  font-size: 0.8em;
  color: #6b7f90;
  line-height: 1.5;
}

@media print {
  @page { margin: 18mm 15mm; size: A4; }
  .handout-banner, .no-print { display: none !important; }
  .cover-page { page-break-after: always; padding-top: 60px; }
  .week-header { page-break-before: always; }
  .day-section { page-break-inside: avoid; }
  a { color: inherit; text-decoration: none; }
  body { font-size: 10pt; }
}
</style>

<div class="handout-banner no-print">
<strong>Print this page</strong> — use your browser's Print → Save as PDF to create <em>SICSS-Melbourne-2026-Program.pdf</em>. &nbsp;·&nbsp; <a href="schedule">Back to interactive program</a>
</div>

<div class="cover-page">
  <h1>SICSS Melbourne 2026</h1>
  <p class="cover-dates">22 June – 3 July 2026</p>
  <p class="cover-tagline">Week 1 — Foundations, Methods &amp; Theory &nbsp;·&nbsp; Week 2 — Collaborative Research Projects</p>
  <div class="cover-logos">
    <img src="/assets/images/melbourne-aio.png" alt="Australian Internet Observatory">
    <img src="/assets/images/melbourne-adms.png" alt="ARC Centre for Automated Decision Making and Society">
    <img src="/assets/images/melbourne-ardc.svg" alt="Australian Research Data Commons">
  </div>
  <p class="cover-note">Venues and times subject to minor change. Latest updates at sicss.io/melbourne</p>
</div>

<div class="venue-ref">
  <h2>Venue Quick Reference</h2>
  <ul>
    <li><strong>Week 1 (22–26 Jun):</strong> RMIT Building 8 — Megaflex 3, 445 Swanston St (Mon–Wed); RMIT Activator (Thu–Fri)</li>
    <li><strong>Week 2 (29 Jun–3 Jul):</strong> Deakin Downtown — 550 Bourke St, Melbourne</li>
    <li><strong>Social:</strong> Sat 27 Jun — Dights Falls Cultural Tour, 10:00–12:00</li>
  </ul>
</div>

<div class="week-header">
  <h2>Week 1 — Foundations, Methods &amp; Theory &nbsp;·&nbsp; 22–26 June 2026</h2>
</div>

<!-- DAY 1 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 1</span>
      <span class="day-date-pill">Monday, 22 June 2026</span>
    </div>
    <p class="day-title">Introduction to Computational Social Science</p>
    <p class="day-venue">RMIT Building 8 — Megaflex 3</p>
  </div>
  <div class="sessions-inner">

<div class="break-block"><strong>09:30–10:30</strong> &nbsp; Arrivals &amp; Morning Tea</div>

<div class="session-block">
  <p class="session-meta">10:30–11:00 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Welcome &amp; Introduction to SICSS Melbourne</p>
  <p class="session-speakers"><strong>Organisers:</strong> Bogdan Mamaev, Kateryna Kasianenko</p>
</div>

<div class="session-block">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Keynote Dialogue</p>
  <p class="session-title">What is Computational Social Science and Why It Matters in Australia?</p>
  <p class="session-speakers"><strong>Speakers:</strong> Daniel Angus, Olga Boichak, Svetha Venkatesh</p>
  <p class="session-desc">Explore the foundational principles of Computational Social Science (CSS) and its growth within the Australian context.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Explain what CSS is.</li>
      <li>Identify its value in HASS and interdisciplinary research.</li>
      <li>Discuss opportunities for research in CSS across disciplines.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">TBC</p>
  <p class="session-speakers"><strong>Speakers:</strong> TBC</p>
</div>

<div class="break-block"><strong>14:30–15:15</strong> &nbsp; Break</div>

<div class="session-block">
  <p class="session-meta">15:15–16:30 &nbsp;|&nbsp; Hybrid &nbsp;|&nbsp; Keynote</p>
  <p class="session-title">Bias in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong> Ahrabhi Kathirgamalingam</p>
  <p class="session-desc">Learn about common sources of bias in digital media data, and those that stem from data collection strategies, computational methods, and research designs.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Identify methodological bias.</li>
      <li>Recognise inherent limitations of CSS methods.</li>
      <li>Evaluate possible risks and opportunities of a chosen method.</li>
    </ul>
  </div>
</div>

<div class="social-block"><strong>Social Event — Trivia Night</strong> &nbsp;|&nbsp; Oxford Scholar &nbsp;·&nbsp; ~17:30</div>

  </div>
</div>

<!-- DAY 2 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 2</span>
      <span class="day-date-pill">Tuesday, 23 June 2026</span>
    </div>
    <p class="day-title">Working with Data: Ethics and Practices</p>
    <p class="day-venue">RMIT Building 8 — Megaflex 3</p>
  </div>
  <div class="sessions-inner">

<div class="session-block">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Ethics in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong> Dominique Carlon, Ehsan Dehghan, Olga Boichak</p>
  <p class="session-desc">Discussion on ethics, legislation, terms of service, consent, and human research ethics committee requirements.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Make sense of HREC requirements.</li>
      <li>Develop an ethical data collection strategy.</li>
      <li>Understand the necessary steps to ensure compliance with FAIR and CARE principles.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>10:30–11:00</strong> &nbsp; Morning Tea</div>

<div class="session-block">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Data Donations and Participant-Centric Research</p>
  <p class="session-speakers"><strong>Speakers:</strong> Kellie Vella, Lauren Hayden, Michael Esteban</p>
  <p class="session-desc">Approaches to data donation, including data download packages and screen capture using mobile phones and browser extensions.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Design data donation studies.</li>
      <li>Collect digital trace data ethically.</li>
      <li>Manage participants effectively.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Demystifying Publishing in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong> Olga Boichak, Kateryna Kasianenko</p>
</div>

<div class="break-block"><strong>14:30–15:00</strong> &nbsp; Break</div>

<div class="session-block">
  <p class="session-meta">15:00–16:00 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Nectar Research Cloud</p>
  <p class="session-speakers"><strong>Speakers:</strong> ARDC</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>What is Nectar Research Cloud and why you may want to use it.</li>
      <li>How to access it.</li>
    </ul>
  </div>
</div>

  </div>
</div>

<!-- DAY 3 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 3</span>
      <span class="day-date-pill">Wednesday, 24 June 2026</span>
    </div>
    <p class="day-title">Data Collection and Working Across Disciplines</p>
    <p class="day-venue">RMIT Building 8 — Megaflex 3</p>
  </div>
  <div class="sessions-inner">

<div class="session-block">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Does Computational Social Science Lack Theory?</p>
  <p class="session-speakers"><strong>Speakers:</strong> Ehsan Dehghan</p>
  <p class="session-desc">Engages critiques of CSS and examines what researchers can take from them when designing their own projects.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Justify methodological choices using a theoretical framework.</li>
      <li>Critically examine the use of CSS in theory building.</li>
      <li>Analyse the broader implications of computational methods.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>10:30–11:00</strong> &nbsp; Morning Tea</div>

<div class="session-block">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Talk</p>
  <p class="session-title">The AIReD platform for Australia-wide Social Media Discovery and Usage</p>
  <p class="session-speakers"><strong>Speakers:</strong> Richard Sinnott</p>
  <p class="session-desc">Demonstrates the Australian Internet Research Dashboard (AIReD) and how researchers can access and use the platform for social media research.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Describe the scope and capabilities of API-based platforms using AIReD as an example.</li>
      <li>Discover datasets relevant to specific social media research questions.</li>
      <li>Identify appropriate use cases and considerations for using AIReD data in social science research.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block">
  <p class="session-meta">13:30–15:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Collecting and Analysing Data Download Packages</p>
  <p class="session-speakers"><strong>Speakers:</strong> Kellie Vella, Lauren Hayden, Michael Esteban</p>
  <p class="session-desc">Introduces data download packages as an ethical and participant-centred approach to accessing digital trace data.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Evaluate the advantages and best use cases of data donation in CSS.</li>
      <li>Design protocols for data donation.</li>
      <li>Explore donated datasets.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>15:00–15:30</strong> &nbsp; Break</div>

<div class="session-block">
  <p class="session-meta">15:30–17:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Working with Text Using Computational Techniques</p>
  <p class="session-speakers"><strong>Speakers:</strong> Kim Doyle, Daniel Russo-Batterham</p>
  <p class="session-desc">The web is full of text data relevant to social science research, but collecting and analysing it has traditionally required serious programming skills. This hands-on session shows how modern large language models lower that barrier. Participants will learn to use LLM-powered tools to scrape and extract text from real websites, then see how the same approach can be used for typical textual analysis tasks, such as sentiment analysis. Participants will leave with tools and resources to apply in their own research.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Use LLM-powered tools to scrape and extract text from websites.</li>
      <li>Apply LLM-assisted approaches to textual analysis tasks such as sentiment analysis.</li>
      <li>Evaluate the suitability and limitations of LLM-based text collection and analysis methods.</li>
    </ul>
  </div>
</div>

  </div>
</div>

<!-- DAY 4 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 4</span>
      <span class="day-date-pill">Thursday, 25 June 2026</span>
    </div>
    <p class="day-title">Tools and Approaches to Data Analysis</p>
    <p class="day-venue">RMIT Activator</p>
  </div>
  <div class="sessions-inner">

<div class="session-block">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Screen Capture for Data Collection</p>
  <p class="session-speakers"><strong>Speakers:</strong> Dan Tran, Daniel Angus</p>
  <p class="session-desc">Using the AIO Mobile Screen Capture tools as an example, we will discuss when and how to collect and analyse images, text and other data from users' screens.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Design data donation studies that involve screen capture.</li>
      <li>Use screen capture safely and effectively as a source of participant data.</li>
      <li>Understand the analytical steps involved in processing screen capture data.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>10:30–11:00</strong> &nbsp; Morning Tea</div>

<div class="session-block">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Using LLMs to Create Data Analysis Pipelines for Text-as-Data Research</p>
  <p class="session-speakers"><strong>Speakers:</strong> Seraphine F. Maerz</p>
  <p class="session-desc">Learn about the use of LLMs for text-as-data research and put LLMs into practice using the Quallmer R package.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Integrate LLMs into research.</li>
      <li>Deploy LLMs for analysis.</li>
      <li>Analyse LLM output and suitability.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">RAG 101</p>
  <p class="session-speakers"><strong>Speakers:</strong> Futoon Abushaqra, Sachin Pathiyan Cherumanal</p>
  <p class="session-desc">Introduction to Retrieval-Augmented Generation (RAG) and how RAG systems combine information retrieval with large language models.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Understand the basic concept of a RAG system.</li>
      <li>Recognise how RAG integrates retrieval and generation to improve LLM outputs.</li>
      <li>Identify potential applications of RAG in research workflows.</li>
      <li>Be aware of the main benefits and limitations of using RAG systems.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>14:30–14:45</strong> &nbsp; Break</div>

<div class="session-block">
  <p class="session-meta">14:45–16:15 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Image Analysis for Qualitative and Quantitative Research</p>
  <p class="session-speakers"><strong>Speakers:</strong> Kunal Chand, Lauren Hayden</p>
  <p class="session-desc">Large-scale image analysis using computational techniques, including the Image Machine and 2D UMAP for clustering and visualising image similarities.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Apply large-scale image analysis techniques.</li>
      <li>Identify and visualise data patterns.</li>
      <li>Integrate image analysis in research.</li>
    </ul>
  </div>
</div>

  </div>
</div>

<!-- DAY 5 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 5</span>
      <span class="day-date-pill">Friday, 26 June 2026</span>
    </div>
    <p class="day-title">Disciplines, Careers, and Industry</p>
    <p class="day-venue">RMIT Activator</p>
  </div>
  <div class="sessions-inner">

<div class="session-block">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Cross-Disciplinary Collaboration: Bringing Social Science and Computational Analysis Together</p>
  <p class="session-speakers"><strong>Speakers:</strong> Oleg Zendel, Johanne Trippas, Hiruni Kegalle, Oliver Eklund</p>
  <p class="session-desc">What it means to be part of an interdisciplinary team and how to make sure that such collaboration works well.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Manage relationships with colleagues from different academic backgrounds.</li>
      <li>Identify personal goals when working in a team with competing priorities.</li>
      <li>Plan and structure interdisciplinary research projects.</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>10:30–11:00</strong> &nbsp; Morning Tea</div>

<div class="session-block">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Working With and In the Industry</p>
  <p class="session-speakers"><strong>Speakers:</strong> Laura Gartry, Ariel Kuperman, Indigo Holcombe-James</p>
  <p class="session-desc">Laura Gartry and Ariel Kuperman discuss how newsrooms can collaborate with data scientists and AI specialists to develop responsible, editorially grounded uses of AI. Drawing on applied experience, the session explores practical collaboration models that align technical capability with journalistic goals, and the challenge for public-service media of balancing (mis)trust in AI with the principles of trust and accuracy that are fundamental to good journalism, using localised news as an illustrative context. Drawing on her experience as Head of Research at ACMI—Australia's national museum of screen culture, Indigo Holcombe-James reflects on how qualitative research is conducted in a cultural context. Working primarily through ethnographic methods mixed with statistics, she discusses the boundary between academic methods and applied, audience-centred practice.</p>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block">
  <p class="session-meta">13:30–15:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Career Success</p>
  <p class="session-speakers"><strong>Speakers:</strong> Johanne Trippas</p>
  <p class="session-desc">Strategies for project planning, timeline management, supervisor communication, milestone navigation, and building a strong research profile.</p>
</div>

<div class="break-block"><strong>15:00–15:15</strong> &nbsp; Break</div>

<div class="session-block">
  <p class="session-meta">15:15–16:15 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Grant Writing in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong> Daniel Angus</p>
  <p class="session-desc">Practical strategies for positioning interdisciplinary work so it resonates with reviewers and builds a coherent funding trajectory over time.</p>
</div>

  </div>
</div>

<div class="social-block"><strong>27/06 Saturday Social Event</strong> &nbsp;|&nbsp; Dights Falls Cultural Tour &nbsp;·&nbsp; 10:00–12:00</div>

<div class="week-header">
  <h2>Week 2 — Collaborative Research Projects &nbsp;·&nbsp; 29 June – 3 July 2026</h2>
</div>

<!-- DAYS 6-9 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Days 6–9</span>
      <span class="day-date-pill">Mon 29 June – Thu 2 July 2026</span>
    </div>
    <p class="day-title">Collaborative Research Projects</p>
    <p class="day-venue">Deakin Downtown — 550 Bourke St, Melbourne</p>
  </div>
  <div class="sessions-inner">

<p><strong>Morning Sessions — Advanced Workshops</strong></p>

<div class="session-block">
  <p class="session-meta">Tue 30 Jun &nbsp;·&nbsp; 10:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Talk</p>
  <p class="session-title">Music Score Analysis through Natural Language Interfaces</p>
  <p class="session-speakers"><strong>Speaker:</strong> Daniel Russo-Batterham</p>
  <p class="session-desc">A natural language interface for analysing music scores encoded in the MEI format, making computational analysis accessible to researchers without programming expertise.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Understand how MEI encodes the physical properties of structured XML data.</li>
      <li>Explain how MCP-based architectures connect natural language queries to analytical tools.</li>
      <li>Identify appropriate visualisation and notation tools for exploring patterns in encoded music collections.</li>
      <li>Reflect on the design considerations involved in building computational tools for non-technical domain researchers.</li>
    </ul>
  </div>
</div>

<div class="session-block">
  <p class="session-meta">Tue 30 Jun &nbsp;·&nbsp; 15:00–16:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Gems in the Slop: Breaking and Creating with GenAI</p>
  <p class="session-speakers"><strong>Speaker:</strong> Daniel Binns</p>
  <p class="session-desc">What happens when you stop trying to fix the errors? This session invites participants to rethink generative AI not as a tool to be optimised, but as a material to be broken — and to ask what those breaks reveal. Drawing on glitch aesthetics, media materialism, and prompt experimentation, we'll treat AI error not as failure but as data: a window into the underlying structures, associations, and assumptions baked into large language models. Through live demos and hands-on exercises, participants will design their own prompt rituals and use the resulting glitches, hallucinations, and semantic collapses to build richer understandings of how these systems actually work. We'll also consider what it means to translate research into creative form — and what generative AI makes possible (and impossible) in that process.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Understand how and why LLMs produce errors, hallucinations, and unexpected outputs.</li>
      <li>Use glitchy and degraded outputs as analytical data about model behaviour.</li>
      <li>Design prompt experiments that generate productive instability.</li>
      <li>Explore creative research translation through generative tools.</li>
    </ul>
  </div>
</div>

<div class="session-block">
  <p class="session-meta">Wed 1 Jul &nbsp;·&nbsp; 09:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Validation in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong> Matteo Vergani</p>
  <p class="session-desc">Rigorous validation techniques essential for producing trustworthy CSS research outputs.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Find validation techniques to assess the robustness of research design and results.</li>
      <li>Mitigate common validity threats in CSS research designs.</li>
      <li>Produce transparent, reproducible research.</li>
    </ul>
  </div>
</div>

<p><strong>Mid-Morning &amp; Afternoon — Teamwork &amp; Project Development</strong></p>

<div class="session-block">
  <p class="session-meta">Ongoing across Days 6–9 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Collaborative Research Project Work</p>
  <p class="session-speakers"><strong>Support:</strong> Drop-in experts, organisers, and mentors</p>
  <p class="session-desc">Participants work in formed groups on collaborative research projects with technical assistance, theoretical guidance, and feedback throughout each day.</p>
</div>

  </div>
</div>

<!-- DAY 10 -->
<div class="day-section">
  <div class="day-header">
    <div class="day-badge-row">
      <span class="day-num-pill">Day 10</span>
      <span class="day-date-pill">Friday, 3 July 2026</span>
    </div>
    <p class="day-title">Project Presentations &amp; Closing</p>
    <p class="day-venue">Deakin Downtown — 550 Bourke St, Melbourne</p>
  </div>
  <div class="sessions-inner">

<div class="session-block">
  <p class="session-meta">Morning &amp; Afternoon &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Group Presentations, Final Feedback &amp; Closing</p>
  <p class="session-desc">Participants present preliminary findings, methodologies, and proposed solutions from their collaborative week-long projects, followed by final feedback, networking, and closing remarks.</p>
</div>

  </div>
</div>

<div class="handout-footer">
The Australian Internet Observatory is a co-investment partnership with RMIT University, QUT, University of Queensland, University of Melbourne, Swinburne University, Deakin University and the Australian Research Data Commons (ARDC) through the HASS and Indigenous Research Data Commons. The ARDC is enabled by the Australian Government's National Collaborative Research Infrastructure Strategy (NCRIS).
</div>
