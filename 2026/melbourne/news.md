---
layout: location_detail
partner_site: melbourne
---

<style>
  .news-item {
    border-left: 4px solid #c8102e;
    padding: 0.75rem 1.25rem;
    margin-bottom: 2rem;
    background-color: #fafafa;
  }
  .news-date {
    font-size: 0.85rem;
    color: #666;
    margin-bottom: 0.25rem;
  }
  .news-title {
    font-size: 1.15rem;
    font-weight: 600;
    margin-bottom: 0.5rem;
  }
  .news-body {
    font-size: 0.97rem;
    line-height: 1.6;
  }
</style>

<h1 class="display-4">News</h1>
<p class="lead">Updates and announcements for SICSS-Melbourne 2026 participants.</p>
<hr>

{% assign news_items = site.data["2026"].melbourne.news %}
{% if news_items and news_items.size > 0 %}
  {% for item in news_items %}
  <div class="news-item">
    <div class="news-date">{{ item.date }}</div>
    <div class="news-title">{{ item.title }}</div>
    <div class="news-body">{{ item.body }}</div>
  </div>
  {% endfor %}
{% else %}
  <p>No updates yet. Check back soon.</p>
{% endif %}
