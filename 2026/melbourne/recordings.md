---
layout: location_detail
partner_site: melbourne
---

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
  <div class="video-embed" data-youtube-id="Oy6lwNt-78w"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Social-Bias-in-CSS_Ahrabhi_Kathirgamalingham.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="4Qc0PyZGtZo"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Data-Donations_Kellie_Vella_Lauren_Hayden.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="7EqYf21rPFE"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Publishing-in-CSS_Olga_Boichak_Kateryna_Kasianenko.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="kq98diR9ihU"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Nectar-Cloud_Sonia_Ramza.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="6EWjoYPVUws"></div>
  <p class="rec-resources"><a class="res-pdf" href=https://internetobservatory.org.au/training_materials/sicss/Does_computational_social_science_lack_theory-Ehsan_Deghan.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="c60zfWjio18"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/AIReD_Platform-Richard_Sinnott.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="PlSxReyu-v4"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Data-Download-Packages_Dan_Michael_Kellie.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="GFFlwKgLK6c"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Working-with-Text_Kim_Doyle.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="a7ueqTCRPVY"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Screen-Capture-Dan_Tran_Dan_Angus.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="77mhChOgf6g"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/LLM-Pipelines_training-Seraphine_Maertz.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="YWRMk9sjz_s"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/RAG-Systems_Futoon_Sachin.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="LX0TnTY93XI"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Image-Analysis_Kunal_Chand_Lauren_Hayden.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="GzY5JrQtWl4"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Cross-Disciplinary-Panel.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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

<div class="rec-card" id="career-success">
  <p class="rec-meta">13:30–15:00 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-career-success">program entry</a></p>
  <p class="rec-title">Career Success</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://www.rmit.edu.au/profiles/t/j-trippas" target="_blank" rel="noopener noreferrer">Johanne Trippas</a>
  </p>
  <div class="video-embed" data-youtube-id="gTvsO_kvOEY"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Career_Success-Johanne_Trippas.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="3idL1MIMjk8"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Grant-Writing_Dan_Angus.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="C6CYIQKQ2Ew"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Knowledge-Extraction-with-SciLire.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="PPpEKKNbV4A"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Music-Score-Analysis_DR-Batterham.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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

<!-- ─── Day 8 ─── -->
<div class="day-header"><h3>Day 8 · Wednesday 1 July</h3></div>

<div class="rec-card" id="validation">
  <p class="rec-meta">09:00–10:30 &nbsp;|&nbsp; Workshop &nbsp;|&nbsp; <a href="/2026/melbourne/schedule#session-validation">program entry</a></p>
  <p class="rec-title">Validation in Computational Social Science</p>
  <p class="rec-speakers"><strong>Speaker:</strong>
    <a href="https://internetobservatory.org.au/about/team" target="_blank" rel="noopener noreferrer">Matteo Vergani</a> (Deakin)
  </p>
  <div class="video-embed" data-youtube-id="swtiR9wJFfE"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Validation-in-CSS_Matteo-Vergani.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
  <div class="video-embed" data-youtube-id="VGtGZhE7e-E"></div>
  <p class="rec-resources"><a class="res-pdf" href="https://internetobservatory.org.au/training_materials/sicss/Wikibase-for-Mixed-Methods-Francesco_Bailo.pdf" target="_blank" rel="noopener noreferrer">Training in PDF</a></p>
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
