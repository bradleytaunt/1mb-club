---
title: "Blog Posts"
layout: default
permalink: blog/
---

## Blog Posts

<p align="center">Writing about everything and anything related to web design. Articles tend to have a major focus on performance, accessibility and/or usability.</p>

---

<ul>
    {% for post in site.posts %}
      <li><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%m/%d/%Y" }}</time><br><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li><hr>
    {% endfor %}
</ul>