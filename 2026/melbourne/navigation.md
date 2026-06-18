---
layout: location_detail
partner_site: melbourne
---

<style>
/* ═══════════════════════════════════════════════════════
   SICSS Melbourne 2026 · Navigation styles
   ═══════════════════════════════════════════════════════ */

.nav-wrap { font-size: 1.05rem; line-height: 1.65; }

/* ── Intro note ── */
.nav-note {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #f7fcfb;
  color: #2c3e50;
  margin-bottom: 28px;
}
.nav-note strong { color: #1a2e50; }

/* ── Jump links ── */
.venue-jump {
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
  margin: 0 0 38px 0;
}
.venue-jump a {
  flex: 1 1 200px;
  text-align: center;
  padding: 14px 16px;
  border-radius: 10px;
  text-decoration: none;
  font-weight: 600;
  color: #fff !important;
  box-shadow: 0 2px 8px rgba(0,0,0,.12);
  transition: transform .12s, box-shadow .12s;
}
.venue-jump a:hover { transform: translateY(-2px); box-shadow: 0 4px 14px rgba(0,0,0,.18); }
.venue-jump a small { display: block; font-weight: 400; font-size: .8em; opacity: .9; margin-top: 3px; }
.j-rmit  { background: linear-gradient(135deg, #d11f2d 0%, #a3121e 100%); }
.j-act   { background: linear-gradient(135deg, #e35205 0%, #b53d00 100%); }
.j-deakin{ background: linear-gradient(135deg, #1a3a5f 0%, #0d2240 100%); }

/* ── Venue card ── */
.venue {
  border: 1.5px solid #dce4ee;
  border-radius: 14px;
  overflow: hidden;
  margin: 30px 0 46px 0;
  box-shadow: 0 2px 12px rgba(0,0,0,.06);
  scroll-margin-top: 20px;
}
.venue-head {
  padding: 22px 26px;
  color: #fff;
}
.venue-head.h-rmit   { background: linear-gradient(135deg, #d11f2d 0%, #a3121e 100%); }
.venue-head.h-act    { background: linear-gradient(135deg, #e35205 0%, #b53d00 100%); }
.venue-head.h-deakin { background: linear-gradient(135deg, #1a3a5f 0%, #0d2240 100%); }
.venue-head h2 { margin: 0 0 4px 0; font-size: 1.55rem; color: #fff; }
.venue-head .sub { font-size: 1rem; opacity: .92; }
.venue-head .dates {
  display: inline-block;
  margin-top: 12px;
  padding: 5px 13px;
  background: rgba(255,255,255,.18);
  border-radius: 20px;
  font-size: .92rem;
  font-weight: 600;
}

/* ── Meta row (address + transport) ── */
.venue-meta {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  background: #f8fafc;
  border-bottom: 1px solid #e6edf4;
}
.venue-meta .cell { padding: 18px 26px; }
.venue-meta .cell + .cell { border-left: 1px solid #e6edf4; }
.venue-meta h4 {
  margin: 0 0 6px 0;
  font-size: .82rem;
  letter-spacing: .04em;
  text-transform: uppercase;
  color: #7a8aa0;
}
.venue-meta p { margin: 0; font-size: .98rem; }
.venue-meta a { color: #0d6efd; }

/* ── Map embed ── */
.map-embed {
  border-top: 1px solid #e6edf4;
}
.map-embed summary {
  cursor: pointer;
  padding: 12px 26px;
  font-weight: 600;
  color: #1a2e50;
  background: #f1f5fa;
  list-style: none;
}
.map-embed summary::-webkit-details-marker { display: none; }
.map-embed summary::before { content: "📍 "; }
.map-embed iframe {
  width: 100%;
  height: 320px;
  border: 0;
  display: block;
}

/* ── Steps ── */
.steps {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(290px, 1fr));
  gap: 22px;
  padding: 26px;
}
.step {
  border: 1px solid #e3e9f0;
  border-radius: 12px;
  overflow: hidden;
  background: #fff;
  display: flex;
  flex-direction: column;
  box-shadow: 0 1px 5px rgba(0,0,0,.05);
}
.step-cap {
  display: flex;
  gap: 11px;
  align-items: flex-start;
  padding: 14px 16px;
}
.step-num {
  flex: 0 0 auto;
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background: #1a2e50;
  color: #fff;
  font-weight: 700;
  font-size: .95rem;
  display: flex;
  align-items: center;
  justify-content: center;
}
.step-cap p { margin: 3px 0 0 0; font-size: .96rem; line-height: 1.5; }
.step img {
  width: 100%;
  height: auto;
  display: block;
  border-top: 1px solid #eef2f7;
}

/* ── Route dividers (main vs alternative) ── */
.steps-divider {
  grid-column: 1 / -1;
  margin: 4px 0 -6px 0;
  padding: 11px 16px;
  border-radius: 8px;
  font-weight: 600;
  font-size: .98rem;
}
.steps-divider.d-main { background: #fdecee; border-left: 4px solid #d11f2d; color: #a3121e; }
.steps-divider.d-alt  { background: #fff3ea; border-left: 4px solid #e35205; color: #b53d00; }
.step.alt .step-num { background: #e35205; }

@media (max-width: 600px) {
  .venue-meta { grid-template-columns: 1fr; }
  .venue-meta .cell + .cell { border-left: 0; border-top: 1px solid #e6edf4; }
}
</style>

<div class="nav-wrap" markdown="0">

<h1 class="display-4">Getting to the Venues</h1>
<p class="lead">Step-by-step directions to each SICSS-Melbourne 2026 venue.</p>

<div class="nav-note">
SICSS-Melbourne runs across <strong>three venues</strong>. Use the photo walkthroughs below to find each room — every shot is taken from a participant's eye level, in the order you'll walk it. All three venues are inside Melbourne's <strong>Free Tram Zone</strong>. If you get lost on the day, email the organisers at sicss@internetobservatory.org.au or message on Discord.
</div>

<div class="venue-jump">
  <a class="j-rmit"   href="#megaflex">Megaflex 3 <small>RMIT Building 8 · Week 1, Mon–Wed</small></a>
  <a class="j-act"    href="#activator">RMIT Activator <small>Building 98 · Week 1, Thu–Fri</small></a>
  <a class="j-deakin" href="#deakin">Deakin Downtown <small>Collins St · Week 2</small></a>
</div>

<!-- ════════════════════ VENUE 1 ════════════════════ -->
<div class="venue" id="megaflex">
  <div class="venue-head h-rmit">
    <h2>1 · Megaflex 3</h2>
    <div class="sub">RMIT University — Building 8, Swanston Street</div>
    <div class="dates">Week 1 · Mon 22 – Wed 24 June 2026</div>
  </div>
  <div class="venue-meta">
    <div class="cell">
      <h4>Address</h4>
      <p>Building 8, RMIT University, Swanston Street, Melbourne VIC 3000<br>
      <a href="https://maps.google.com/?q=RMIT+Building+8+Swanston+Street+Melbourne" target="_blank" rel="noopener noreferrer">Open in Google Maps →</a></p>
    </div>
    <div class="cell">
      <h4>Getting there</h4>
      <p><strong>Train:</strong> Melbourne Central Station (~3-5 min walk).<br>
      <strong>Tram:</strong> Any Swanston St tram (1, 3, 5, 6, 16, 64, 67, 72) to <em>RMIT University/Swanston St. or RMIT University stop</em>.</p>
    </div>
  </div>
  <details class="map-embed">
    <summary>Show map</summary>
    <iframe loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://maps.google.com/maps?q=RMIT%20Building%208%20Swanston%20Street%20Melbourne&z=17&output=embed"></iframe>
  </details>
  <div class="steps">
    <div class="steps-divider d-main">Main route — via the RMIT Connect doors (Swanston Street)</div>
    <div class="step"><div class="step-cap"><span class="step-num">1</span><p>From Melbourne Central train/tram stop (next to the State Library Victoria, if you are coming from that side), head to the corner — RMIT Building 8 after the brick-and-greenery building across the road.</p></div><img src="/2026/melbourne/rmit-megaflex/1.jpeg" alt="Swanston Street intersection with RMIT Building 8 opposite"></div>
    <div class="step"><div class="step-cap"><span class="step-num">2</span><p>Walk along Swanston Street to the Building 8 frontage, under the large RMIT University banner, and turn right.</p></div><img src="/2026/melbourne/rmit-megaflex/2.jpeg" alt="RMIT University banner above the Building 8 entrance on Swanston Street"></div>
    <div class="step"><div class="step-cap"><span class="step-num">3</span><p>Head for the glass "Building 8 / RMIT Connect" doors — enter here.</p></div><img src="/2026/melbourne/rmit-megaflex/3.jpeg" alt="Green-glass Building 8 RMIT Connect entrance doors"></div>
    <div class="step"><div class="step-cap"><span class="step-num">4</span><p>Once inside, follow the <em>Student Connect</em> signage straight ahead and head up the stairs.</p></div><img src="/2026/melbourne/rmit-megaflex/4.jpeg" alt="Interior corridor with Student Connect floor signage"></div>
    <div class="step"><div class="step-cap"><span class="step-num">5</span><p>Turn right once you reach the top.</p></div><img src="/2026/melbourne/rmit-megaflex/5.jpeg" alt="Upper level, turn right after the stairs"></div>
    <div class="step"><div class="step-cap"><span class="step-num">6</span><p>Megaflex 3 is the glass-walled room ahead — you've arrived.</p></div><img src="/2026/melbourne/rmit-megaflex/6.jpeg" alt="Glass-walled Megaflex 3 room, you are here"></div>
    <div class="steps-divider d-alt">Alternative route — via the Buildings 8 / 10 forecourt</div>
    <div class="step alt"><div class="step-cap"><span class="step-num">1</span><p>Alternatively, step into the RMIT forecourt, find the Buildings 8 / 10 directory pillar, and go up the steps.</p></div><img src="/2026/melbourne/rmit-megaflex/7.jpeg" alt="RMIT Buildings 8 and 10 directory pillar and forecourt steps"></div>
    <div class="step alt"><div class="step-cap"><span class="step-num">2</span><p>Go through the automated door of the 8 / 10 building.</p></div><img src="/2026/melbourne/rmit-megaflex/8.jpeg" alt="Automated door inside the 8/10 building"></div>
    <div class="step alt"><div class="step-cap"><span class="step-num">3</span><p>Take the escalator to go up.</p></div><img src="/2026/melbourne/rmit-megaflex/9.jpeg" alt="Building 8 escalators, take the up escalator on the left"></div>
    <div class="step alt"><div class="step-cap"><span class="step-num">4</span><p>This brings you up to Megaflex 3 as well — you've arrived.</p></div><img src="/2026/melbourne/rmit-megaflex/10.jpeg" alt="Interior view of the Megaflex 3 teaching room"></div>
  </div>
</div>

<!-- ════════════════════ VENUE 2 ════════════════════ -->
<div class="venue" id="activator">
  <div class="venue-head h-act">
    <h2>2 · RMIT Activator</h2>
    <div class="sub">RMIT University — Building 98, Victoria Street</div>
    <div class="dates">Week 1 · Thu 25 – Fri 26 June 2026</div>
  </div>
  <div class="venue-meta">
    <div class="cell">
      <h4>Address</h4>
      <p>Building 98, 102 Victoria Street, Melbourne VIC 3053<br>
      <a href="https://maps.google.com/?q=RMIT+Building+98+102+Victoria+Street+Melbourne" target="_blank" rel="noopener noreferrer">Open in Google Maps →</a></p>
    </div>
    <div class="cell">
      <h4>Getting there</h4>
      <p><strong>Train:</strong> Melbourne Central Station (~8 min walk).<br>
      <strong>Tram:</strong> You can get off at the RMIT University tram stop or walk down from Queensberry St/Swanston St stop (3, 6, 16, 64, 72) or walk up from Melbourne Central — Building 98 sits on the corner of Victoria &amp; Cardigan Streets next to a Chinese hotpot place on one side, and ADM+S office on the other.</p>
    </div>
  </div>
  <details class="map-embed">
    <summary>Show map</summary>
    <iframe loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://maps.google.com/maps?q=RMIT%20Building%2098%20102%20Victoria%20Street%20Melbourne&z=17&output=embed"></iframe>
  </details>
  <div class="steps">
    <div class="step"><div class="step-cap"><span class="step-num">1</span><p>From Swanston Street, use the Oxford Scholar hotel (circled) as your landmark. Also, the Oxford Scholar hotel is the venue where our Trivia night took place, across the road from the Building 8/10 entrance.</p></div><img src="/2026/melbourne/rmit-activator/1.jpeg" alt="Swanston Street with the Oxford Scholar hotel circled as a landmark"></div>
    <div class="step"><div class="step-cap"><span class="step-num">2</span><p>Proceed straight and turn right onto Victoria Street — or go down Franklin Street alongside the red-brick heritage building.</p></div><img src="/2026/melbourne/rmit-activator/2.jpeg" alt="Intersection showing options to turn onto Victoria Street or down Franklin Street"></div>
    <div class="step"><div class="step-cap"><span class="step-num">3</span><p>If you take Franklin Street, follow it along the long red-brick building.</p></div><img src="/2026/melbourne/rmit-activator/3.jpeg" alt="Franklin Street running alongside the red-brick heritage building"></div>
    <div class="step"><div class="step-cap"><span class="step-num">4</span><p>Building 98 is across Victoria Street.</p></div><img src="/2026/melbourne/rmit-activator/4.jpeg" alt="RMIT Building 98 dark glass facade across Victoria Street"></div>
    <div class="step"><div class="step-cap"><span class="step-num">5</span><p>You've arrived — the Building 98 / Activator entrance on Victoria Street; if the door is closed, someone will take you upstairs, email us, or send us a message on Discord.</p></div><img src="/2026/melbourne/rmit-activator/5.jpeg" alt="RMIT Building 98 Activator entrance on Victoria Street"></div>
  </div>
</div>

<!-- ════════════════════ VENUE 3 ════════════════════ -->
<div class="venue" id="deakin">
  <div class="venue-head h-deakin">
    <h2>3 · Deakin Downtown</h2>
    <div class="sub">Level 12, Tower 2, 727 Collins Street (Collins Square)</div>
    <div class="dates">Week 2 · Mon 29 June – Fri 3 July 2026</div>
  </div>
  <div class="venue-meta">
    <div class="cell">
      <h4>Address</h4>
      <p>Deakin Downtown, Level 12, Tower 2, 727 Collins Street, Melbourne VIC 3008<br>
      <a href="https://maps.google.com/?q=Deakin+Downtown+727+Collins+Street+Melbourne" target="_blank" rel="noopener noreferrer">Open in Google Maps →</a></p>
    </div>
    <div class="cell">
      <h4>Getting there</h4>
      <p><strong>Train:</strong> Southern Cross Station — take the <em>Collins Street exit</em> (~3 min walk).<br>
      <strong>Tram:</strong> Collins Street trams (11, 48) toward Docklands; Batman's Hill/Collins St the stop right next to it.</p>
    </div>
  </div>
  <details class="map-embed">
    <summary>Show map</summary>
    <iframe loading="lazy" referrerpolicy="no-referrer-when-downgrade" src="https://maps.google.com/maps?q=Deakin%20Downtown%20727%20Collins%20Street%20Melbourne&z=17&output=embed"></iframe>
  </details>
  <div class="steps">
    <div class="step"><div class="step-cap"><span class="step-num">1</span><p>From Southern Cross Station, take the Collins Street exit.</p></div><img src="/2026/melbourne/deakin/1.jpeg" alt="Southern Cross Station concourse, Collins Street exit"></div>
    <div class="step"><div class="step-cap"><span class="step-num">2</span><p>Walk down Collins Street (Collins 664 would be a notable sign).</p></div><img src="/2026/melbourne/deakin/2.jpeg" alt="Walking down Collins Street toward Melbourne Quarter"></div>
    <div class="step"><div class="step-cap"><span class="step-num">3</span><p>Continue along Collins Street; your destination towers are ahead on the left - straight after the yellow structure.</p></div><img src="/2026/melbourne/deakin/3.jpeg" alt="Collins Street with the destination towers ahead on the right"></div>
    <div class="step"><div class="step-cap"><span class="step-num">4</span><p>Keep going until you reach Tower One &amp; Two.</p></div><img src="/2026/melbourne/deakin/4.jpeg" alt="Approaching Tower One and Two with the yellow sculpture canopy"></div>
    <div class="step"><div class="step-cap"><span class="step-num">5</span><p>Enter at Tower One & Two (left hand side; circled).</p></div><img src="/2026/melbourne/deakin/5.jpeg" alt="Tower Four and Five entrance circled"></div>
    <div class="step"><div class="step-cap"><span class="step-num">6</span><p>Proceed through the lobby and turn right.</p></div><img src="/2026/melbourne/deakin/6.jpeg" alt="Collins Square lobby, proceed and turn right"></div>
    <div class="step"><div class="step-cap"><span class="step-num">7</span><p>Next to lift core 16-6, take the escalator upstairs.</p></div><img src="/2026/melbourne/deakin/7.jpeg" alt="Escalator next to lift core 16-6, going up"></div>
    <div class="step"><div class="step-cap"><span class="step-num">8</span><p>At the destination lift panel, select <strong>12 – Deakin</strong>.</p></div><img src="/2026/melbourne/deakin/8.jpeg" alt="Destination lift touch panel with floor 12 Deakin selected"></div>
    <div class="step"><div class="step-cap"><span class="step-num">9</span><p>Note the lift you're allocated (e.g. lift B) and take it to floor 12.</p></div><img src="/2026/melbourne/deakin/9.jpeg" alt="Lift panel showing the allocated lift B to floor 12"></div>
    <div class="step"><div class="step-cap"><span class="step-num">10</span><p>On Level 12, follow the Reception signs.</p></div><img src="/2026/melbourne/deakin/10.jpeg" alt="Level 12 wall signage pointing to Reception"></div>
    <div class="step"><div class="step-cap"><span class="step-num">11</span><p>You've arrived at Deakin Downtown reception — welcome to Week 2. To find the right area, ask the reception or use the display next to the reception area to find the name of the room.</p></div><img src="/2026/melbourne/deakin/11.jpeg" alt="Deakin Downtown reception and lounge on Level 12"></div>
  </div>
</div>

</div>
