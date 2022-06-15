---
title: Using Hamburger Menus? Try Sausage Links
date: 2019-06-14 00:00:00 Z
layout: post
description: Hamburger menus have become the norm for mobile navigation systems but
  are they always the best way?
summary: Hamburger menus have become the go-to implementation for mobile navigation
  systems - but are they always the best solution?
redirect_from: "/2019/06/14/hamburger-menu-alternative/"
featured: true
---

*When designing medium to large sized menu navigations on the mobile* web the default go-to, for some time now, has been hamburger menus. This isn't necessarily a <i>bad</i> thing, but there is a simpler alternative for certain use cases.

Before we get into the nitty-gritty details (and a simple demo) of the *sausage link* concept, let's take a quick look at the pros and cons of hamburger menus.

## Hamburger Menus

The concept of the [hamburger menu](https://codepen.io/search/pens?q=hamburger%20menu&page=1&order=popularity&depth=everything) isn't *horrible* by any means, in fact it does solve a lot of problems from a visual perspective. Unfortunately, that doesn't mean it exists without some annoying flaws.

### The Good

- Minimizes the amount visual space the menu requires
- Fairly commonplace now that a good portion of users understand it's functionality
- Makes the lives of designers easier by tucking all items away on mobile 😛

### The Bad

- Requires extra testing/work to ensure the menu will play nice with screen readers and keyboard-only users
- Can get overly complex with the presence of children dropdown elements, help text etc.
- Adds bloat to projects that might require additional JavaScript to render these menus (CSS only hamburger menus avoid this issue)
- Adds an additional point of interaction from the user (click to open, then proceed to read through available options)

As you can see, the bad points listed above aren't *that* bad. I see them more as minor potholes along the UX journey for your end-users. A good portion of hamburger menu examples in the wild work perfectly fine and should remain as they are. However, those outliers who abuse or misuse the hamburger concept should be introduced to **sausage links**.

## Sausage Links

I should start by mentioning that this concept is far from **new**. There are a good number of websites that already implement this menu type in some form or another. The point of this post isn't to blow your mind with some new-never-thought-of navigation design. I'm just trying to bring awareness to another available menu concept.

Enough chit-chat, let's take a look at sausage links in action:

<p class="codepen" data-height="328" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="QXjjbE" style="height: 328px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Scrolling Navigation (Sausage Links)">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/QXjjbE/">
  Scrolling Navigation (Sausage Links)</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

The above CodePen adds a good amount of visual design fluff, so let's take a look at the bare minimum HTML &amp; CSS needed to accomplish this menu:

```html
<nav class="sausage-links">
    <ul>
        <li><a href="">Homepage</a></li>
        <li><a href="">Categories</a></li>
        <li><a href="">Filter Properties</a></li>
        <li><a href="">Edit Optional Tags</a></li>
        <li><a href="">Research Papers</a></li>
        <li><a href="">Contact Our Team</a></li>
    </ul>
</nav>
```

```css
/* Sausage Links Nav Container */
.sausage-links {
    position: relative;
}

/* The left and right "faded" pseudo elements */
.sausage-links:before, .sausage-links:after {
    content: '';
    height: calc(100% - 2em);
    pointer-events: none;
    position: absolute;
    top: 1em;
    width: 10px;
    z-index: 2;
}
.sausage-links:before {
    background: linear-gradient(to right, rgba(255,255,255,0) 0%, white 100%);
    right: 0;
}
.sausage-links:after {
    background: linear-gradient(to left, rgba(255,255,255,0) 0%, white 100%);
    left: 0;
}

/* Basic flexbox to prevent items from breaking lines */
.sausage-links ul {
    display: flex;
    flex-wrap: nowrap;
    overflow: auto;
    -webkit-overflow-scrolling: touch;
}

.sausage-links ul li {
    white-space: nowrap;
}

.sausage-links ul li a, .sausage-links ul li a:visited {
    display: inline-block;
}
```

Pretty simple, eh?

**Update**: Thanks to [@dany0w](https://twitter.com/dany0w) for pointing out that I forgot to include `-webkit-overflow-scrolling: touch` for momentum scrolling on iOS.

### The Good

- Extremely minimal amount of CSS required
- Screen reader / keyboard-only safe
- Zero JavaScript needed
- No need for hacky hidden `radio` inputs for toggling parent containers etc.
- Users can see first few available options without any interaction

### The Bad

- May not look the most visually appealing for certain project designs (ugly scrollbar in some instances)
- Better suited for small to medium menu lists compared to massive sitemaps
- Without proper fade / cut off visual cues, users may not understand they can scroll

## So, should I use hamburger menus or sausage links?

That really depends on your project or overall mobile design (I know, such a helpful answer). I'm sure there are even a few use cases where it would make sense to have sausage links within a toggle-based hamburger menu. The menu possibilities could be endless!

That's it. I hope I've inspired you to try out sausage links in the near future or at least made you think more deeply about mobile navigation design!

<small>...is anyone else really hungry now?</small>

* footnotes will be placed here. This line is necessary
{:footnotes}
