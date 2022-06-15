---
title: CSS Variables
date: 2018-03-24 00:00:00 Z
layout: post
description: How to properly use variables in vanilla CSS
summary: CSS preprocessors have allowed developers to use variables for quite some
  time, but we now have the ability to use these properties in plain vanilla CSS.
redirect_from: "/2018/03/24/css-variables/"
---

The CSS language is becoming even more awesome and powerful everyday. In this quick article I'd like to focus specifically on the "new" CSS variable function that you can start using in your projects *right now*.

### Getting started is easy

Let's just jump right in - this is how you create variables in vanilla CSS:

```css
:root {
    --base-color: #e0e0e0;
    --text-color: #111;
}
```

We are using the `:root` selector at the very top of our CSS file in order to call these variables into any elements in the rest of our document. This is normally the safest way to include variables.

As for the variables themselves, you declare that they are variables using the `--` tags, followed by the variable's name and it's property. Pretty simple stuff, right?

Now let's use those variables:

```css
.header {
    border: 1px solid var(--base-color);
}

.main-container {
    background-color: var(--base-color);
    color: var(--text-color);
}
```

That's it! It's also good to know that CSS variables have pretty decent [browser support](https://caniuse.com/#feat=css-variables) (who likes IE11 anyway).


### Why not just use a preprocessor?

I'm a pretty big fan of Sass and Stylus, but sometimes it's refreshing to just use vanilla CSS for certain projects. Most preprocessors have had the ability to use variables and mixins for a while, but I prefer to avoid build scripts when not absolutely necessary.

Get out there and have fun with some variables!

* footnotes will be placed here. This line is necessary
{:footnotes}

