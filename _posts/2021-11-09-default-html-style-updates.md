---
title: "Modern Improvements for Default Browser Styles"
layout: post
summary: "Taking a look at some minor improvements that could be made to default browser styling"
imgnum: 0
size: 14.3
---

This website *almost* exclusively uses the browser's (whichever one that might be) default styling to render it's HTML. I firmly believe, and have [stated in a previous post](/css-js-mistake/), that the default HTML styling across all browsers is a thing of beauty. "Consistent and boring" is how I tend to refer to default browser styles - and I mean that in a *good way*.

But that doesn't mean some minor, modern improvements couldn't be made...

## Boosting Margins and Increasing Font Size

A little extra breathing room for a website's content never hurts. Browser defaults set the inner content too close to the main window borders, creating mild eye strain to focus on the far edges of the screen when reading. Pair this with a typeface set too small and you've got a recipe for disaster (in terms of user experience and accessibility). Luckily for us, adding two basic CSS properties fixes all of our readability woes. All that is required is a simple boost to the existing `margin` property set on the `body` element (I personally lean towards a very specific `1.5em`) and overriding the default `font-size` to `18px`[^1]:

```
body {
    font-size:18px;
    margin:1.5em;
}
```

There is one *small* caveat with setting the `font-size` across the whole `body` element: code elements set in `monospace`. They will stand out larger than the other fonts found in the document (due to variations in different typeface heights, spacing etc.) so we will need to target these elements specifically:

```
code {
    font-size:14px;
    /* Word wrap is optional if you plan to have long inline code snippets */
    word-wrap:break-word;
}
```

## Code & Pre Tags

Since we've mentioned `code` elements, let's fix those as well. The existing styling for inline code snippets and larger pre-formatted text sections leave a lot to be desired. They don't provide any means to wrap their inner content or make use of `overflow` properties to avoid vertically scrolling on smaller device screens. Sharing code examples becomes quite a pain when your webpage's flow and layout is broken just by including them. Browsers could fix this easily enough by defaulting to:

```
pre {
    overflow:auto;
}
```

## Basic Dark Mode Support

Barebones styling in current web browsers have no sane defaults[^2] for system-level dark mode. What a huge letdown. This is where the most "drastic" changes will be implemented with our browser default updates. We will need the browser to change the main `background-color`, along with resetting both the text and anchor link `color` for improved accessibility. Browser defaults for anchor link color in "light mode" are blue/purple - so I've opted towards using gold, orange and orangered in dark mode respectively:

```
/* Dark mode */
@media (prefers-color-scheme: dark) {
    @media not print {
        html {background:#0e0e0e;color:#e1e1e1; }
        a {color: gold;}
        a:visited {color: orange;}
        a:hover,a:focus{color: orangered;}
    }
}
```

That is probably the most streamlined dark mode on the web...

## The "Reading Length" Debate

Proper reading length tends to be quite the point of contention on the web. Hell, even I've [written about it quite a bit](/character-unit/) in the past (and many of my side projects follow that standard). The main problem I have with this is lack of *user control*. I don't think the browser (or designers for that matter) should determine the best reading length for my own personal reading preferences. UX testing and group feedback has (somewhat) agreed upon 66-75 characters per line to be the most optimal reading experience. That is good to know. I *still* believe it should come down to user preference.

Do you want to know an incredible feature built into browsers? *Window resizing*. Abandon the idea that you "know better" than your users and give them the power to adjust as they see fit. The web was meant to be personal and flexible.

## Conclusion

There isn't much else to say, really. I think these tiny tweaks would greatly improve the default browser experience and maybe even convince others to just *use* these defaults instead of falling down the CSS rabbit hole (as fun as that might be sometimes). For easier convenience, I'll leave the full set of CSS changes below:

```
body {
    font-size:18px;
    margin:1.5em;
}
code {
    font-size:14px;
}
pre {
    overflow:auto;
}
@media (prefers-color-scheme: dark) {
    @media not print {
        html {background:#0e0e0e;color:#e1e1e1; }
        a {color: gold;}
        a:visited {color: orange;}
        a:hover,a:focus{color: orangered;}
    }
}
```

<hr data-content="footnotes">

[^1]: `18px` seems to be the perfect sweet spot between "almost too large, yet not small enough to strain my eyes"
[^2]: At the time of this article's publish date

* footnotes will be placed here. This line is necessary
{:footnotes}
