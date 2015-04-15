{% for post in site.posts limit:3 %}
<div class="gallery-item">

  {% unless post.draft %}
    <h3 class="news-title">
      <a href="{{ post.url }}">
        {{ post.title }}
      </a>
    </h3>

    <span class="post-date">{{ post.date | date_to_string }}</span>
    {{ post.excerpt | textilize }}
    <a href="{{ post.url }}">Read...</a>
  {% endunless %}
</div>
{% endfor %}
