---
title: "Customizing HTML Tables"
layout: post
summary: "A quick tutorial on how to manipulate tables for better data visualizations"
---

**Editor's note:** My plan is to have this article exist as a "living document". Corrections and additions will be made whenever it is deemed necessary. Last update: **October 26, 2022**

---

**I love working with HTML tables.**

That isn't something you hear very often in the world of web development, especially from a *designer*. But it's true - I think HTML tables can be awesome. I believe their poor reputation is ill-deserved.

Something I do notice however, whenever I stumble across tables in the wild, is the lack of experimentation or the use of more complex layouts. I've mentioned in a previous article on how to properly [design responsive tables with minimal CSS](/blog/responsive-tables/), so why not expand even further with more table design "tricks"?

**Table of Contents**:

1. [Sticky Table Headers](#sticky-table-headers)
2. [Child Table Headers](#child-table-headers)
3. [Table Footers](#table-footers)

## Sticky Table Headers

In the golden age of the web, developers needed to cobble together some JavaScript in order for table headings to "follow" the user as they scrolled. This was particularly useful for large datasets that took up enormous amounts of vertical space.

Luckily for us this can now be achieved with some very basic CSS.

```css
table {
    position: relative;
}

thead {
    position: sticky;
    top: 0;
}
```

<p class="codepen" data-height="459" data-default-tab="result" data-slug-hash="oNygZXJ" data-user="bradleytaunt" style="height: 459px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/oNygZXJ">
  HTML Tables: Sticky Table Headers</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

That's it! Best of all, this implementation works across [all major browsers](https://caniuse.com/css-sticky).

## Child Table Headers

I find that "child" header columns are often underutilized when trying to display more detailed datasets in HTML tables. They are relatively easy to implement once you wrap your head around "rows" and "columns".

Let's take a look at the basic HTML:

```html
<table>
    <thead>
        <tr>
            <th rowspan="2">Table Header 1</th>
            <th rowspan="2">Table Header 2</th>
            <th colspan="2">Table Header 3</th>
            <th rowspan="2">Table Header 4</th>
        </tr>
        <tr>
            <th>Table Header 3.1</th>
            <th>Table Header 3.2</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Table Body 1</td>
            <td>Table Body 2</td>
            <td>Table Body 3.1</td>
            <td>Table Body 3.2</td>
            <td>Table Body 4</td>
        </tr>
    </tbody>
</table>
```

The two HTML parameters that makes the magic happen are `rowspan` and `colspan`. We are essentially telling the browser to make the `th` elements with `rowspan` parameters *taller* and those with `colspan` *wider*. If that oversimplified explanation seems silly, then the [official documentation will suit you better](https://www.w3schools.com/tags/att_td_rowspan.asp).

It is important to remember that the `tbody tr` elements will outnumber the amount of listed `thead tr` elements. This is because the header with the child elements is technically "splitting" itself into additional columns. You can see a live example below:

<p class="codepen" data-height="484" data-default-tab="result" data-slug-hash="rNKajyM" data-user="bradleytaunt" style="height: 484px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/rNKajyM">
  HTML Tables: Child Table Header Columns</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

## Table Footers

Although not the most useful feature, I find that table footer elements are also overlooked for things like subtotals or final values. You can include these just as you would `thead` or `tbody` elements:

```html
<tfoot>
    <tr>
        <td>Table Footer 1</td>
        <td>Table Footer 2</td>
        <td>Table Footer 3</td>
        <td>Table Footer 4</td>
    </tr>
</tfoot>
```

You can see it in action below. Don't forget - you could always make your `tfoot` *sticky* in order to always show your users a subtotal, etc. even when scrolling through the data.

<p class="codepen" data-height="400" data-default-tab="result" data-slug-hash="MWXYpZX" data-user="bradleytaunt" style="height: 400px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/MWXYpZX">
  HTML Tables: Table Footers</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

## Contribute

If you would like to add any of your own table "hacks" or if you see any glaring mistakes, please reach out to me directly via [my public inbox](https://lists.sr.ht/~tdarb/public-inbox). Thanks!

<br>