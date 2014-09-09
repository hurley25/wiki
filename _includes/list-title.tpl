{% include header.tpl %}

{% for post in list %}
<article{% if forloop.index == 1 and preview %} content-loaded="1"{% endif %}>
	<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
	{% include meta.tpl %}
</article>
{% endfor %}

{% if list == null %}
<article class="empty">
	<p>该分类下还没有文章 ...</p>
</article>
{% endif %}