---
layout: location_detail
partner_site: melbourne
---

<style>
/* ═══════════════════════════════════════════════════════
   SICSS Melbourne 2026 · Schedule styles
   ═══════════════════════════════════════════════════════ */

/* ── Base font increase ── */
.schedule-note,
.week-header,
details.day-acc,
details.day-acc summary,
.sessions-inner,
.session-block,
.break-block,
.social-block {
  font-size: 1.08rem;
  line-height: 1.65;
}

/* ── Intro note ── */
.schedule-note {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #f7fcfb;
  color: #2c3e50;
  font-style: italic;
  margin-bottom: 28px;
}

/* ── Week banner ── */
.week-header {
  padding: 17px 24px;
  border-top: 4px solid #00a99d;
  border-bottom: 1px solid #dce8f0;
  margin: 44px 0 10px 0;
  background: #f7fafc;
  border-radius: 0 8px 0 0;
}
.week-header h2 { color: #242425; margin: 0; font-size: 1.2em; }

/* ── Day accordion ── */
details.day-acc {
  margin: 13px 0;
  border: 1.5px solid #ccd8e4;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 1px 5px rgba(0,0,0,.06);
  transition: border-color .15s, box-shadow .15s;
}
details.day-acc[open] {
  border-color: #1a2e50;
  box-shadow: 0 3px 14px rgba(26,46,80,.12);
}

/* Summary (collapsed header) */
details.day-acc > summary {
  list-style: none;
  cursor: pointer;
  background: linear-gradient(135deg, #f2f7fc 0%, #e8f0f7 100%);
  padding: 20px 54px 20px 22px;
  position: relative;
  user-select: none;
  -webkit-user-select: none;
}
details.day-acc > summary::-webkit-details-marker { display: none; }
details.day-acc > summary:focus-visible {
  outline: 3px solid #d8eae9;
  outline-offset: -3px;
}

/* Animated chevron */
details.day-acc > summary::after {
  content: "▾";
  position: absolute;
  right: 18px;
  top: 18px;
  font-size: 1.5em;
  color: #aebacf;
  transition: transform .22s ease;
  line-height: 1;
  pointer-events: none;
}
details.day-acc[open] > summary::after {
  transform: rotate(180deg);
}

/* Badge row */
.day-badge-row {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 9px;
  flex-wrap: wrap;
}
.day-num-pill {
  background: #1a2e50;
  color: #fff;
  font-size: 0.72em;
  font-weight: 700;
  padding: 3px 11px;
  border-radius: 20px;
  letter-spacing: .04em;
  white-space: nowrap;
}
.day-date-pill {
  background: #e4edf5;
  color: #4a6070;
  font-size: 0.72em;
  font-weight: 600;
  padding: 3px 11px;
  border-radius: 20px;
  white-space: nowrap;
}
.day-acc-title {
  color: #1a2e50;
  font-size: 1.14em;
  font-weight: 700;
  margin: 0 0 7px 0;
  line-height: 1.3;
}
.day-venue-row {
  font-size: 0.86em;
  color: #6b7f90;
  margin: 0 0 9px 0;
}
.day-venue-row a { color: #6b7f90; text-decoration: underline; text-underline-offset: 2px; }
.day-venue-row a:hover { color: #1a2e50; }
.day-preview {
  color: #3a4a5a;
  font-size: 0.91em;
  font-style: italic;
  margin: 0;
  line-height: 1.55;
}

/* Expanded content */
.day-body {
  background: #fff;
  border-top: 1px solid #ccd8e4;
}
.venue-map-strip {
  overflow: hidden;
  height: 210px;
  border-bottom: 1px solid #dce8f0;
}
.venue-map-strip iframe {
  display: block;
  width: 100%;
  height: 100%;
  border: 0;
}
.sessions-inner {
  padding: 14px 22px 26px;
}

/* ── Session block ── */
.session-block {
  margin: 14px 0;
  padding: 18px 22px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
  scroll-margin-top: 90px;
}
.session-block:target {
  border-color: #00a99d;
  box-shadow: 0 0 0 3px rgba(0, 169, 157, 0.2);
}
.session-meta {
  font-size: 0.78em;
  color: #6b7f90;
  margin: 0 0 6px 0;
  letter-spacing: .01em;
}
.session-title {
  color: #1a2e50;
  font-size: 1.05em;
  font-weight: 700;
  margin: 0 0 8px 0;
}
.session-speakers {
  margin: 0 0 10px 0;
  font-size: 0.94em;
}
.session-speakers a { color: #00a99d; text-decoration: none; font-weight: 500; }
.session-speakers a:hover { text-decoration: underline; }
.speaker-tbd { color: #8a9bb0; font-style: italic; }
.session-desc { color: #3a4a5a; margin: 0 0 12px 0; font-size: 0.94em; line-height: 1.55; }
.outcomes-box {
  border-left: 3px solid #1a2e50;
  padding: 9px 15px;
  border-radius: 0 5px 5px 0;
  background: #f3f7fb;
  font-size: 0.87em;
  color: #3a4a5a;
}
.outcomes-box p { margin: 0 0 4px 0; font-weight: 600; color: #1a2e50; }
.outcomes-box ul { margin: 4px 0 0 0; padding-left: 18px; }
.outcomes-box li { margin-bottom: 3px; }
.break-block {
  margin: 8px 0;
  padding: 7px 15px;
  border-radius: 5px;
  color: #202020;
  font-size: 0.85em;
  background: #f7f9fb;
  border-left: 3px solid #dde6ef;
}
.social-block {
  margin: 18px 0 4px 0;
  padding: 14px 18px;
  border-left: 4px solid #f0a030;
  border-radius: 0 8px 8px 0;
  background: #fffbf3;
  font-size: 0.96em;
}

/* ── Responsive ── */
@media (max-width: 640px) {
  details.day-acc > summary { padding: 16px 46px 16px 16px; }
  .sessions-inner { padding: 10px 14px 18px; }
  .session-block { padding: 14px 14px; }
}
</style>

# Program

<div class="schedule-note" style="font-style: normal; background: #eef6f5;">
<strong>Printable program</strong> — <a href="/2026/melbourne/SICSS-Melbourne-2026-Program.pdf" target="_blank" rel="noopener">Download PDF version</a>
</div>

<div class="week-header">
  <h2>Week 1 — Foundations, Methods &amp; Theory &nbsp;·&nbsp; 22–26 June 2026</h2>
</div>

<!-- ═══════════════════ DAY 1 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 1</span>
    <span class="day-date-pill">Monday, 22 June 2026</span>
  </div>
  <p class="day-acc-title">Introduction to Computational Social Science</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=RMIT+Building+8+Megaflex+3,+445+Swanston+St+Melbourne+VIC+3000" target="_blank" rel="noopener noreferrer">RMIT Building 8 — Megaflex 3</a></p>
  <p class="day-preview">All participants and speakers meet and get to know each other. The program begins with foundational discussions on CSS and its value for interdisciplinary research — what the field is, its opportunities, its limitations, and the work that needs to be done.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.2096175100896!2d144.96130411254828!3d-37.80855883362555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642cb7f336eb1%3A0xa98ed363c8f77b8a!2sBuilding%208%20-%20RMIT%20University!5e0!3m2!1sen!2sau!4v1779156623036!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="break-block"><strong>09:30–10:30</strong> &nbsp; Arrivals &amp; Morning Tea</div>

<div class="session-block" id="session-welcome">
  <p class="session-meta">10:30–11:00 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Welcome &amp; Introduction to SICSS Melbourne</p>
  <p class="session-speakers"><strong>Organisers:</strong>
    <a href="https://bmamaev.com/" target="_blank" rel="noopener noreferrer">Bogdan Mamaev</a>,
    <a href="https://www.admscentre.org.au/kateryna-kasianenko/" target="_blank" rel="noopener noreferrer">Kateryna Kasianenko</a>
  </p>
</div>

<div class="session-block" id="session-css-keynote">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Keynote Dialogue</p>
  <p class="session-title">What is Computational Social Science and Why It Matters in Australia?</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/daniel.angus" target="_blank" rel="noopener noreferrer">Daniel Angus</a>,
    <a href="https://profiles.sydney.edu.au/olga.boichak" target="_blank" rel="noopener noreferrer">Olga Boichak</a>,
    <a href="https://experts.deakin.edu.au/2528-svetha-venkatesh" target="_blank" rel="noopener noreferrer">Svetha Venkatesh</a>
  </p>
  <p class="session-desc">Explore the foundational principles of Computational Social Science (CSS) and its growth within the Australian context. We will examine how CSS transforms our understanding of society and provides unique value for modern research. This is an interactive session — we will introduce ourselves and answer any questions.</p>
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

<div class="session-block" id="speed-dating">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Research Speed Dating</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Discuss your research project with colleagues</li>
      <li>Explain your career goals succintly</li>
    </ul>
  </div>
</div>

<div class="break-block"><strong>14:30–15:15</strong> &nbsp; Break</div>

<div class="session-block" id="session-bias-css">
  <p class="session-meta">15:15–16:30 &nbsp;|&nbsp; Hybrid &nbsp;|&nbsp; Keynote</p>
  <p class="session-title">Bias in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://ahrkat.github.io/" target="_blank" rel="noopener noreferrer">Ahrabhi Kathirgamalingam</a>
  </p>
  <p class="session-desc">Learn about common sources of bias in digital media data, and those that stem from data collection strategies, computational methods, and research designs that incorporate digital data and methodologies. This session contributes to one of our main discussions: what are the limitations and opportunities of CSS and digital methods?</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Identify methodological bias.</li>
      <li>Recognise inherent limitations of CSS methods.</li>
      <li>Evaluate possible risks and opportunities of a chosen method.</li>
    </ul>
  </div>
</div>

  </div>
</div>
</details>

<div class="social-block"><strong>Social Event — Trivia Night</strong> &nbsp;|&nbsp; Oxford Scholar &nbsp;·&nbsp; ~17:30</div>

<!-- ═══════════════════ DAY 2 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 2</span>
    <span class="day-date-pill">Tuesday, 23 June 2026</span>
  </div>
  <p class="day-acc-title">Working with Data: Ethics and Practices</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=RMIT+Building+8+Megaflex+3,+445+Swanston+St+Melbourne+VIC+3000" target="_blank" rel="noopener noreferrer">RMIT Building 8 — Megaflex 3</a></p>
  <p class="day-preview">Ethical foundations and responsible data practices. Participants gain practical frameworks for ethical data workflows to help them understand the steps required before choosing the right data collection methodology.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.2096175100896!2d144.96130411254828!3d-37.80855883362555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642cb7f336eb1%3A0xa98ed363c8f77b8a!2sBuilding%208%20-%20RMIT%20University!5e0!3m2!1sen!2sau!4v1779156623036!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="session-block" id="session-ethics-panel">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Ethics in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://experts.swinburne.edu.au/12345-dominique-carlon" target="_blank" rel="noopener noreferrer">Dominique Carlon</a>,
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/e.dehghan" target="_blank" rel="noopener noreferrer">Ehsan Dehghan</a>,
    <a href="https://profiles.sydney.edu.au/olga.boichak" target="_blank" rel="noopener noreferrer">Olga Boichak</a>
  </p>
  <p class="session-desc">The panel will facilitate a discussion on one of the most important issues when working with digital data — ethics, complying with legislation and terms of service, the issues of consent when working with participant data, and satisfying human research ethics committee requirements.</p>
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

<div class="session-block" id="session-data-donations-day2">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Data Donations and Participant-Centric Research</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/kellie-vella/" target="_blank" rel="noopener noreferrer">Kellie Vella</a>,
    <a href="https://www.admscentre.org.au/lauren-hayden/" target="_blank" rel="noopener noreferrer">Lauren Hayden</a>,
    <a href="https://www.admscentre.org.au/michael-esteban/" target="_blank" rel="noopener noreferrer">Michael Esteban</a>
  </p>
  <p class="session-desc">We will present approaches to data donation, including data download packages and screen capture using mobile phones and browser extensions. We will discuss how to conduct studies that require participants to share their own digital platform data, focusing on ethical considerations, linked methods, and AIO tools.</p>
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

<div class="session-block" id="session-publishing">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Demystifying Publishing in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://profiles.sydney.edu.au/olga.boichak" target="_blank" rel="noopener noreferrer">Olga Boichak</a>,
    <a href="https://www.admscentre.org.au/kateryna-kasianenko/" target="_blank" rel="noopener noreferrer">Kateryna Kasianenko</a>
  </p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul><li><em>TBD</em></li></ul>
  </div>
</div>

<div class="break-block"><strong>14:30–15:00</strong> &nbsp; Break</div>

<div class="session-block" id="session-nectar">
  <p class="session-meta">15:00–16:00 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Nectar: Australian Research Infrastructure for Computational Analysis</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://ardc.edu.au/about-us/our-people/" target="_blank" rel="noopener noreferrer">Sonia Ramza</a>
  </p>
  <p class="session-desc">In this session, we will explore what cloud infrastructure is and how it can support your research in the Australian context. We will show you how to access additional compute on demand and discuss the unique benefits and opportunities of working with remote infrastructure like Nectar.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Describe what cloud compute is.</li>
      <li>Learn how to access Nectar.</li>
      <li>Plan your compute needs when working on a research project.</li>
    </ul>
  </div>
</div>

  </div>
</div>
</details>

<!-- ═══════════════════ DAY 3 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 3</span>
    <span class="day-date-pill">Wednesday, 24 June 2026</span>
  </div>
  <p class="day-acc-title">Data Collection and Working Across Disciplines</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=RMIT+Building+8+Megaflex+3,+445+Swanston+St+Melbourne+VIC+3000" target="_blank" rel="noopener noreferrer">RMIT Building 8 — Megaflex 3</a></p>
  <p class="day-preview">Explore existing and emerging data collection strategies and working in interdisciplinary teams. By the end of the day, attendees learn how to source and validate digital data responsibly in today's research environment.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.2096175100896!2d144.96130411254828!3d-37.80855883362555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642cb7f336eb1%3A0xa98ed363c8f77b8a!2sBuilding%208%20-%20RMIT%20University!5e0!3m2!1sen!2sau!4v1779156623036!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="session-block" id="session-css-theory">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Does Computational Social Science Lack Theory?</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/e.dehghan" target="_blank" rel="noopener noreferrer">Ehsan Dehghan</a>
  </p>
  <p class="session-desc">Critics argue that CSS lets the methodological tail wag the substantive dog; that its predictive success masks explanatory weakness, and that it imports questions to fit available data. This session engages such critiques and examines what researchers can take from them when designing their own projects.</p>
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

<div class="session-block" id="session-aired">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Talk</p>
  <p class="session-title">The AIReD platform for Australia-wide Social Media Discovery and Usage</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/342078-richard-sinnott" target="_blank" rel="noopener noreferrer">Richard Sinnott</a>
  </p>
  <p class="session-desc">This talk focuses on the <a href="https://www.aio.eresearch.unimelb.edu.au/" target="_blank" rel="noopener noreferrer">Australian Internet Research Dashboard (AIReD)</a>, a platform comprising extensive data resources (over 500 million posts) from many social platforms offering an API, including BlueSky, FlickR, GDELT, Mastodon, YouTube, as well as historic data from X/Twitter. The talk covers how the platform came into being, demonstrates its core capabilities, and describes how researchers can access and use the platform for their own social media research needs.</p>
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

<div class="session-block" id="session-ddp-workshop">
  <p class="session-meta">13:30–15:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Collecting and Analysing Data Download Packages</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/kellie-vella/" target="_blank" rel="noopener noreferrer">Kellie Vella</a>,
    <a href="https://www.admscentre.org.au/lauren-hayden/" target="_blank" rel="noopener noreferrer">Lauren Hayden</a>,
    <a href="https://www.admscentre.org.au/michael-esteban/" target="_blank" rel="noopener noreferrer">Michael Esteban</a>
  </p>
  <p class="session-desc">We will introduce data download packages as an ethical and participant-centred approach to accessing digital trace data. Participants will learn how researchers are currently using DDPs, set up a data donation project, and explore donated datasets using computational tools developed or supported by the AIO.</p>
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

<div class="session-block" id="session-working-with-text">
  <p class="session-meta">15:30–17:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Working with Text Using Computational Techniques</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/637022-kim-doyle" target="_blank" rel="noopener noreferrer">Kim Doyle</a>,
    <a href="https://findanexpert.unimelb.edu.au/profile/551741-daniel-russo-batterham" target="_blank" rel="noopener noreferrer">Daniel Russo-Batterham</a>
  </p>
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
</details>

<!-- ═══════════════════ DAY 4 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 4</span>
    <span class="day-date-pill">Thursday, 25 June 2026</span>
  </div>
  <p class="day-acc-title">Tools and Approaches to Data Analysis</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=RMIT+Activator,+Melbourne+VIC" target="_blank" rel="noopener noreferrer">RMIT Activator</a></p>
  <p class="day-preview">Methods that bridge social science and computation. Workshops cover qualitative and quantitative approaches — from screen capture and LLMs to RAG and large-scale image analysis.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.294290470526!2d144.96143457678016!3d-37.80657527197742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642cc5869a901%3A0x22732cdb484e476c!2sRMIT%20Activator!5e0!3m2!1sen!2sau!4v1781219237342!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="session-block" id="session-screen-capture">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Screen Capture for Data Collection</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/dan-tran/" target="_blank" rel="noopener noreferrer">Dan Tran</a>,
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/daniel.angus" target="_blank" rel="noopener noreferrer">Daniel Angus</a> 
  </p>
  <p class="session-desc">Using the AIO Mobile Screen Capture tools as an example, we will discuss when and how to collect and analyse images, text and other data from users' screens. We will cover the technical and ethical requirements for this form of data collection and how to approach the subsequent analysis.</p>
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

<div class="session-block" id="session-llm-pipelines">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Using LLMs to Create Data Analysis Pipelines for Text-as-Data Research</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/1051597-seraphine-maerz" target="_blank" rel="noopener noreferrer">Seraphine F. Maerz</a>
  </p>
  <p class="session-desc">Learn about the use of LLMs for text-as-data research. We will explore how LLMs streamline large-scale analysis and facilitate the creation of automated data analysis pipelines. Finally, we'll put LLMs into practice using the Quallmer R package.</p>
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

<div class="session-block" id="session-rag-101">
  <p class="session-meta">13:30–14:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">RAG 101</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/futoon-abushaqra/" target="_blank" rel="noopener noreferrer">Futoon Abushaqra</a>,
    <a href="https://www.rmit.edu.au/profiles/p/sachin-pathiyan-cherumanal2" target="_blank" rel="noopener noreferrer">Sachin Pathiyan Cherumanal</a>
  </p>
  <p class="session-desc">This session will introduce participants to the fundamentals of Retrieval-Augmented Generation (RAG), a framework that combines information retrieval with large language models (LLMs) to produce more accurate and context-aware responses. It will provide a high-level overview of how RAG systems work.</p>
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

<div class="session-block" id="session-image-analysis">
  <p class="session-meta">14:45–16:15 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Image Analysis for Qualitative and Quantitative Research</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://research.qut.edu.au/dmrc/people/kunal-chand/" target="_blank" rel="noopener noreferrer">Kunal Chand</a>,
    <a href="https://www.admscentre.org.au/lauren-hayden/" target="_blank" rel="noopener noreferrer">Lauren Hayden</a>
  </p>
  <p class="session-desc">This session discusses large-scale image analysis using computational techniques. We introduce key concepts in machine vision and guide participants through a manual image classification activity. We will demonstrate the "Image Machine," a tool designed to cluster visually similar images and identify patterns, and "2D UMAP" as an alternative approach to plotting graphical similarities in images. The presentation will draw on illustrative examples from recent research to demonstrate how machine vision techniques can be effectively applied to social science analysis.</p>
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
</details>

<!-- ═══════════════════ DAY 5 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 5</span>
    <span class="day-date-pill">Friday, 26 June 2026</span>
  </div>
  <p class="day-acc-title">Disciplines, Careers, and Industry</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=RMIT+Activator,+Melbourne+VIC" target="_blank" rel="noopener noreferrer">RMIT Activator</a></p>
  <p class="day-preview">Real-world applications of CSS in research and career pathways. By the end of Week 1, participants get ready for teamwork and think about the research questions they will explore in the second week.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.294290470526!2d144.96143457678016!3d-37.80657527197742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642cc5869a901%3A0x22732cdb484e476c!2sRMIT%20Activator!5e0!3m2!1sen!2sau!4v1781219237342!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="session-block" id="session-interdisciplinary-panel">
  <p class="session-meta">09:00–10:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Cross-Disciplinary Collaboration: Bringing Social Science and Computational Analysis Together</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.rmit.edu.au/profiles/z/oleg-zendel" target="_blank" rel="noopener noreferrer">Oleg Zendel</a>,
    <a href="https://www.rmit.edu.au/profiles/t/j-trippas" target="_blank" rel="noopener noreferrer">Johanne Trippas</a>,
    <a href="https://findanexpert.unimelb.edu.au/profile/1070371-hiruni-kegalle" target="_blank" rel="noopener noreferrer">Hiruni Kegalle</a>,
    <a href="https://www.rmit.edu.au/profiles/e/oliver-eklund" target="_blank" rel="noopener noreferrer">Oliver Eklund</a>
  </p>
  <p class="session-desc">We will talk about what it means to be part of an interdisciplinary team and how to make sure that such collaboration works well. Drawing from individual experiences, the panel members will discuss how hard or easy it can be for researchers from different backgrounds to collaborate with each other and what considerations should be taken when working on a big project.</p>
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

<div class="session-block" id="session-industry-panel">
  <p class="session-meta">11:00–12:30 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Panel</p>
  <p class="session-title">Working With and In the Industry</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.abc.net.au/news/laura-gartry/5595204" target="_blank" rel="noopener noreferrer">Laura Gartry</a>,
    <a href="https://www.linkedin.com/in/arielkuperman/" target="_blank" rel="noopener noreferrer">Ariel Kuperman</a>,
    <a href="https://www.admscentre.org.au/indigo-holcombe-james/" target="_blank" rel="noopener noreferrer">Indigo Holcombe-James</a>,
    <a href="https://www.linkedin.com/in/andrew-mcmahon-95461742/" target="_blank" rel="noopener noreferrer">Andrew McMahon</a>
  </p>
  <p class="session-desc">Laura Gartry and Ariel Kuperman discuss how newsrooms can collaborate with data scientists and AI specialists to develop responsible, editorially grounded uses of AI. Drawing on applied experience, the session explores practical collaboration models that align technical capability with journalistic goals, and the challenge for public-service media of balancing (mis)trust in AI with the principles of trust and accuracy that are fundamental to good journalism, using localised news as an illustrative context. Drawing on her experience as Head of Research at ACMI—Australia's national museum of screen culture, Indigo Holcombe-James reflects on how qualitative research is conducted in a cultural context. Working primarily through ethnographic methods mixed with statistics, she discusses the boundary between academic methods and applied, audience-centred practice.</p>
</div>

<div class="break-block"><strong>12:30–13:30</strong> &nbsp; Lunch</div>

<div class="session-block" id="session-career-success">
  <p class="session-meta">13:30–15:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Career Success</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.rmit.edu.au/profiles/t/j-trippas" target="_blank" rel="noopener noreferrer">Johanne Trippas</a>
  </p>
  <p class="session-desc">The workshop equips HDR candidates and ECRs with strategies for project planning, timeline management, supervisor communication, milestone navigation, and building a strong research profile suitable for different pathways in Australia.</p>
</div>

<div class="break-block"><strong>15:00–15:15</strong> &nbsp; Break</div>

<div class="session-block" id="session-grant-writing">
  <p class="session-meta">15:15–16:15 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Grant Writing in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/daniel.angus" target="_blank" rel="noopener noreferrer">Daniel Angus</a>
  </p>
  <p class="session-desc">Securing research funding is an essential skill for any academic career, but computational social science researchers face particular challenges when navigating funding schemes. This session will explore practical strategies for positioning interdisciplinary work so it resonates with reviewers, avoids falling between disciplinary boundaries, and builds a coherent funding trajectory over time.</p>
</div>

  </div>
</div>
</details>

<div class="week-header">
  <h2>Week 2 — Collaborative Research Projects &nbsp;·&nbsp; 29 June – 3 July 2026</h2>
</div>

<div class="social-block"><strong>27/06 Saturday Social Event — </strong> &nbsp;|&nbsp; Dights Falls Cultural Tour &nbsp;·&nbsp;  10:00 - 12:00</div>

<!-- ═══════════════════ DAYS 6–9 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Days 6–9</span>
    <span class="day-date-pill">Mon 29 June – Thu 2 July 2026</span>
  </div>
  <p class="day-acc-title">Collaborative Research Projects</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=Deakin+Downtown,+550+Bourke+St+Melbourne+VIC+3000" target="_blank" rel="noopener noreferrer">Deakin Downtown — 550 Bourke St, Melbourne</a></p>
  <p class="day-preview">The week transitions from formal instruction to hands-on, participant-led group research. Mornings feature advanced methodological workshops; the rest of each day is dedicated to collaborative teamwork supported by drop-in experts and mentors.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.6945036735665!2d144.94514735618282!3d-37.82062406237891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d509d17bc27%3A0x5a6142623152382d!2sDeakin%20Downtown!5e0!3m2!1sen!2sau!4v1779156493045!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<p><strong>Morning Sessions (90 min) — Advanced Workshops</strong></p>

<div class="session-block" id="session-music-nli">
  <p class="session-meta">Tue 30 Jun &nbsp;·&nbsp; 10:00 &nbsp;|&nbsp;In-person &nbsp;|&nbsp; Talk</p>
  <p class="session-title">Music Score Analysis through Natural Language Interfaces</p>
  <p class="session-speakers"><strong>Speaker:</strong>
   <a href="https://findanexpert.unimelb.edu.au/profile/551741-daniel-russo-batterham" target="_blank" rel="noopener noreferrer">Daniel Russo-Batterham</a>
  </p>
  <p class="session-desc">This session presents a natural language interface for analysing music scores encoded in the MEI (Music Encoding Initiative) format. The system allows users to query encoded music collections through plain-language questions, which are automatically translated into tool calls that retrieve and visualise results. This tool is an example that makes computational analysis accessible to researchers without programming expertise.</p>
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

<div class="session-block" id="session-gems-slop">
  <p class="session-meta">Tue 30 Jun &nbsp;·&nbsp; 15:00–16:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Gems in the Slop: Breaking and Creating with GenAI</p>
  <p class="session-speakers"><strong>Speaker:</strong>
    <a href="https://www.rmit.edu.au/profiles/b/daniel-binns" target="_blank" rel="noopener noreferrer">Daniel Binns</a>
  </p>
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

<div class="session-block" id="session-validation">
  <p class="session-meta">Wed 1 Jul &nbsp;·&nbsp; 09:00 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Validation in Computational Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="https://internetobservatory.org.au/about/team" target="_blank" rel="noopener noreferrer">Matteo Vergani</a>
  </p>
  <p class="session-desc">We focus on rigorous validation techniques essential for producing trustworthy CSS research outputs. Participants will explore methods for validating findings, human evaluation, and strategies for addressing validity threats.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Find validation techniques to assess the robustness of research design and results.</li>
      <li>Mitigate common validity threats in CSS research designs.</li>
      <li>Produce transparent, reproducible research.</li>
    </ul>
  </div>


</div>

<!-- <div class="session-block">
  <p class="session-meta">Week 2 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Network Analysis in CSS</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="#" target="_blank" rel="noopener noreferrer">Andrea Giovannetti</a>
  </p>
  <p class="session-desc">We introduce network analysis as a method for understanding relationships, influence, and community structures within digital and social data for exploratory analysis.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Understand the limitations of different approaches to network analysis.</li>
      <li>Apply network metrics and techniques such as centrality, clustering, and community detection.</li>
      <li>Interpret network analysis results in meaningful social and cultural contexts.</li>
    </ul>
  </div>
</div> -->

<!-- <div class="session-block">
  <p class="session-meta">Week 2 &nbsp;|&nbsp; In-person &nbsp;|&nbsp; Workshop</p>
  <p class="session-title">Simulation in Social Science</p>
  <p class="session-speakers"><strong>Speakers:</strong>
    <a href="#" target="_blank" rel="noopener noreferrer">Michael Kirley</a>
  </p>
  <p class="session-desc">The workshop explores agent-based modelling and simulation techniques for studying complex social phenomena that are problematic to investigate through traditional methods. Participants will learn more about simulations to test theoretical hypotheses around social behaviour, collective action, and system dynamics.</p>
  <div class="outcomes-box">
    <p>Learning Outcomes</p>
    <ul>
      <li>Design and implement basic agent-based models relevant to HASS&amp;I research questions.</li>
      <li>Use simulations to explore scenarios and theoretical predictions.</li>
      <li>Evaluate the strengths, limitations, and appropriate applications of simulation methods in CSS.</li>
    </ul>
  </div>
</div> -->

<p><strong>Mid-Morning &amp; Afternoon Sessions — Teamwork &amp; Project Development</strong></p>

<div class="session-block" id="session-collaborative-work">
  <p class="session-meta">Ongoing across Days 6–9 &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Collaborative Research Project Work</p>
  <p class="session-speakers"><strong>Support:</strong> Drop-in experts, organisers, and mentors</p>
  <p class="session-desc">Participants work exclusively in their formed groups on their collaborative research projects. Drop-in experts, organisers, and mentors will be available to provide technical assistance, theoretical guidance, and feedback throughout each day.</p>
</div>

  </div>
</div>
</details>

<!-- ═══════════════════ DAY 10 ═══════════════════ -->
<details class="day-acc">
<summary>
  <div class="day-badge-row">
    <span class="day-num-pill">Day 10</span>
    <span class="day-date-pill">Friday, 3 July 2026</span>
  </div>
  <p class="day-acc-title">Project Presentations &amp; Closing</p>
  <p class="day-venue-row"><a href="https://maps.google.com/?q=Deakin+Downtown,+550+Bourke+St+Melbourne+VIC+3000" target="_blank" rel="noopener noreferrer">Deakin Downtown — 550 Bourke St, Melbourne</a></p>
  <p class="day-preview">Participants present preliminary findings, methodologies, and proposed solutions from their collaborative week-long projects, followed by final feedback, networking, and closing remarks.</p>
</summary>
<div class="day-body">
  <div class="venue-map-strip">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.6945036735665!2d144.94514735618282!3d-37.82062406237891!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d509d17bc27%3A0x5a6142623152382d!2sDeakin%20Downtown!5e0!3m2!1sen!2sau!4v1779156493045!5m2!1sen!2sau" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
  <div class="sessions-inner">

<div class="session-block" id="session-closing">
  <p class="session-meta">Morning &amp; Afternoon &nbsp;|&nbsp; In-person</p>
  <p class="session-title">Group Presentations, Final Feedback &amp; Closing</p>
  <p class="session-desc">Participants will present the preliminary findings, methodologies, and proposed solutions from their collaborative week-long projects. The program will conclude with final feedback, networking, and closing remarks.</p>
</div>

  </div>
</div>
</details>

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

<script>
(function () {
  function revealSessionFromHash() {
    var hash = window.location.hash;
    if (!hash) return;

    var target = document.querySelector(hash);
    if (!target || !target.classList.contains('session-block')) return;

    var dayAcc = target.closest('details.day-acc');
    if (dayAcc) dayAcc.open = true;

    window.requestAnimationFrame(function () {
      target.scrollIntoView({ block: 'start' });
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', revealSessionFromHash);
  } else {
    revealSessionFromHash();
  }
  window.addEventListener('hashchange', revealSessionFromHash);
})();
</script>
