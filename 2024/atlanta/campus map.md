---
layout: default
---

{% for event in site.data.schedule.events %}
  <h1>{{ event.name }}</h1>
  <p>Location: {{ event.location }}</p>
  <img src="{{ event.image | relative_url }}" alt="{{ event.name }}">
{% endfor %}
