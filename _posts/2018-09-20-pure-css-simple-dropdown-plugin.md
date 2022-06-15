---
title: Pure CSS Simple Dropdown Plugin
date: 2018-09-20 00:00:00 Z
layout: post
column: single
description: Learn how to implement a custom select dropdown with CSS
summary: A simple, JavaScript-free way to implement a custom styled, plug-and-play
  select dropdown with pure CSS.
redirect_from: "/2018/09/20/pure-css-simple-dropdown-plugin/"
---

I find myself blowing away default browser `select` styling and implementing my own custom dropdowns far more often than I'd like. So, I recently created a very simple and clean component using just pure CSS.

You can find the HTML & CSS for the three different variations below:

## The HTML

```html
<div class="select-container">
    <select name="" id="">
        <option value="Option 1">Option 1</option>
        <option value="Option 2">Option 2</option>
        <option value="Option 3">Option 3</option>
    </select>
</div>

<div class="select-container shadow">
    <select name="" id="">
        <option value="Option 1">Option 1</option>
        <option value="Option 2">Option 2</option>
        <option value="Option 3">Option 3</option>
    </select>
</div>

<div class="select-container shadow depth">
    <select name="" id="">
        <option value="Option 1">Option 1</option>
        <option value="Option 2">Option 2</option>
        <option value="Option 3">Option 3</option>
    </select>
</div>
```

## The CSS

```css
.select-container {
    background: #fff url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAYCAYAAACIhL/AAAAAAXNSR0IArs4c6QAAAWBJREFUSA3Nl00OgjAQRmnDeQhwBjcu3HIIXXgZ8SpuvAJh7yW8AAnO1zTElkHaWn6a1DJ22nk2fSGKpmluSZJcqO+x1aLv+7Rt2weNhz0RCiGeRVEcJT10aZpWNL72AggWzdRJQGVZ9pZSnmjivTUkGMACJrAoQDzkeY4TrKh3iDdqqF1pFoUwACIqy/JJ9Fc1s8EHaoPhu7QBiAm6mHca6u+klZ5rXdsoJ4xIB2ubTfdOGUvj6HqNThCMSFzLbKo1GMsdFguIxDXMJjjDWC9AJC9s9shYb0AsWMpsztggQCzSdsHuWO3OGcttzlrMJcYym+7dpLFc3UlJ7OQYZs8Za9dE7AyI5H/MdjEWNezmBYjFgWY7GWvDIfYGxCJfs12Nxd52CwLEJh5mOxtrwyF2tphbPGe2r7FcjeATVL/uxzs7xNjogNiQMzvU2EUAsalldrCxHGDU7+jf4Rk95qYfkiGLtr7wLgYAAAAASUVORK5CYII=') no-repeat calc(100% - 10px) center;
    background-size: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    cursor: pointer;
    display: inline-block;
    overflow: hidden;
}
.select-container select {
    background: none;
    border: 0;
    cursor: pointer;
    outline: none;
    padding: 10px 40px 10px 10px;
    width: 100%;
    -webkit-appearance: none;
    -moz-appearance: none;
}

.select-container.shadow {
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}
.select-container.depth {
    background-color: #F8F8F8;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1), inset 0 2px 5px rgba(255,255,255,1), inset 0 -2px 5px rgba(0,0,0,0.05);
}
```

Check out the CodePen below and feel free to morph it as you see fit for your own projects!

<p data-height="465" data-theme-id="0" data-slug-hash="rZPzWy" data-default-tab="result" data-user="bradleytaunt" data-pen-title="Plug & Play Dropdown (Pure CSS)" class="codepen">See the Pen <a href="https://codepen.io/bradleytaunt/pen/rZPzWy/">Plug & Play Dropdown (Pure CSS)</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>) on <a href="https://codepen.io">CodePen</a>.</p>

<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

* footnotes will be placed here. This line is necessary
{:footnotes}
