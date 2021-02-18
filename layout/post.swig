{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ page.title }} | {{ title }}{% endblock %}

{% block class %}post posts-expand{% endblock %}

{% block content %}

  <div id="posts" class="posts-expand">
   {{ partial('_macro/post.swig', {post: page}) }}

    {% if theme.add_this_id %}
      <div>
        {% include '_partials/share/add-this.swig' %}
      </div>
    {% endif %}
  </div>
  

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}
