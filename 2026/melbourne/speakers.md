---
layout: location_detail
partner_site: melbourne
---

<style>
.people-intro {
  border-left: 4px solid #00a99d;
  padding: 14px 18px;
  border-radius: 0 6px 6px 0;
  background: #f7fcfb;
  color: #2c3e50;
  margin-bottom: 28px;
  line-height: 1.65;
}

.people-section-title {
  color: #1a2e50;
  font-size: 1.35em;
  margin: 36px 0 16px 0;
  padding-bottom: 8px;
  border-bottom: 3px solid #00a99d;
}

.people-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 14px;
  margin-bottom: 28px;
}

.person-card {
  padding: 18px 22px;
  border-radius: 8px;
  border: 1px solid #dce8f0;
  background: #fafcfe;
}

.person-photo {
  display: block;
  width: 180px;
  height: 180px;
  max-width: 100%;
  object-fit: cover;
  border-radius: 8px;
  background: #e4edf5;
  border: 1px solid #d3e2ee;
  margin: 4px 0 12px 0;
}

.person-photo-fallback {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 180px;
  height: 180px;
  max-width: 100%;
  border-radius: 8px;
  background: #00a99d;
  color: #ffffff;
  font-size: 2.6em;
  font-weight: 700;
  text-transform: uppercase;
  margin: 4px 0 12px 0;
}

.person-name {
  color: #1a2e50;
  font-size: 1.08em;
  font-weight: 700;
  margin: 0 0 4px 0;
}

.person-name a {
  color: #00a99d;
  text-decoration: none;
}

.person-name a:hover {
  text-decoration: underline;
}

.person-affiliation {
  font-size: 0.88em;
  color: #6b7f90;
  margin: 0 0 8px 0;
}

.person-role {
  display: inline-block;
  font-size: 0.72em;
  font-weight: 600;
  color: #4a6070;
  background: #e4edf5;
  padding: 2px 9px;
  border-radius: 12px;
  margin-bottom: 8px;
}

.person-bio {
  color: #3a4a5a;
  font-size: 0.94em;
  line-height: 1.55;
  margin: 0 0 10px 0;
}

.person-sessions {
  font-size: 0.87em;
  color: #3a4a5a;
  margin: 0;
}

.person-sessions strong {
  color: #1a2e50;
}

.person-sessions ul {
  margin: 4px 0 0 0;
  padding-left: 18px;
}

.person-sessions a {
  color: #00a99d;
  text-decoration: none;
}

.person-sessions a:hover {
  text-decoration: underline;
}

@media (min-width: 720px) {
  .people-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>

# Speakers

<div class="people-intro">
Meet the organisers and invited speakers for SICSS-Melbourne 2026. Speakers link to the sessions they are delivering on the <a href="schedule">program</a>.
</div>

<div class="people-grid">
{% assign speakers = site.data.2026.melbourne.speakers_directory | sort: 'sort_name' %}
{% for person in speakers %}
<div class="person-card">
  <p class="person-name">
    {% if person.profile_url and person.profile_url != '' %}
    <a href="{{ person.profile_url }}" target="_blank" rel="noopener noreferrer">{{ person.name }}</a>
    {% else %}
    {{ person.name }}
    {% endif %}
  </p>
  <p class="person-affiliation">{{ person.affiliation }}</p>
  {% if person.role %}
  <span class="person-role">{{ person.role }}</span>
  {% endif %}
  <p class="person-bio">{{ person.bio }}</p>
  {% if person.sessions.size > 0 %}
  <div class="person-sessions">
    <strong>Sessions:</strong>
    <ul>
      {% for session in person.sessions %}
      <li><a href="schedule#{{ session.anchor }}">{{ session.title }}</a></li>
      {% endfor %}
    </ul>
  </div>
  {% endif %}
</div>
{% endfor %}
</div>
