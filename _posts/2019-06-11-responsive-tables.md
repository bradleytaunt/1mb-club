---
title: Making Tables Responsive With Minimal CSS
date: 2019-06-11 00:00:00 Z
layout: post
description: Learn how to easily implement responsive table layouts with only CSS
summary: Building responsive tables can often become a nightmare. Learn how to easily
  implement responsive table layouts with only CSS.
redirect_from: "/2019/06/11/responsive-tables/"
featured: true
---


<strong>Update (Oct 2019):</strong> <a href="https://twitter.com/aardrian">@aardrian</a> wrote a previous post about how changing the <code>display</code> properties on tables can impact screen readers. I highly recommend his excellent article <a href="https://adrianroselli.com/2018/02/tables-css-display-properties-and-aria.html">Tables, CSS Display Properties, and ARIA</a>

---

*I find that the need to create responsive table layouts* pops up far more often than most developers would expect. The gut reaction might to be implement some sort of custom grid-system or pull in a pre-built library. Don't do this - just use tables and some simple CSS.

My recent article, [Write HTML Like It's 1999](/blog/html-like-1999), received far more attention than I ever expected on HackerNews. With this attention came a few comments mentioning how `table` elements don't play nice with mobile devices or that it's not possible to have a useable layout on smaller screens. *This simply isn't true*.

Included below are two separate demos showing how to optimize `table` HTML for mobile devices using only a minimal amount of CSS. These implementations may not be perfect, but they are far superior to injecting a bunch of custom `div` elements to *look* like tables.

## Demo 1: Just let them scroll

Okay I will admit, this implementation isn't the *greatest* but I find it does work well with huge datasets. Simply set a `min-width` on your parent `table` element and the browser will just require the user to scroll the contents horizontally.

```css
table {
    min-width: 800px; /* Set your desired min-width here */
}
```

Check out the CodePen below to see it in action:

<p class="codepen" data-height="419" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="ewObbW" style="height: 419px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Responsive Tables #1: Horizontal Scrolling">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/ewObbW/">
  Responsive Tables #1: Horizontal Scrolling</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

I actually prefer this method because of its simplicity and function. Users on mobile are familiar with scrolling since it is one of the most basic actions required. Seeing a "cut-off" table gives them an instant visual cue that they have the ability to scroll the content.

## Demo 2: More <u>flex</u>ible than you think

Using something like `flexbox` tends to work better when you are working with smaller table datasets. All you need to do is add some minor `flexbox` layout at your targeted mobile screen size.

```css
/* Using 800px as mobile screen in this example */
@media(max-width: 800px) {
    /* Hide the table headings */
    table thead {
        left: -9999px;
        position: absolute;
        visibility: hidden;
    }
    table tr {
        border-bottom: 0;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        margin-bottom: 40px;
    }
    table td {
        border: 1px solid;
        margin: 0 -1px -1px 0; /* Removes double-borders */
        width: 50%;
    }
}
```

Check out the CodePen demo below:

<p class="codepen" data-height="462" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="mZbvOb" style="height: 462px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Responsive Tables #2: Flexbox">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/mZbvOb/">
  Responsive Tables #2: Flexbox</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

There are some caveats with this approach:

1. We currently hide the `thead` row when in mobile view (only visually - screen readers can still scan it)
2. Some more custom work might be needed depending on how many items per `flexbox` row makes sense (based on project and dataset)

You could keep the table headings and style them the same as the `tbody` contents, but I find hiding them a little cleaner. That choice is entirely up to your personal preference. You can also decide to add heading `span` elements inside the main `tbody` elements like so:

```css
/* Default span styling - hidden on desktop */
table td span {
    background: #eee;
    color: dimgrey;
    display: none;
    font-size: 10px;
    font-weight: bold;
    padding: 5px;
    position: absolute;
    text-transform: uppercase;
    top: 0;
    left: 0;
}

/* Simple CSS for flexbox table on mobile */
@media(max-width: 800px) {
    table thead {
        left: -9999px;
        position: absolute;
        visibility: hidden;
    }
    table tr {
        border-bottom: 0;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        margin-bottom: 40px;
    }
    table td {
        border: 1px solid;
        margin: 0 -1px -1px 0;
        padding-top: 35px; /* additional padding to avoid heading overlap */
        position: relative;
        width: 50%;
    }
    /* Show the heading span */
    table td span {
        display: block;
    }
}
```

<p class="codepen" data-height="445" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="mZdzmZ" style="height: 445px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Responsive Tables #2.5: Flexbox">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/mZdzmZ/">
  Responsive Tables #2.5: Flexbox</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

**Updated**: As pointed out by user [mmoez](https://news.ycombinator.com/user?id=mmoez), it is far less repetitive to use `:nth-child` pseudo selectors to implement the heading fields on mobile (as outlined in this [CSS-Tricks article](https://css-tricks.com/responsive-data-tables/)).

## Why should I care to use `table` elements?

Simply put: **accessibility** and **proper semantics**.

Why use a screwdriver when you need a hammer? Sure, you can make that screwdriver look and *almost* work the same as a hammer, but for what purpose? Just use the damn hammer[^1].

Have fun making your tables responsive!

[^1]: I know, this is a terrible analogy...

* footnotes will be placed here. This line is necessary
{:footnotes}