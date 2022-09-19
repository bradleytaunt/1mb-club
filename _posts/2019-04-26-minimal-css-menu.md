---
title: 'Minimal CSS: Dropdown Menu'
date: 2019-04-26 00:00:00 Z
layout: post
description: Creating CSS menu dropdowns with as little code as possible
summary: Simple demo on how to develop CSS menu dropdowns with as little code as possible,
  while still maintaining proper accessibility support.
redirect_from: "/2019/04/26/minimal-css-menu/"
---

*I love the idea of stripping away as much CSS as possible*, while still maintaining the original UI concept. Let's build out a demo example with a simple menu dropdown element.

Interesting facts about our final CSS menu:

- Total weight 121 bytes minified! (not including any resets etc.)
- No complex HTML structures
- Accessibility support

Now to see the final code in all it's glory:

### HTML
```html
<nav>
    <ul>
        <li><a href="">Home</a></li>
        <li><a href="">About</a></li>
        <li><a href="">Services</a>
            <ul>
                <li><a href="">Design</a></li>
                <li><a href="">Development</a></li>
                <li><a href="">Custom Pizzas</a></li>
            </ul>
        </li>
        <li><a href="">Contact</a></li>
    </ul>
</nav>
```

### CSS
```css
/* resets - optional */
ul { list-style: none; padding: 0; }
ul li { display: inline-block; position: relative; }

/* minimal dropdown CSS */
ul li > ul {
    left: -9999px;
    position: absolute;
    visibility: hidden;
}
ul li:hover > ul, ul li:focus-within > ul {
    left: 0;
    visibility: visible;
}
```

## Live demo on CodePen

Feel free to check out the live demo on CodePen [here](https://codepen.io/bradleytaunt/pen/MRLevy).

* footnotes will be placed here. This line is necessary
{:footnotes}