---
title: "Blog Posts"
layout: default
permalink: blog/
---

## Blog Posts

<p class="center">Writing about everything and anything related to web design. Articles tend to have a major focus on performance, accessibility and/or usability.</p>

---

<ul class="posts-list">
    {% for post in site.posts %}
      <li><span>{{ post.date | date: "%m/%d/%Y" }}</span><br/><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>