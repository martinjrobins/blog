---
title:  "Projects"
layout: splash
---

# Current and Past Projects

{% for project in site.projects %}

[{{project.title}}]({{project.url}}): {{project.excerpt}}

{% endfor %}

