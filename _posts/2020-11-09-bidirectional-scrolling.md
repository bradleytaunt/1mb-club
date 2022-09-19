---
title: "Bidirectional Scrolling: Why Not Both?"
layout: post
summary: Discussing the design decisions of bidirectional scrolling in regards to performance
---

*I recently came across Adam Silver's post [about the merits and pitfalls of bidirectional scrolling](https://adamsilver.io/articles/bidirectional-scrolling-whats-not-to-like/)* and found myself conflicted with the design arguments put forth in the article. It's a very good article overall, and I suggest giving it a read before digging deeper into my post here.

## The Premise

The original article argues that displaying page content via horizontal scrolling (and therefore slightly hiding interactive content) creates a few major issues:

- it increases the chance users won't see it
- there's a greater reliance on digital literacy
- it's generally more labour intensive for users

Adam also makes a solid statement here:

> Having to scroll down and across in a zig zag fashion can be tiresome, especially for people with motor impairments.

But I don't believe these issues create a need to completely remove the horizontal "scrolling" design altogether. You can still implement the `See All Items` category link, while allowing the horizontal content to load in *dynamically*. Balance is always key.

## Not All At Once, Please!

So what exactly do I mean by *dynamically* loading in horizontal content?

- The user is shown the top 4 items in a given category
- From there, the user can use the `See All Items` link to jump into a full category page
- If they so desire, they can begin scroll horizontally in a given category row
  - Once they reach the end of the row, 4 more items will load in automatically to expand the list
  - To avoid a never-ending list, it might be best to limit total row items to ~20 items. At this point the UI could prompt the user to `View All Items` in that category.

By loading the row content in piece-by-piece, initial loads for users will be faster and subsequent list items will load quickly as well (since they would limit to a set default - in this case only 4).

## Final Improvements

Below you can find a quick, static version of this concept. Here you can see the horizontal list items, along with their corresponding `See All Items` links. You'll have to use your imagination for how new items would load once you each the end of a horizontal row. (I'm too lazy to spend extra time building out that functionality for a hypothetical blog post)

<p class="codepen" data-height="844" data-theme-id="dark" data-default-tab="result" data-user="bradleytaunt" data-slug-hash="pobxpXz" style="height: 844px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" data-pen-title="Bidirectional Scrolling CSS">
  <span>See the Pen <a href="https://codepen.io/bradleytaunt/pen/pobxpXz">
  Bidirectional Scrolling CSS</a> by Bradley Taunt (<a href="https://codepen.io/bradleytaunt">@bradleytaunt</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://static.codepen.io/assets/embed/ei.js"></script>

* footnotes will be placed here. This line is necessary
{:footnotes}
