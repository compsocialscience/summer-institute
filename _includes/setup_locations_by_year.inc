{% assign locations_by_year = '' | split: '.' %}
{% for year_num in (2017..site.current_year) reversed %}
    {% assign year_str = year_num | downcase %}

    {% comment %}
    We want to sort locations by their "order" key and secondarily by their "title".
    We combine the "order" and "title" into a single string to sort by. The "order" must be
    zero padded so that they sort as expected when converted to a string.
    {% endcomment %}
    {% assign year_locations = '' | split: '.' %}
    {% for location in site.data[year_str] %}
      {% assign order = location[1].location.order | default: 98 | prepend: '0000' | slice: -4, 4 | append: location[1].location.title %}
      {% assign slug = location[0] %}
      {% include makehash.inc slug=slug order=order %}
      {% assign year_locations = year_locations | push: h %}
    {% endfor %}
    {% assign year_locations = year_locations | sort: "order" %}
    {% assign year_location_array = '' | split: '.' %}
    {% for year_location in year_locations %}
        {% assign year_location_item = site.data[year_str][year_location.slug] %}
        {% assign year_location_array = year_location_array | push: year_location_item %}
    {% endfor %}
    {% include makehash.inc year=year_str locations=year_location_array %}
    {% assign locations_by_year = locations_by_year | push: h %}
{% endfor %}