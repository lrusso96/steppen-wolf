---
layout: page
title: Tags
permalink: /tags/
header: true
---

<div class="container mx-auto">
{% for tag_hash in site.tags %}
<a class="tag" href="{{site.baseurl | append: '/tags/' | append: tag_hash[0] }}">{{ tag_hash[0] }}</a>
{% endfor %}
</div>