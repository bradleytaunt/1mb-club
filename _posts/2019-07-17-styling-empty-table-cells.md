---
title: Styling Empty Table Cells
date: 2019-07-17 00:00:00 Z
layout: post
description: Taking a quick look at how to target and style empty table cells
summary: Tables can often times have blank pockets of data. Let's take a quick look
  at how to target and style empty table cells.
---

*Often when designing tables on the web you're bound to come across* empty pockets of data. These will be rendered as "blank" table cells, which isn't always the intended outcome. Let's take a quick look at how to target and style empty table cells.

## The easy `:empty` way

The most popular way to target *any* empty element is by using - you guessed it - the `empty` pseudo-class. This pseudo-class is incredibly simple. You target an element's `empty` state that same way you would target `hover` or `active`:

```css
table tr td:empty {
    opacity: 0;
}
```

Check out the CodePen examples below for more advanced styling options:

<p class="codepen" data-height="353" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="EBBLEx" style="height: 353px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Styling Empty Tables Cells with :empty">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/EBBLEx/">
  Styling Empty Tables Cells with :empty</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

You can also include additional pseudo elements to give the user more context about what the empty cells represent:

<p class="codepen" data-height="365" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="bPXqLa" style="height: 365px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Styling Empty Tables Cells with :empty &amp;amp; pseudo elements">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/bPXqLa/">
  Styling Empty Tables Cells with :empty &amp; pseudo elements</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

## More specific `empty-cells` property

Although using the `:empty` pseudo-class can be helpful, it isn't used just for tables. It can be used for any HTML elements that have a lack of content. So, is there a CSS specific property that can target *just* table cells? 

Let's take a look at the `empty-cells` property:

```css
table {
    empty-cells: hide;
}
```

<p class="codepen" data-height="368" data-theme-id="0" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="XLLqOW" style="height: 368px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Styling Empty Tables Cells with empty-cells property">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/XLLqOW/">
  Styling Empty Tables Cells with empty-cells property</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

Pros of using `empty-cells`:

- Only one CSS property
- Targets the table elements specifically
- No need for custom styles since it simply *hides* empty cell borders

Some downsides to using this property:

- No styling customization
- Trickier to use pseudo-element helpers without invoking the `:empty` state

## Pick your preference

It doesn't matter semantically which option you decide to take when styling / hiding empty table cells. Using the `:empty` state gives you a lot more flexibility in terms of what you can target (full rows, columns etc), but using the `empty-cells` property let's you simply hide the cells and focus on more important items.

* footnotes will be placed here. This line is necessary
{:footnotes}
