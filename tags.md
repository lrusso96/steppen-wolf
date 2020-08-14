---
layout: page
title: Tags
header: true
---

<div class="container mx-auto">
{% for tag_hash in site.tags %}
<li class="inline-block block-lg text-left ml-1 ml-lg-0">
                        <a class="italic no-underline h4 font-smoothing"
                            href="{{site.baseurl | append: '/tags/' | append: tag_hash[0] }}">{{ tag_hash[0] }}</a>
</li>
{% endfor %}
</div>