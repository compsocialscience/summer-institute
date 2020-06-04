  {% assign data_path_parts = include.path | split: "/" %}
  {% assign tempdata = include.data %}
  {% assign data_by_path = nil %}
  {% for part in data_path_parts %}
    {% if tempdata && tempdata[part] %}
      {% assign tempdata = tempdata[part] %}
      {% if forloop.last %}
        {% assign data_by_path = tempdata %}
      {% endif %}
    {% else %}
      {% break %}
    {% endif %}
  {% endfor %}