---
layout: location_detail
partner_site: melbourne
---

<!-- ═══════════════════════════════════════════════════════════════════
  SICSS Melbourne 2026 · Session Recordings
  ───────────────────────────────────────────────────────────────────
  HOW TO PUBLISH A VIDEO:
  Paste the YouTube video ID into the data-youtube-id attribute of the
  session's .video-embed div below. The page swaps the placeholder for
  the player automatically. IDs to fill in:

    social-bias            = ""   (Social Bias in CSS — Kathirgamalingam)
    data-donations         = ""   (Data Donations — Vella, Hayden)
    publishing             = ""   (Publishing in CSS — Boichak, Kasianenko)
    nectar                 = ""   (Nectar Cloud — Ramza)
    css-theory             = ""   (Does CSS Lack Theory? — Dehghan)
    aired                  = ""   (AIReD Platform — Sinnott)
    ddp-workshop           = ""   (Data Download Packages — Tran, Esteban)
    working-with-text      = ""   (Working with Text — Doyle, Russo-Batterham)
    screen-capture         = ""   (Screen Capture — Tran, Angus)
    llm-pipelines          = ""   (LLM Pipelines / quallmer — Maerz)
    rag-systems            = ""   (RAG Systems — Abushaqra, Cherumanal)
    image-analysis         = ""   (Image Analysis — Chand, Hayden)
    cross-disciplinary     = ""   (Panel: Cross-Disciplinary Collaboration)
    industry-abc           = ""   (Industry: AI in the ABC Newsroom — Gartry, Kuperman)
    industry-abs           = ""   (Industry: ABS Data Science — McMahon)
    industry-csiro         = ""   (Industry: CSIRO Language Tech — Wan)
    industry-acmi          = ""   (Industry: ACMI Research — Holcombe-James)
    industry-panel-qa      = ""   (Industry: Panel Q&A)
    career-success         = ""   (Career Success — Trippas)
    grant-writing          = ""   (Grant Writing — Angus)
    scilire                = ""   (SciLire — Irons, Wan)
    music-score-analysis   = ""   (Music Score Analysis — Russo-Batterham)
    foundational-ethics    = ""   (Foundational Ethics — Young)
    validation             = ""   (Validation in CSS — Vergani)
    wikibase               = ""   (Wikibase — Bailo)
    project-data-peekers   = ""   (Project: Data Peekers — data-donation attrition)
    project-broke-sicss      = ""   (Project: Broke SICSS — ABC newsworthy moments; winner)
    project-one-nation     = ""   (Project: One Nation — populist rhetoric vs ABC)
    project-serious-people = ""   (Project: Serious People — two-speed newsworthiness)
    project-results-closing= ""   (Group project results & closing)
═══════════════════════════════════════════════════════════════════ -->

<style>
/* ═══════════════════════════════════════════════════════
   SICSS Melbourne 2026 · Recordings styles
   ═══════════════════════════════════════════════════════ */

.rec-note,
.week-header,
.day-header,
.rec-card {
  font-size: 1.08rem;
  line-height: 1.65;
}

/* ── Intro note ── */
.rec-note {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #f7fcfb;
  color: #2c3e50;
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

/* ── Day sub-headers ── */
.day-header {
  padding: 13px 20px;
  background: linear-gradient(135deg, #f2f7fc 0%, #e8f0f7 100%);
  border: 1.5px solid #ccd8e4;
  border-radius: 10px;
  margin: 26px 0 12px 0;
}
.day-header h3 { color: #1a2e50; margin: 0; font-size: 1.05em; font-weight: 700; }

/* ── Recording card ── */
.rec-card {
  margin: 14px 0 26px 0;
  padding: 18px 22px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
  scroll-margin-top: 90px;
}
.rec-card:target {
  border-color: #00a99d;
  box-shadow: 0 0 0 3px rgba(0, 169, 157, 0.2);
}
.rec-meta {
  font-size: 0.78em;
  color: #6b7f90;
  margin: 0 0 6px 0;
  letter-spacing: .01em;
}
.rec-title {
  color: #1a2e50;
  font-size: 1.05em;
  font-weight: 700;
  margin: 0 0 8px 0;
}
.rec-speakers { margin: 0 0 10px 0; font-size: 0.94em; }
.rec-speakers a { color: #00a99d; text-decoration: none; font-weight: 500; }
.rec-speakers a:hover { text-decoration: underline; }
.rec-desc { color: #3a4a5a; margin: 0 0 14px 0; font-size: 0.94em; line-height: 1.55; }

/* ── Video slot ── */
.video-embed {
  position: relative;
  width: 100%;
  aspect-ratio: 16 / 9;
  border-radius: 8px;
  overflow: hidden;
  background: #10203c;
  margin: 0 0 12px 0;
}
.video-embed iframe {
  position: absolute; inset: 0;
  width: 100%; height: 100%;
  border: 0;
}
.video-placeholder {
  position: absolute; inset: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 8px;
  color: #cfe0ee;
  background: linear-gradient(135deg, #16294a 0%, #0d1a33 100%);
  text-align: center;
  padding: 20px;
}
.video-placeholder .vp-icon { font-size: 2.2em; }
.video-placeholder .vp-text { font-weight: 600; font-size: 1.02em; color: #fff; }
.video-placeholder .vp-sub { font-size: 0.85em; opacity: .8; }

/* ── Chapters ── */
details.chapters {
  border: 1px solid #dce8f0;
  border-radius: 6px;
  background: #f7fafc;
  font-size: 0.9em;
}
details.chapters summary {
  cursor: pointer;
  padding: 8px 14px;
  font-weight: 600;
  color: #1a2e50;
  list-style: none;
}
details.chapters summary::-webkit-details-marker { display: none; }
details.chapters summary::before { content: "▸ "; color: #00a99d; }
details.chapters[open] summary::before { content: "▾ "; }
details.chapters ul { margin: 0; padding: 4px 18px 12px 26px; }
details.chapters li { margin: 3px 0; color: #3a4a5a; }
details.chapters .ch-time {
  display: inline-block;
  min-width: 52px;
  font-variant-numeric: tabular-nums;
  color: #00a99d;
  font-weight: 600;
}

/* ── Per-session resource link ── */
.rec-resources { margin: 0 0 12px 0; }
.rec-resources a.res-pdf {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  padding: 8px 15px;
  border: 1.5px solid #b8e0dc;
  border-radius: 8px;
  background: #f2fbfa;
  color: #00857b;
  font-size: 0.92em;
  font-weight: 600;
  text-decoration: none;
  transition: background .15s ease, border-color .15s ease;
}
.rec-resources a.res-pdf:hover { background: #e3f5f3; border-color: #00a99d; }
.rec-resources a.res-pdf::before {
  content: "";
  width: 15px; height: 15px;
  flex: 0 0 auto;
  background: no-repeat center/contain url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='15' height='15' viewBox='0 0 24 24' fill='none' stroke='%2300857b' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpath d='M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z'/%3E%3Cpolyline points='14 2 14 8 20 8'/%3E%3C/svg%3E");
}

/* ── Responsive ── */
@media (max-width: 640px) {
  .rec-card { padding: 14px 14px; }
  .day-header { padding: 10px 14px; }
}
</style>

# Session Recordings

<div class="rec-note">
Recordings of selected SICSS-Melbourne 2026 sessions, with chapter markers and captions. Each recording links back to its slot in the <a href="/2026/melbourne/schedule">program</a>. Not every session was recorded — panels and workshops below are those for which speakers agreed to share recordings. Most sessions also include a downloadable <strong>method reference</strong> (PDF) — a standalone guide to the method the speaker covered, usable on its own.
</div>

<div class="week-header">
  <h2>Week 1 — Foundations, Methods &amp; Theory &nbsp;·&nbsp; RMIT</h2>
</div>

<!-- ─── Day 1 ─── -->
<div class="day-header"><h3>Day 1 — Introduction to Computational Social Science · Monday 22 June</h3></div>

<div class="rec-card" id="social-bias">
  <p class="rec-meta">15:15–16:30 &nbsp;|&nbsp; Keynote &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-bias-css">program entry</a></p>
  <p class="rec-title">Social Bias in Computational Social Science</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://ahrkat.github.io/" target="_blank" rel="noopener noreferrer">Ahrabhi Kathirgamalingam</a> (GESIS)
  </p>
  <p class="rec-desc">Where social bias enters CSS research — data sources, collection strategies, methods and research design — and how to understand, detect and mitigate it, from persona prompting to participation washing.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/social-bias.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (12)</summary><ul>
    <li><span class="ch-time">00:00</span> Framing: research is never neutral</li>
    <li><span class="ch-time">11:43</span> Bias in CSS as a field</li>
    <li><span class="ch-time">14:07</span> Bias in CSS as a methodology</li>
    <li><span class="ch-time">18:27</span> Detecting social bias</li>
    <li><span class="ch-time">20:48</span> Human coder bias and disagreement</li>
    <li><span class="ch-time">24:30</span> Persona prompting</li>
    <li><span class="ch-time">32:52</span> Mitigation across the research pipeline</li>
    <li><span class="ch-time">38:01</span> Participatory CSS</li>
    <li><span class="ch-time">46:36</span> Debiasing and its pitfalls</li>
    <li><span class="ch-time">49:26</span> Structural change and the Methods Hub</li>
    <li><span class="ch-time">51:59</span> Conclusion</li>
    <li><span class="ch-time">56:30</span> Audience Q&amp;A</li>
  </ul></details>
</div>

<!-- ─── Day 2 ─── -->
<div class="day-header"><h3>Day 2 — Data Donation, Publishing &amp; Research Infrastructure · Tuesday 23 June</h3></div>

<div class="rec-card" id="data-donations">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-data-donations-day2">program entry</a></p>
  <p class="rec-title">Data Donations and Participant-Centric Research</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/kellie-vella/" target="_blank" rel="noopener noreferrer">Kellie Vella</a> (AIO),
    <a href="https://www.admscentre.org.au/lauren-hayden/" target="_blank" rel="noopener noreferrer">Lauren Hayden</a>
  </p>
  <p class="rec-desc">Data donation as a participant-centric way to study opaque, personalised platforms: what data download packages (DDPs) are, why the exported files are messy and unstandardised, the ethics of consent and participant burden, and how DDPs combine with APIs and the AIO's browser-based tools.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/data-donations.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (12)</summary><ul>
    <li><span class="ch-time">00:00</span> Introductions and the AIO</li>
    <li><span class="ch-time">01:14</span> What is data donation?</li>
    <li><span class="ch-time">02:58</span> DDPs and screen capture</li>
    <li><span class="ch-time">05:00</span> Inside an Instagram DDP</li>
    <li><span class="ch-time">08:26</span> Screen capture and participant burden</li>
    <li><span class="ch-time">10:30</span> A user-centric view of platforms</li>
    <li><span class="ch-time">15:27</span> Combining methods</li>
    <li><span class="ch-time">19:23</span> Activity: finding DDPs</li>
    <li><span class="ch-time">24:14</span> The Schema Explorer tool</li>
    <li><span class="ch-time">27:06</span> Ethics and participant-centric research</li>
    <li><span class="ch-time">35:45</span> Building data literacy</li>
    <li><span class="ch-time">41:05</span> Q&amp;A and your own DDP</li>
  </ul></details>
</div>

<div class="rec-card" id="publishing">
  <p class="rec-meta">13:30–14:30 &nbsp;|&nbsp; Talk &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-publishing">program entry</a></p>
  <p class="rec-title">Demystifying Publishing in Computational Social Science</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://profiles.sydney.edu.au/olga.boichak" target="_blank" rel="noopener noreferrer">Olga Boichak</a> (USyd),
    <a href="https://www.admscentre.org.au/kateryna-kasianenko/" target="_blank" rel="noopener noreferrer">Kateryna Kasianenko</a>
  </p>
  <p class="rec-desc">Demystifying academic publishing in CSS, drawing on a four-year mixed-methods collaboration studying online activism: reverse-engineering research from its intended outputs, surviving desk rejects and reviewer-response tables, authorship norms across disciplines, and using mentorship to navigate it all.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/publishing.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (14)</summary><ul>
    <li><span class="ch-time">00:00</span> Framing: the messiness of publishing</li>
    <li><span class="ch-time">00:59</span> Who we are: four years, SICSS Sydney 2022</li>
    <li><span class="ch-time">02:03</span> Mixed methods and the NAFO study</li>
    <li><span class="ch-time">05:35</span> Reverse-engineering outputs; XKCD paper types</li>
    <li><span class="ch-time">08:33</span> Papers vs articles; interdisciplinary venues</li>
    <li><span class="ch-time">14:38</span> Conferences and AoIR</li>
    <li><span class="ch-time">17:36</span> Research design as a post-mortem</li>
    <li><span class="ch-time">19:17</span> Story 1: NAFO avatars and identity</li>
    <li><span class="ch-time">28:36</span> Story 2: Non-human humanitarians (Kakhovka)</li>
    <li><span class="ch-time">40:39</span> Story 3: Participatory war literature review</li>
    <li><span class="ch-time">44:19</span> Designing a CSS project and validity</li>
    <li><span class="ch-time">48:03</span> Choosing a venue: argument, rejection, costs</li>
    <li><span class="ch-time">57:22</span> Authorship, conventions, reviewer responses</li>
    <li><span class="ch-time">1:02:52</span> Q&amp;A: reviews, single vs co-authorship, mentors</li>
  </ul></details>
</div>

<div class="rec-card" id="nectar">
  <p class="rec-meta">15:00–16:00 &nbsp;|&nbsp; Talk &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-nectar">program entry</a></p>
  <p class="rec-title">Nectar: Australian Research Infrastructure for Computational Analysis</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://ardc.edu.au/about-us/our-people/" target="_blank" rel="noopener noreferrer">Sonia Ramza</a> (ARDC)
  </p>
  <p class="rec-desc">Sonia Ramza (ARDC) gives an overview of Nectar, Australia's research cloud: what it is and how it differs from HPC, how to get an allocation through the free project trial and institutional nodes, the managed services on offer (virtual desktops, Binder, Jupyter), and real research use cases — plus a live tour of the dashboard, and Q&amp;A on GPUs, ethics and data sovereignty.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/nectar.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (9)</summary><ul>
    <li><span class="ch-time">00:00</span> Introducing Nectar Cloud</li>
    <li><span class="ch-time">01:55</span> Cloud vs HPC</li>
    <li><span class="ch-time">03:27</span> Allocations and the free project trial</li>
    <li><span class="ch-time">05:49</span> Managed services: desktops, Binder, Jupyter</li>
    <li><span class="ch-time">08:40</span> Real-world research use cases</li>
    <li><span class="ch-time">11:14</span> Eligibility, support and follow-up</li>
    <li><span class="ch-time">15:44</span> Q&amp;A: NCI, AI-ready tools, GPUs and VRAM</li>
    <li><span class="ch-time">22:04</span> Live demo: dashboard and flavours</li>
    <li><span class="ch-time">27:31</span> Q&amp;A: ethics, Binder and data sovereignty</li>
  </ul></details>
</div>

<!-- ─── Day 3 ─── -->
<div class="day-header"><h3>Day 3 — Data Collection and Working Across Disciplines · Wednesday 24 June</h3></div>

<div class="rec-card" id="css-theory">
  <p class="rec-meta">09:00–10:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-css-theory">program entry</a></p>
  <p class="rec-title">Does Computational Social Science Lack Theory?</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/e.dehghan" target="_blank" rel="noopener noreferrer">Ehsan Dehghan</a> (QUT)
  </p>
  <p class="rec-desc">A pointed critique of CSS — that it lets method drive substance and mistakes prediction for explanation — reframed around what theory actually does. Moving through theories of phenomena, measurement and method, a case for being explicit about the commitments buried in every pipeline.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/css-theory.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (13)</summary><ul>
    <li><span class="ch-time">00:00</span> Opening: a discourse scholar&#x27;s view</li>
    <li><span class="ch-time">01:56</span> The wrong question: where theory hides</li>
    <li><span class="ch-time">04:03</span> A short history of the field</li>
    <li><span class="ch-time">14:17</span> Five resistances to theory</li>
    <li><span class="ch-time">21:57</span> Three layers: phenomenon, measurement, method</li>
    <li><span class="ch-time">24:07</span> Activity: what&#x27;s wrong with this abstract?</li>
    <li><span class="ch-time">33:51</span> Group work: theory in your own pipeline</li>
    <li><span class="ch-time">50:13</span> Building theory with CSS: finding a spine</li>
    <li><span class="ch-time">55:01</span> Discourse theory, ANT, and flat ontology</li>
    <li><span class="ch-time">1:03:16</span> The Reddit case study</li>
    <li><span class="ch-time">1:08:54</span> Dangers: speed, hype, empiricism of presence</li>
    <li><span class="ch-time">1:17:13</span> Takeaways: be friends with theory</li>
    <li><span class="ch-time">1:19:07</span> Q&amp;A: stretching, power, and Žižek</li>
  </ul></details>
</div>

<div class="rec-card" id="aired">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Talk &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-aired">program entry</a></p>
  <p class="rec-title">The AIReD Platform for Australia-wide Social Media Discovery and Usage</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/342078-richard-sinnott" target="_blank" rel="noopener noreferrer">Richard Sinnott</a> (University of Melbourne)
  </p>
  <p class="rec-desc">A live tour of AIReD, the Australian Internet Research Dashboard aggregating hundreds of millions of posts across BlueSky, Mastodon, YouTube, GDELT and historic Twitter/X — used as a discovery mechanism to search topics, drill into who is posting and from where, and download matching posts and IDs for deeper analysis.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/aired.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (12)</summary><ul>
    <li><span class="ch-time">00:00</span> A systems-builder, not a theorist</li>
    <li><span class="ch-time">05:46</span> What AIReD is: Australia-wide social media</li>
    <li><span class="ch-time">10:16</span> What a single post leaks about you</li>
    <li><span class="ch-time">14:51</span> Scale, heterogeneity, and the ethics problem</li>
    <li><span class="ch-time">17:12</span> Drowning in data; discovery as the answer</li>
    <li><span class="ch-time">20:09</span> Funding, platforms, and losing Twitter</li>
    <li><span class="ch-time">26:03</span> Topic modelling and rehydrating posts</li>
    <li><span class="ch-time">32:24</span> Live demo: the AIReD dashboard</li>
    <li><span class="ch-time">47:53</span> GDELT, multilingual search, and the chat interface</li>
    <li><span class="ch-time">56:23</span> Use cases and teaching with the data</li>
    <li><span class="ch-time">1:06:21</span> Official data and running infrastructure</li>
    <li><span class="ch-time">1:14:35</span> Q&amp;A: discovery, not answers</li>
  </ul></details>
</div>

<div class="rec-card" id="ddp-workshop">
  <p class="rec-meta">13:30–15:00 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-ddp-workshop">program entry</a></p>
  <p class="rec-title">Collecting and Analysing Data Download Packages</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/dan-tran/" target="_blank" rel="noopener noreferrer">Dan Tran</a> (AIO),
    <a href="https://www.admscentre.org.au/michael-esteban/" target="_blank" rel="noopener noreferrer">Michael Esteban</a>
  </p>
  <p class="rec-desc">A hands-on follow-up on data download packages: their advantages and limitations (rich and longitudinal, but wholly unstandardised across platforms), and working with the AIO's own DDP viewer and lab workspace to explore and analyse donated data with participant consent throughout.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/ddp-workshop.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (11)</summary><ul>
    <li><span class="ch-time">00:00</span> Recap and the plan for today</li>
    <li><span class="ch-time">01:31</span> What a DDP is, and the GDPR right to export</li>
    <li><span class="ch-time">04:33</span> Requesting a DDP, and designing for attrition</li>
    <li><span class="ch-time">06:09</span> Advantages and limitations of DDPs</li>
    <li><span class="ch-time">08:48</span> Exercise: your phone&#x27;s most sensitive data</li>
    <li><span class="ch-time">09:36</span> Kellie Vella: designing a study with DDPs</li>
    <li><span class="ch-time">14:07</span> Demo: setting up a DDP project with consent controls</li>
    <li><span class="ch-time">22:40</span> Dan Tran: making sense of JSON</li>
    <li><span class="ch-time">28:09</span> Opening a DDP: zip files, text editors, and Chrome</li>
    <li><span class="ch-time">35:27</span> The AIO DDP viewer</li>
    <li><span class="ch-time">40:56</span> The lab workspace and AI-assisted analysis</li>
  </ul></details>
</div>

<div class="rec-card" id="working-with-text">
  <p class="rec-meta">15:30–17:00 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-working-with-text">program entry</a></p>
  <p class="rec-title">Working with Text Using Computational Techniques</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/637022-kim-doyle" target="_blank" rel="noopener noreferrer">Kim Doyle</a>,
    <a href="https://findanexpert.unimelb.edu.au/profile/551741-daniel-russo-batterham" target="_blank" rel="noopener noreferrer">Daniel Russo-Batterham</a> (MDAP)
  </p>
  <p class="rec-desc">How modern LLMs lower the barrier to collecting and analysing web text: LLM-powered scraping demonstrated live, scraping ethics, then sentiment and topic analysis in Colab notebooks.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/working-with-text.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (11)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction</li>
    <li><span class="ch-time">02:42</span> Session goal: LLM-assisted scraping</li>
    <li><span class="ch-time">09:07</span> Claude Code plan mode demo</li>
    <li><span class="ch-time">14:20</span> Activity: writing a clear scraping brief</li>
    <li><span class="ch-time">16:35</span> Report-back: refusals, ethics, robots.txt</li>
    <li><span class="ch-time">26:54</span> Activity: spot the errors in scraped data</li>
    <li><span class="ch-time">34:10</span> The light and dark sides of vibe coding</li>
    <li><span class="ch-time">42:24</span> Transformers and notebooks explained</li>
    <li><span class="ch-time">47:45</span> Sentiment analysis with RoBERTa</li>
    <li><span class="ch-time">54:34</span> Topic labelling the episodes</li>
    <li><span class="ch-time">1:02:44</span> Audience Q&amp;A</li>
  </ul></details>
</div>

<!-- ─── Day 4 ─── -->
<div class="day-header"><h3>Day 4 — Tools and Approaches to Data Analysis · Thursday 25 June</h3></div>

<div class="rec-card" id="screen-capture">
  <p class="rec-meta">09:00–10:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-screen-capture">program entry</a></p>
  <p class="rec-title">Screen Capture for Data Collection</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/dan-tran/" target="_blank" rel="noopener noreferrer">Dan Tran</a>,
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/daniel.angus" target="_blank" rel="noopener noreferrer">Daniel Angus</a>
  </p>
  <p class="rec-desc">Collecting images, text and ads from participants' own screens with the AIO Mobile Screen Capture tools — privacy engineering, ethics, a hands-on app install, and the analysis pipeline. Includes the technical deep-dive and debrief.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/screen-capture.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (12)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction and speaker handover</li>
    <li><span class="ch-time">02:01</span> Why mobile screen capture?</li>
    <li><span class="ch-time">05:27</span> Building an Android capture app</li>
    <li><span class="ch-time">09:59</span> The challenge: a stream of images</li>
    <li><span class="ch-time">12:58</span> Cloud vs on-device processing</li>
    <li><span class="ch-time">22:21</span> Detecting ads with YOLO and OCR</li>
    <li><span class="ch-time">29:12</span> Hands-on: installing the Mobile Ad Toolkit</li>
    <li><span class="ch-time">32:28</span> Debrief: inside the capture pipeline</li>
    <li><span class="ch-time">38:10</span> Matching ads to the ad library</li>
    <li><span class="ch-time">44:06</span> Researcher dashboard demo</li>
    <li><span class="ch-time">47:14</span> Participant dashboards and data quality</li>
    <li><span class="ch-time">56:41</span> Audience questions and discussion</li>
  </ul></details>
</div>

<div class="rec-card" id="llm-pipelines">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-llm-pipelines">program entry</a></p>
  <p class="rec-title">Using LLMs to Create Data Analysis Pipelines for Text-as-Data Research</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/1051597-seraphine-maerz" target="_blank" rel="noopener noreferrer">Seraphine F. Maerz</a>
  </p>
  <p class="rec-desc">A transparent, traceable five-step workflow for LLM-assisted text coding with the <a href="https://cran.r-project.org/package=quallmer" target="_blank" rel="noopener noreferrer">quallmer</a> R package: codebook → output schema → code → compare/validate across models → auto-generated replication trail.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/llm-pipelines.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (14)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction</li>
    <li><span class="ch-time">01:54</span> Setup check: R, RStudio, API keys</li>
    <li><span class="ch-time">05:52</span> LLMs as a research methodology</li>
    <li><span class="ch-time">11:22</span> Open vs closed models and sensitive data</li>
    <li><span class="ch-time">17:44</span> The quallmer five-step workflow</li>
    <li><span class="ch-time">21:44</span> Worked example: 5,000 political speeches</li>
    <li><span class="ch-time">33:20</span> Questions before hands-on</li>
    <li><span class="ch-time">40:56</span> Hands-on: installing quallmer</li>
    <li><span class="ch-time">57:34</span> Defining code books and schemas</li>
    <li><span class="ch-time">1:02:18</span> Running your first LLM coding</li>
    <li><span class="ch-time">1:03:16</span> Local models with Ollama</li>
    <li><span class="ch-time">1:13:18</span> Replication and model comparison</li>
    <li><span class="ch-time">1:19:06</span> Validation: Krippendorff and gold standards</li>
    <li><span class="ch-time">1:22:42</span> Wrap-up, exercises and open-model outlook</li>
  </ul></details>
</div>

<div class="rec-card" id="rag-systems">
  <p class="rec-meta">13:30–14:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-rag-101">program entry</a></p>
  <p class="rec-title">RAG Systems in Research</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://www.admscentre.org.au/futoon-abushaqra/" target="_blank" rel="noopener noreferrer">Futoon Abushaqra</a>,
    <a href="https://www.rmit.edu.au/profiles/p/sachin-pathiyan-cherumanal2" target="_blank" rel="noopener noreferrer">Sachin Pathiyan Cherumanal</a>
  </p>
  <p class="rec-desc">Retrieval-Augmented Generation in plain terms: how the pipeline works, when it beats a plain LLM, its failure modes, and how to decide whether it's useful for your research.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/rag-systems.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (9)</summary><ul>
    <li><span class="ch-time">00:00</span> Session goals</li>
    <li><span class="ch-time">02:30</span> The traditional research pipeline</li>
    <li><span class="ch-time">04:53</span> Why not just use ChatGPT?</li>
    <li><span class="ch-time">08:15</span> Effort vs control: where RAG sits</li>
    <li><span class="ch-time">11:17</span> How a RAG pipeline works</li>
    <li><span class="ch-time">14:42</span> Case study: RAG failure modes</li>
    <li><span class="ch-time">19:11</span> Hallucination and missing context</li>
    <li><span class="ch-time">24:51</span> Takeaways: can you trust RAG?</li>
    <li><span class="ch-time">28:32</span> Group activity briefing</li>
  </ul></details>
</div>

<div class="rec-card" id="image-analysis">
  <p class="rec-meta">14:45–16:15 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-image-analysis">program entry</a></p>
  <p class="rec-title">Image Analysis for Qualitative and Quantitative Research</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://research.qut.edu.au/dmrc/people/kunal-chand/" target="_blank" rel="noopener noreferrer">Kunal Chand</a>,
    <a href="https://www.admscentre.org.au/lauren-hayden/" target="_blank" rel="noopener noreferrer">Lauren Hayden</a>
  </p>
  <p class="rec-desc">Large-scale image analysis with machine vision: embeddings, clustering and the Image Machine, demonstrated end-to-end on the alcohol-advertising case study.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/image-analysis.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (11)</summary><ul>
    <li><span class="ch-time">00:00</span> Kunal Chand: computational image toolkits</li>
    <li><span class="ch-time">01:14</span> The image-sorting activity</li>
    <li><span class="ch-time">02:19</span> What happens when we throw a computer at it?</li>
    <li><span class="ch-time">04:33</span> Convolutional neural networks</li>
    <li><span class="ch-time">05:48</span> Embedding vectors</li>
    <li><span class="ch-time">08:37</span> Clustering algorithms</li>
    <li><span class="ch-time">12:45</span> Tree data structures</li>
    <li><span class="ch-time">14:35</span> Case study: alcohol advertising</li>
    <li><span class="ch-time">19:11</span> The Image Machine</li>
    <li><span class="ch-time">31:40</span> Live Image Machine demo</li>
    <li><span class="ch-time">50:40</span> Getting access and audience Q&amp;A</li>
  </ul></details>
</div>

<!-- ─── Day 5 ─── -->
<div class="day-header"><h3>Day 5 — Disciplines, Careers, and Industry · Friday 26 June</h3></div>

<div class="rec-card" id="cross-disciplinary">
  <p class="rec-meta">09:00–10:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-interdisciplinary-panel">program entry</a></p>
  <p class="rec-title">Cross-Disciplinary Collaboration: Bringing Social Science and Computational Analysis Together</p>
  <p class="rec-speakers"><strong>Panel:</strong>
    <a href="https://www.rmit.edu.au/profiles/z/oleg-zendel" target="_blank" rel="noopener noreferrer">Oleg Zendel</a>,
    <a href="https://www.rmit.edu.au/profiles/t/j-trippas" target="_blank" rel="noopener noreferrer">Johanne Trippas</a>,
    <a href="https://findanexpert.unimelb.edu.au/profile/1070371-hiruni-kegalle" target="_blank" rel="noopener noreferrer">Hiruni Kegalle</a>,
    <a href="https://www.rmit.edu.au/profiles/e/oliver-eklund" target="_blank" rel="noopener noreferrer">Oliver Eklund</a>
  </p>
  <p class="rec-desc">Four researchers who crossed disciplinary boundaries on what makes collaboration work: translation across vocabularies, publishing-venue norms, co-location, and why "successful" doesn't always mean "published".</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/cross-disciplinary.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (13)</summary><ul>
    <li><span class="ch-time">00:00</span> Setting up the discussion</li>
    <li><span class="ch-time">00:35</span> Crossing disciplinary boundaries</li>
    <li><span class="ch-time">11:13</span> Challenges of interdisciplinary work</li>
    <li><span class="ch-time">13:33</span> Case study: cardiac-arrest collaboration</li>
    <li><span class="ch-time">19:03</span> Publishing venues across fields</li>
    <li><span class="ch-time">22:51</span> Speaking each other&#x27;s language</li>
    <li><span class="ch-time">28:51</span> Government survey war stories</li>
    <li><span class="ch-time">31:53</span> Disagreeing productively</li>
    <li><span class="ch-time">39:05</span> Job hunting as an interdisciplinary scholar</li>
    <li><span class="ch-time">50:31</span> Choosing methods and finding coherence</li>
    <li><span class="ch-time">1:00:39</span> Communicating with government audiences</li>
    <li><span class="ch-time">1:07:01</span> Learning to disagree well</li>
    <li><span class="ch-time">1:15:33</span> Wrap-up and thanks</li>
  </ul></details>
</div>

<!-- Industry panel — split by speaker + combined Q&A -->
<div class="rec-card" id="industry-abc">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-industry-panel">program entry</a></p>
  <p class="rec-title">AI in the ABC Newsroom</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://www.abc.net.au/news/laura-gartry/5595204" target="_blank" rel="noopener noreferrer">Laura Gartry</a>,
    <a href="https://www.linkedin.com/in/arielkuperman/" target="_blank" rel="noopener noreferrer">Ariel Kuperman</a>
  </p>
  <p class="rec-desc">Laura Gartry (journalist and RMIT PhD researcher) and Ariel Kuperman (AI specialist) from the ABC walk through a joint project bringing automation and AI into newsroom workflows — the editorial values and AI policy they work within, and the trust and accuracy challenges of applying computational methods to journalism.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (8)</summary><ul>
    <li><span class="ch-time">00:00</span> Introductions</li>
    <li><span class="ch-time">02:57</span> Media change and news trust</li>
    <li><span class="ch-time">04:41</span> AI and editorial values</li>
    <li><span class="ch-time">06:15</span> ABC AI editorial policy</li>
    <li><span class="ch-time">08:03</span> Regional news digital project</li>
    <li><span class="ch-time">09:27</span> The AI-assisted workflow</li>
    <li><span class="ch-time">12:28</span> Defining quality and evaluation</li>
    <li><span class="ch-time">16:22</span> Automation boundaries and wrap-up</li>
  </ul></details>
</div>

<div class="rec-card" id="industry-abs">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-industry-panel">program entry</a></p>
  <p class="rec-title">Data Science at the Australian Bureau of Statistics</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.linkedin.com/in/andrew-mcmahon-95461742/" target="_blank" rel="noopener noreferrer">Andrew McMahon</a> (ABS)
  </p>
  <p class="rec-desc">Andrew McMahon, a data scientist at the ABS, traces a public-service data career across health performance, gender equality, communities and justice, consulting and education — and how the Bureau today uses LLMs and emerging methods around the census and privacy.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (8)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction and early ABS career</li>
    <li><span class="ch-time">01:58</span> National Health Performance Authority</li>
    <li><span class="ch-time">04:37</span> Workplace Gender Equality Agency</li>
    <li><span class="ch-time">06:14</span> Communities and Justice: evidence vs politics</li>
    <li><span class="ch-time">08:41</span> Management consulting</li>
    <li><span class="ch-time">10:07</span> NSW Department of Education</li>
    <li><span class="ch-time">11:55</span> Return to the ABS</li>
    <li><span class="ch-time">14:05</span> ABS AI, census and privacy teams</li>
  </ul></details>
</div>

<div class="rec-card" id="industry-csiro">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-industry-panel">program entry</a></p>
  <p class="rec-title">Language Technology and Human-AI Teaming at CSIRO</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://people.csiro.au/W/S/Stephen-Wan" target="_blank" rel="noopener noreferrer">Stephen Wan</a> (CSIRO)
  </p>
  <p class="rec-desc">Stephen Wan (CSIRO) demonstrates SciLire, an AI tool for building scientific datasets, and discusses human-AI teaming, expert evaluation, taking research technology to market, and a pivot into the legal sector.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (8)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction and CSIRO language tech</li>
    <li><span class="ch-time">01:56</span> Introducing SciLire: AI for science</li>
    <li><span class="ch-time">05:37</span> SciLire tool demo</li>
    <li><span class="ch-time">11:51</span> SciLire vs existing AI tools</li>
    <li><span class="ch-time">13:28</span> Expert evaluation and user feedback</li>
    <li><span class="ch-time">15:01</span> Taking SciLire to market</li>
    <li><span class="ch-time">18:04</span> Pivot to the legal sector</li>
    <li><span class="ch-time">21:40</span> Back to research and wrap-up</li>
  </ul></details>
</div>

<div class="rec-card" id="industry-acmi">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-industry-panel">program entry</a></p>
  <p class="rec-title">Research at ACMI, the Museum of Screen Culture</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.admscentre.org.au/indigo-holcombe-james/" target="_blank" rel="noopener noreferrer">Indigo Holcombe-James</a> (ACMI)
  </p>
  <p class="rec-desc">Indigo Holcombe-James, Head of Research at ACMI (Australia's National Museum of Screen Culture), on a research path from remote-community digital inequality to studying the Game Worlds exhibition — and being the qualitative 'odd one out' among the panellists.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (8)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction</li>
    <li><span class="ch-time">01:13</span> Career start: remote communities</li>
    <li><span class="ch-time">03:40</span> Industry PhD on digital inequality</li>
    <li><span class="ch-time">05:18</span> COVID, ADM+S and cultural institutions</li>
    <li><span class="ch-time">06:37</span> Head of research at ACMI</li>
    <li><span class="ch-time">08:07</span> Researching the Game Worlds exhibition</li>
    <li><span class="ch-time">10:44</span> Findings, response and impact</li>
    <li><span class="ch-time">12:56</span> Working with industry well</li>
  </ul></details>
</div>

<div class="rec-card" id="industry-panel-qa">
  <p class="rec-meta">11:00–12:30 &nbsp;|&nbsp; Panel &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-industry-panel">program entry</a></p>
  <p class="rec-title">Working With and In the Industry — Panel Q&amp;A</p>
  <p class="rec-speakers"><strong>Panel:</strong>
    <a href="https://www.abc.net.au/news/laura-gartry/5595204" target="_blank" rel="noopener noreferrer">Laura Gartry</a>,
    <a href="https://www.linkedin.com/in/arielkuperman/" target="_blank" rel="noopener noreferrer">Ariel Kuperman</a>,
    <a href="https://www.linkedin.com/in/andrew-mcmahon-95461742/" target="_blank" rel="noopener noreferrer">Andrew McMahon</a> (ABS),
    <a href="https://people.csiro.au/W/S/Stephen-Wan" target="_blank" rel="noopener noreferrer">Stephen Wan</a> (CSIRO),
    <a href="https://www.admscentre.org.au/indigo-holcombe-james/" target="_blank" rel="noopener noreferrer">Indigo Holcombe-James</a> (ACMI)
  </p>
  <p class="rec-desc">Audience Q&amp;A with the industry panellists from the ABC, ABS, CSIRO and ACMI — automating newsroom work, verifying and trusting AI outputs, how much human-in-the-loop, open vs proprietary models, imposter syndrome, and how to approach researchers.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (7)</summary><ul>
    <li><span class="ch-time">00:00</span> Q&amp;A: ABC pushback on automation</li>
    <li><span class="ch-time">03:48</span> Q&amp;A: verifying AI outputs</li>
    <li><span class="ch-time">07:57</span> Q&amp;A: how much human-in-the-loop</li>
    <li><span class="ch-time">11:22</span> Q&amp;A: open vs proprietary models</li>
    <li><span class="ch-time">14:13</span> Q&amp;A: imposter syndrome</li>
    <li><span class="ch-time">18:22</span> Q&amp;A: approaching researchers</li>
    <li><span class="ch-time">22:35</span> Q&amp;A: do PhD-holders respond better?</li>
  </ul></details>
</div>

<div class="rec-card" id="career-success">
  <p class="rec-meta">13:30–15:00 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-career-success">program entry</a></p>
  <p class="rec-title">Career Success</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.rmit.edu.au/profiles/t/j-trippas" target="_blank" rel="noopener noreferrer">Johanne Trippas</a>
  </p>
  <p class="rec-desc">Strategies for HDR candidates and early-career researchers: project planning, milestone navigation, supervisor communication, and building a research profile for different career pathways in Australia.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/career-success.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (15)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction</li>
    <li><span class="ch-time">07:18</span> The Rascal Pyramid</li>
    <li><span class="ch-time">08:24</span> Layer 1: look after yourself</li>
    <li><span class="ch-time">09:47</span> Layer 2: your physical setup</li>
    <li><span class="ch-time">15:07</span> Cyber setup and backups</li>
    <li><span class="ch-time">19:46</span> Pomodoro and time management</li>
    <li><span class="ch-time">27:29</span> Planning without overplanning</li>
    <li><span class="ch-time">41:36</span> Journaling to stay grounded</li>
    <li><span class="ch-time">43:16</span> Taming the literature</li>
    <li><span class="ch-time">47:31</span> Thesis files and writing templates</li>
    <li><span class="ch-time">52:15</span> Word lists and writing with dyslexia</li>
    <li><span class="ch-time">1:01:37</span> The support layer: mentors and lab mates</li>
    <li><span class="ch-time">1:14:34</span> The achievement layer: online presence</li>
    <li><span class="ch-time">1:17:45</span> The top: doing creative research</li>
    <li><span class="ch-time">1:19:41</span> Audience Q&amp;A</li>
  </ul></details>
</div>

<div class="rec-card" id="grant-writing">
  <p class="rec-meta">15:15–16:15 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-grant-writing">program entry</a></p>
  <p class="rec-title">Grant Writing in Computational Social Science</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.qut.edu.au/about/our-people/academic-profiles/daniel.angus" target="_blank" rel="noopener noreferrer">Daniel Angus</a>
  </p>
  <p class="rec-desc">Positioning interdisciplinary work so it resonates with funding reviewers, avoiding the gaps between disciplinary boundaries, and building a coherent funding trajectory over a career.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/grant-writing.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (8)</summary><ul>
    <li><span class="ch-time">00:00</span> Let&#x27;s talk about money</li>
    <li><span class="ch-time">02:32</span> Grant writing as persuasive writing</li>
    <li><span class="ch-time">04:06</span> Fellowships vs grants</li>
    <li><span class="ch-time">14:22</span> Ten years of rejections, normalised</li>
    <li><span class="ch-time">20:24</span> The three-bubble model</li>
    <li><span class="ch-time">29:34</span> Positioning yourself clearly</li>
    <li><span class="ch-time">36:42</span> Mentors, saying yes, career strategy</li>
    <li><span class="ch-time">41:40</span> Audience Q&amp;A</li>
  </ul></details>
</div>

<div class="week-header">
  <h2>Week 2 — Collaborative Research Projects &nbsp;·&nbsp; Deakin Downtown</h2>
</div>

<!-- ─── Day 6 ─── -->
<div class="day-header"><h3>Day 6 · Monday 29 June</h3></div>

<div class="rec-card" id="scilire">
  <p class="rec-meta">09:00 &nbsp;|&nbsp; Workshop (online) &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-scilire">program entry</a></p>
  <p class="rec-title">Knowledge Extraction and Systematic Data Curation with SciLire</p>
  <p class="rec-speakers"><strong>Speakers:</strong>
    <a href="https://research.csiro.au/cintel/our-people/research-scientists/" target="_blank" rel="noopener noreferrer">Jessica Irons</a>,
    <a href="https://people.csiro.au/W/S/Stephen-Wan" target="_blank" rel="noopener noreferrer">Stephen Wan</a> (CSIRO)
  </p>
  <p class="rec-desc">SciLire extracts structured information from scientific literature with built-in reliability checks: template-driven extraction, validation signals, and human-in-the-loop training, demonstrated live.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/scilire.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (11)</summary><ul>
    <li><span class="ch-time">00:00</span> Meet the CSIRO team and today&#x27;s plan</li>
    <li><span class="ch-time">02:47</span> What is SciLire?</li>
    <li><span class="ch-time">08:24</span> The NCC consultation example</li>
    <li><span class="ch-time">12:56</span> Live demo: creating a project</li>
    <li><span class="ch-time">15:22</span> Data sensitivity and model choice</li>
    <li><span class="ch-time">24:00</span> Reading the extracted table</li>
    <li><span class="ch-time">25:26</span> Validating results against the text</li>
    <li><span class="ch-time">35:18</span> Hands-on troubleshooting and features</li>
    <li><span class="ch-time">43:12</span> Improving extraction with training examples</li>
    <li><span class="ch-time">49:34</span> Exporting results and confidence scores</li>
    <li><span class="ch-time">56:32</span> Use cases, publications and wrap-up</li>
  </ul></details>
</div>

<!-- ─── Day 7 ─── -->
<div class="day-header"><h3>Day 7 · Tuesday 30 June</h3></div>

<div class="rec-card" id="music-score-analysis">
  <p class="rec-meta">10:00 &nbsp;|&nbsp; Talk &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-music-nli">program entry</a></p>
  <p class="rec-title">Music Score Analysis through Natural Language Interfaces</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://findanexpert.unimelb.edu.au/profile/551741-daniel-russo-batterham" target="_blank" rel="noopener noreferrer">Daniel Russo-Batterham</a> (MDAP)
  </p>
  <p class="rec-desc">Querying MEI-encoded music collections in plain language: an MCP-based system that translates questions into tool calls over music21 and Verovio — computational analysis without programming.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/music-score-analysis.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (14)</summary><ul>
    <li><span class="ch-time">00:00</span> Natural-language interfaces to tools</li>
    <li><span class="ch-time">02:27</span> Why give LLMs tools?</li>
    <li><span class="ch-time">06:51</span> A brief history of LLM tool use</li>
    <li><span class="ch-time">08:20</span> The Model Context Protocol</li>
    <li><span class="ch-time">11:49</span> Running MCPs: local vs deployed</li>
    <li><span class="ch-time">14:58</span> Worked example: the Zotero MCP</li>
    <li><span class="ch-time">17:45</span> Safety when running MCPs</li>
    <li><span class="ch-time">20:46</span> Activity: find an MCP for your work</li>
    <li><span class="ch-time">25:33</span> Report-back: MCPs people found</li>
    <li><span class="ch-time">29:20</span> Applying MCPs to music</li>
    <li><span class="ch-time">36:02</span> Music21 and score analysis demo</li>
    <li><span class="ch-time">44:46</span> Exploring a corpus of scores</li>
    <li><span class="ch-time">46:07</span> Activity: connect to the music MCP</li>
    <li><span class="ch-time">48:48</span> Wrap-up and audience Q&amp;A</li>
  </ul></details>
</div>

<div class="rec-card" id="foundational-ethics">
  <p class="rec-meta">15:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-gems-slop">program entry</a></p>
  <p class="rec-title">Foundational Ethics in CSS</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://experts.deakin.edu.au/72009-gordon-young-young" target="_blank" rel="noopener noreferrer">Gordon Young</a>
  </p>
  <p class="rec-desc">Four ethical frameworks — virtue ethics, deontology, consequentialism, feminist care ethics — mapped to CSS practice, closing with a provocation on how classifiers and regression mirror ethical schools.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/foundational-ethics.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (9)</summary><ul>
    <li><span class="ch-time">00:00</span> What ethics is and isn&#x27;t</li>
    <li><span class="ch-time">01:01</span> Virtue ethics: strong but vague</li>
    <li><span class="ch-time">02:27</span> Deontology: rules and their limits</li>
    <li><span class="ch-time">03:36</span> Consequentialism and utilitarianism</li>
    <li><span class="ch-time">06:32</span> Care ethics and bias</li>
    <li><span class="ch-time">10:43</span> Provocation: ethics as ML techniques</li>
    <li><span class="ch-time">13:09</span> Three questions for the room</li>
    <li><span class="ch-time">14:30</span> Open discussion</li>
    <li><span class="ch-time">23:57</span> Governance lessons and regulation</li>
  </ul></details>
</div>

<!-- ─── Day 8 ─── -->
<div class="day-header"><h3>Day 8 · Wednesday 1 July</h3></div>

<div class="rec-card" id="validation">
  <p class="rec-meta">09:00–10:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-validation">program entry</a></p>
  <p class="rec-title">Validation in Computational Social Science</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://internetobservatory.org.au/about/team" target="_blank" rel="noopener noreferrer">Matteo Vergani</a> (Deakin)
  </p>
  <p class="rec-desc">A psychometric framework for trustworthy CSS measures: latent constructs, the trouble with "ground truth", and content/convergent/discriminant/predictive validity — with two lab case studies and a group exercise.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/validation.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (12)</summary><ul>
    <li><span class="ch-time">00:00</span> Introduction and session plan</li>
    <li><span class="ch-time">02:07</span> What is a latent social construct?</li>
    <li><span class="ch-time">08:28</span> The ground-truth problem</li>
    <li><span class="ch-time">11:23</span> Precision, recall, accuracy, F1</li>
    <li><span class="ch-time">15:43</span> Asymmetric error costs</li>
    <li><span class="ch-time">20:49</span> Benchmarks and the model horse race</li>
    <li><span class="ch-time">23:57</span> A construct-validation framework</li>
    <li><span class="ch-time">40:14</span> Case study: measuring social cohesion</li>
    <li><span class="ch-time">51:42</span> Convergent, discriminant, external validity</li>
    <li><span class="ch-time">58:23</span> Group exercise: validate a construct</li>
    <li><span class="ch-time">1:00:37</span> Report-back and discussion</li>
    <li><span class="ch-time">1:09:13</span> What is populism? Measurement debates</li>
  </ul></details>
</div>

<div class="rec-card" id="wikibase">
  <p class="rec-meta">13:30–15:00 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-wikibase">program entry</a></p>
  <p class="rec-title">How to use Wikibase for Mixed-Methods Research</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://profiles.sydney.edu.au/francesco.bailo" target="_blank" rel="noopener noreferrer">Francesco Bailo</a> (USyd)
  </p>
  <p class="rec-desc">Organising research material as a knowledge graph: items, properties and statements, SPARQL queries, a live wikibase.cloud demo, and where linked data fits in mixed-methods projects.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <p class="rec-resources"><a class="res-pdf" href="/2026/melbourne/guides/wikibase.pdf" target="_blank" rel="noopener noreferrer">Method reference (PDF)</a></p>
  <details class="chapters"><summary>Chapters (11)</summary><ul>
    <li><span class="ch-time">00:00</span> From Wikipedia to Wikidata to Wikibase</li>
    <li><span class="ch-time">02:45</span> Why Wikibase for research teams</li>
    <li><span class="ch-time">12:30</span> The shared-table metaphor</li>
    <li><span class="ch-time">26:40</span> The data model: items, properties, statements</li>
    <li><span class="ch-time">38:01</span> Ontologies and code books</li>
    <li><span class="ch-time">50:22</span> Hands-on: wikibase.cloud</li>
    <li><span class="ch-time">53:47</span> Querying with SPARQL</li>
    <li><span class="ch-time">58:46</span> Demo: importing and linking data</li>
    <li><span class="ch-time">1:12:18</span> Demo: MPs and speeches example</li>
    <li><span class="ch-time">1:28:11</span> Audience Q&amp;A</li>
    <li><span class="ch-time">1:35:15</span> Ethics committees and privacy</li>
  </ul></details>
</div>

<!-- ─── Day 10 ─── -->
<div class="day-header"><h3>Day 10 — Project Presentations &amp; Closing · Friday 3 July</h3></div>

<!-- Group projects — split per team + results/closing -->
<div class="rec-card" id="project-data-peekers">
  <p class="rec-meta">Morning &nbsp;|&nbsp; Group Project &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-closing">program entry</a></p>
  <p class="rec-title">The Data Peekers — Reducing Attrition in Data Donation</p>
  <p class="rec-speakers"><strong>Presented by:</strong> Team Data Peekers</p>
  <p class="rec-desc">Team Data Peekers tackle attrition in data-donation research: participants who agree to donate their data download packages often never follow through, put off by confusing file formats and privacy fears. Their answer is a donation pipeline for chatbot data that lets participants explore and visualise what they are about to hand over — including LLM-generated topic, task and sensitivity tags — demonstrated on a synthetic dataset of 100 chats and 1,000 messages.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (7)</summary><ul>
    <li><span class="ch-time">00:00</span> The attrition problem in data download packages</li>
    <li><span class="ch-time">01:29</span> A donation pipeline for chatbot data</li>
    <li><span class="ch-time">01:59</span> Descriptive stats on the synthetic dataset</li>
    <li><span class="ch-time">02:43</span> LLM tagging of topics, tasks and trends</li>
    <li><span class="ch-time">04:12</span> Flagging potentially sensitive content</li>
    <li><span class="ch-time">04:50</span> Next steps: selective sharing and validation</li>
    <li><span class="ch-time">05:23</span> Q&amp;A: tag purpose, categories and local LLMs</li>
  </ul></details>
</div>

<div class="rec-card" id="project-broke-sicss">
  <p class="rec-meta">Morning &nbsp;|&nbsp; Group Project &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-closing">program entry</a></p>
  <p class="rec-title">Broke SICSS — Finding Newsworthy Moments for ABC Regional News</p>
  <p class="rec-speakers"><strong>Presented by:</strong> Team Broke SICSS</p>
  <p class="rec-desc">Team Broke SICSS built a prototype for the Australian Broadcasting Corporation to surface newsworthy moments buried in long-form regional programming — like three-hour breakfast radio shows — that could become standalone digital stories. Their system segments transcripts by speaking turns, scores story candidates with an LLM against a literature-derived newsworthiness codebook, and presents everything in a human-in-the-loop dashboard designed for sceptical regional editors, complete with verbatim sources and editable regional context. Winner of the SICSS Melbourne 2026 group-project award.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (6)</summary><ul>
    <li><span class="ch-time">00:00</span> The ABC brief: newsworthy moments for regional audiences</li>
    <li><span class="ch-time">01:29</span> Three problems and the skeptical-editor user</li>
    <li><span class="ch-time">02:16</span> Defining newsworthiness: four factors from the literature</li>
    <li><span class="ch-time">03:24</span> Prototype: segmentation and LLM scoring with a codebook</li>
    <li><span class="ch-time">04:37</span> Human-in-the-loop dashboard demo</li>
    <li><span class="ch-time">06:31</span> Q&amp;A: editor feedback loops and fact-checking</li>
  </ul></details>
</div>

<div class="rec-card" id="project-one-nation">
  <p class="rec-meta">Morning &nbsp;|&nbsp; Group Project &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-closing">program entry</a></p>
  <p class="rec-title">Understanding One Nation — Populist Rhetoric and ABC News</p>
  <p class="rec-speakers"><strong>Presented by:</strong> the One Nation project team</p>
  <p class="rec-desc">This team proposed their own research project: does the populist rhetoric of Australia&#x27;s One Nation party drive ABC news coverage, or is it the other way around? Combining 1,726 web-scraped Senate speeches (2016–2026) with 15,425 ABC articles, they used topic modelling, an Entman-based framing codebook, and Granger causality tests with vector autoregression — finding, strikingly, that the strongest effect runs from media to the Senate, with politicians lagging the news by about two months.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (6)</summary><ul>
    <li><span class="ch-time">00:00</span> A self-proposed project: One Nation&#x27;s rhetoric vs ABC news</li>
    <li><span class="ch-time">00:59</span> The research gap: who influences whom?</li>
    <li><span class="ch-time">02:09</span> Data: 1,726 Senate speeches and 15,425 ABC articles</li>
    <li><span class="ch-time">03:18</span> Entman framing codebook and intercoder reliability</li>
    <li><span class="ch-time">05:06</span> Granger tests: media leads the Senate by two months</li>
    <li><span class="ch-time">06:23</span> Q&amp;A: issue ownership and spurious correlation</li>
  </ul></details>
</div>

<div class="rec-card" id="project-serious-people">
  <p class="rec-meta">Morning &nbsp;|&nbsp; Group Project &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-closing">program entry</a></p>
  <p class="rec-title">Serious People — Two-Speed Newsworthiness Detection</p>
  <p class="rec-speakers"><strong>Presented by:</strong> Team Serious People</p>
  <p class="rec-desc">Team Serious People built two complementary computational methods for pulling newsworthy stories out of long-form radio transcripts (up to 3 hours 45 minutes) for regional editors: a fast, free semantic-chunking pipeline under 40 lines of code that runs locally in about ten minutes, and a slow but exceptionally detailed Llama-based model with a six-page prompt that produces timestamped, rated story breakdowns. Both methods caught a good story that the team&#x27;s own manual coder missed entirely.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (7)</summary><ul>
    <li><span class="ch-time">00:00</span> Problem statement and the two-method approach</li>
    <li><span class="ch-time">00:54</span> Refining 18 newsworthiness criteria down to 7</li>
    <li><span class="ch-time">01:42</span> Method 1: fast, free semantic chunking run locally</li>
    <li><span class="ch-time">03:46</span> Method 2: a slow, high-intensity Llama pipeline</li>
    <li><span class="ch-time">04:38</span> Validation against manual coding</li>
    <li><span class="ch-time">05:02</span> The value case: two speeds for two editorial situations</li>
    <li><span class="ch-time">06:24</span> Q&amp;A: longitudinal topics and score distributions</li>
  </ul></details>
</div>

<div class="rec-card" id="project-results-closing">
  <p class="rec-meta">Morning &nbsp;|&nbsp; Group Project &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-closing">program entry</a></p>
  <p class="rec-title">Group Project Results and Closing</p>
  <p class="rec-speakers"><strong>With:</strong> SICSS Melbourne 2026 judges &amp; organisers</p>
  <p class="rec-desc">The judges announce the SICSS Melbourne 2026 group-project placings: Broke SICSS&#x27;s ABC regional-news tool takes the win for its clear user focus, costing and implementation thinking, ahead of runner-up Data Peekers, third-placed Serious People, and the One Nation populism study in fourth — which the judges nonetheless called the project most likely to become an academic publication. Closing remarks urge every team to publish their work and flag the DESIRES prototype conference as a venue.</p>
  <div class="video-embed" data-youtube-id=""></div>
  <details class="chapters"><summary>Chapters (7)</summary><ul>
    <li><span class="ch-time">00:00</span> Judges take the stage</li>
    <li><span class="ch-time">00:17</span> Fourth place: the One Nation team, and why</li>
    <li><span class="ch-time">03:30</span> Third place: Serious People</li>
    <li><span class="ch-time">04:59</span> Runner-up: Data Peekers</li>
    <li><span class="ch-time">06:31</span> Extended feedback: LLM labels and participant nudging</li>
    <li><span class="ch-time">10:23</span> Winner: Broke SICSS</li>
    <li><span class="ch-time">12:19</span> Closing remarks, publication and conference encouragement</li>
  </ul></details>
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

<script>
(function () {
  function initEmbeds() {
    document.querySelectorAll('.video-embed').forEach(function (slot) {
      var id = (slot.getAttribute('data-youtube-id') || '').trim();
      if (id) {
        var card = slot.closest('.rec-card');
        var title = card ? card.querySelector('.rec-title').textContent : 'Session recording';
        var iframe = document.createElement('iframe');
        iframe.src = 'https://www.youtube-nocookie.com/embed/' + encodeURIComponent(id);
        iframe.title = title;
        iframe.loading = 'lazy';
        iframe.allow = 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share';
        iframe.allowFullscreen = true;
        slot.textContent = '';
        slot.appendChild(iframe);
      } else if (!slot.querySelector('.video-placeholder')) {
        var ph = document.createElement('div');
        ph.className = 'video-placeholder';
        ph.innerHTML = '<div class="vp-icon">🎬</div><div class="vp-text">Recording coming soon</div><div class="vp-sub">The video is being prepared for upload.</div>';
        slot.appendChild(ph);
      }
    });
  }
  function revealFromHash() {
    var hash = window.location.hash;
    if (!hash) return;
    var target = document.querySelector(hash);
    if (target && target.classList.contains('rec-card')) {
      window.requestAnimationFrame(function () { target.scrollIntoView({ block: 'start' }); });
    }
  }
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', function () { initEmbeds(); revealFromHash(); });
  } else { initEmbeds(); revealFromHash(); }
  window.addEventListener('hashchange', revealFromHash);
})();
</script>
