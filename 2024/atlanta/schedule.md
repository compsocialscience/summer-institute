---
layout: location_detail
partner_site: atlanta
schedule: true
---

# Schedule

---
layout: location_detail
partner_site: atlanta
schedule: true
title: Schedule
image: assets/images/caumap_SICSS.jpeg
---

# Schedule

Here is the map for Clark Atlanta University:

![Clark Atlanta University Map]({{ page.image | relative_url }})

## Event Details

{% for event in site.data.schedule.events %}
  <div class="event">
    <h2>{{ event.name }}</h2>
    <p>Location: {{ event.location }}</p>
    <img src="{{ event.image | relative_url }}" alt="{{ event.name }}">
  </div>
{% endfor %}
