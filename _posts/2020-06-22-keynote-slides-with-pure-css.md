---
id: 596
title: Keynote Slides with Pure CSS
date: 2020-06-22T09:47:48-04:00
author: Bradley Taunt
layout: post
categories:
  - Web Design
summary: Building out a reusable keynote slide plugin with only pure CSS
---

*There are a great deal of options available on the web and built* into most operating systems when you need to create presentation / keynote slides. You could use native software like LibremOffice Impress, Powerpoint, Apple&#8217;s Keynote, etc. You could also decide to use preexisting web-based apps like Google Slides or an open source project such as RevealJS. All of these are good options.

But thinking more about how overly &#8220;complex&#8221; these apps are implemented, it got me wondering if I could quickly code up a presentation slide &#8220;framework&#8221; with pure CSS and barely any code&#8230;

This is what I came up with:

## The Demo

<p class="codepen" data-height="512" data-theme-id="dark" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="jOWBJZb" style="height: 512px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Presentation / Keynote Slides (Pure CSS)">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/jOWBJZb">
  Presentation / Keynote Slides (Pure CSS)</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

Yes, I know this is _ugly_, but this was created as a barebones skeleton for others to build upon. The demo uses a simple set of `radio` inputs that correspond to their own individual `slide` element. The &#8220;framework&#8221; looks at the currently `checked` input, then changes the `opacity` and `z-index` of it&#8217;s corresponding slide item. Pretty straightforward stuff!

Let&#8217;s break down each piece:

## The HTML

```
<div class="slider">
    <input type="radio" name="pagination" value="1" checked>
    <input type="radio" name="pagination" value="2">
    <input type="radio" name="pagination" value="3">
    <input type="radio" name="pagination" value="4">
    <input type="radio" name="pagination" value="5">

    <div class="slide">
        <h2>Slide 1</h2>
    </div>
    <div class="slide">
        <h2>Slide 2</h2>
    </div>
    <div class="slide">
        <h2>Slide 3</h2>
    </div>
    <div class="slide">
        <h2>Slide 4</h2>
    </div>
    <div class="slide">
        <h2>Slide 5</h2>
    </div>
</div>
```

There isn&#8217;t a whole lot going on here. We are just including a set of `radio` inputs (based on how many slides are desired) along with their corresponding `slide` class elements. You might notice we don&#8217;t do anything to specifically target each individual slide item &#8211; you&#8217;ll see why we don&#8217;t need to in the CSS section!

## The CSS (SCSS)

```
/* Basic default styles */
.slider {
    height: 100%;
    left: 0;
    position: fixed;
    top: 0;
    width: 100%;

    .slide {
        height: 100%;
        opacity: 0;
        position: absolute;
        width: 100%;
        z-index: -2;
    }
}

input[type="radio"] { cursor: pointer; }

/* Target slide item based on currently checked radio */
input[type="radio"]:nth-of-type(1):checked ~ .slide:nth-of-type(1),
input[type="radio"]:nth-of-type(2):checked ~ .slide:nth-of-type(2),
input[type="radio"]:nth-of-type(3):checked ~ .slide:nth-of-type(3),
input[type="radio"]:nth-of-type(4):checked ~ .slide:nth-of-type(4),
input[type="radio"]:nth-of-type(5):checked ~ .slide:nth-of-type(5) {
    opacity: 1;
    z-index: 1;
}

/* Individual slide styling */
.slide:nth-of-type(1) { background: dodgerblue; }
.slide:nth-of-type(2) { background: crimson; }
.slide:nth-of-type(3) { background: rebeccapurple; }
.slide:nth-of-type(4) { background: goldenrod; }
.slide:nth-of-type(5) { background: pink; }
```

Again &#8211; not much to see here. We use CSS to look down through the DOM for each `radio` elements slide &#8220;partner&#8221;. We do this by targeting the `nth-of-type` on both elements. Simple stuff.

Some drawbacks to this approach:

  * You need to manually target each new slide you add (color, styling, content, etc.)
  * Lack of animations might require extra work to implement (maybe 3rd party libraries like AOS?)
  * Probably won&#8217;t be best for extremely long/complex presentation slides

That&#8217;s it! Hope you enjoy playing around with it.

* footnotes will be placed here. This line is necessary
{:footnotes}