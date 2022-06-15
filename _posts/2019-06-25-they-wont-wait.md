---
title: 'They Won''t Wait: A Warning for Slow Websites'
date: 2019-06-25 00:00:00 Z
layout: post
description: Your website is probably slow - learn how you can make it faster
summary: Speed and performance are critical to having a solid experience for your
  users. Learn how to implement simple performance wins without the stress.
redirect_from: "/2019/06/25/they-wont-wait/"
---

*Your website is probably slow*. I'm not trying to make you feel bad or dismiss all the hard work you've put into your project. Heck, performance might have been a core value of the design. But websites can always be faster.

People have become increasingly more impatient over the last decade when it comes to technology, specifically non-native web-based interactions. Users expect your website to load almost instantly or they will leave and try another site, probably one of your competitors. Why should they stick around if your competitors' websites load half a second faster?

Users are tired of being bombarded with tracking scripts, having to download massive component libraries, forced to deal with "accept cookies" prompts, playing a small mini-game of "close those ads!", and then being subjected to never-ending loading screens. This is not the internet we were promised.

> It's in my nature, I always liked **speed**.
>
> <cite>- Guy Lafleur<cite>

## We can do better

If there is only one thing that you learn from this post, hopefully it's knowing to better value the **time and money of your users**. It's a user's *choice* to visit your website, so taking advantage of their time is extremely careless. Don't be arrogant and ignore the cost of data on most mobile plans either. Eating up a chunk of someone's data just for hitting your website is rage-inducing. That's how you can lose customers permanently.

Let's do an analogy, because **I love stupid analogies**:

Imagine going to your local hardware store because you need to buy a new hammer. Once you get to the entrance a woman holds the the door closed and asks you if it's alright for someone to follow you around the store today. You say no. She then follows up by asking if you accept their hardware store agreement before proceeding inside - you tell her "sure". She finally opens the door and lets you in. As you walk into the store she quickly stuffs a few advertisements for other local businesses into you hand. "Thanks", you mutter.

Once inside you realize the hardware store is *very big* and manually looking for a hammer might take a while. You walk up to the front desk to ask where you can find a hammer but notice the cashier is playing with their phone behind the counter. You try to get their attention but they simply raise their hand and shout "Be with you in a minute". After a short while they get off their phone and *finally* listen to your question. They then tell you where to find the hammers.

Does this sound like a *fast* and easy experience?

As silly as this hypothetical trip to the hardware store might be, it's exactly what many current websites are putting their users through. Users - read *customers* - are coming to your website with a specific goal in mind; checking out a product, consuming information or just satisfying their curiosity. Stop putting so many blockers and excessive bloat in front of them.

## Data doesn't lie

If my terrible analogy wasn't enough to convince you to implement better performance on your website, then maybe some "BIG DATA" will.

- [Amazon (PowerPoint, slide #15)](https://web.archive.org/web/20081117195303if_/http://home.blarg.net/~glinden/StanfordDataMining.2006-11-29.ppt): 100 ms of latency resulted in 1% less sales.
- [Google (video)](https://youtu.be/6x0cAzQ7PVs?t=936): 500 ms caused a 20% drop in traffic.
- [Walmart (slide #46)](https://www.slideshare.net/devonauerswald/walmart-pagespeedslide): a 100 ms improvement brought up to 1% incremental revenue
- [Mozilla](https://blog.mozilla.org/metrics/2010/04/05/firefox-page-load-speed-%E2%80%93-part-ii/): Shaving 2.2 seconds off page load time increased downloads by 15.4%
- [Yahoo](https://www.slideshare.net/stubbornella/designing-fast-websites-presentation/23-1_Create_a_component_library): 400 ms resulted in a 5 to 9% drop in traffic

<small><sup>*</sup>All data taken from [instant.page](https://instant.page) (which I am a huge fan of &hearts;)</small>

The fact something as small as 100 ms can have such a profound impact on your bottom-line should be eye-opening. You're leaving money of the table by not tackling even the low-hanging, easy performance wins. You need to start valuing your users' time and stop serving them excessive garbage they never asked for.

## Small and easy wins

Not all of these suggestions can work for every project (due to restrictions, brand guidelines, required marketing targets, etc.) but for most developers/designers they should be easy to implement: (in no particular order of importance)

1. Reduce the number of web requests
    - [HTTP Requests](https://developers.google.com/web/fundamentals/performance/get-started/httprequests-5)
2. Use web-safe fonts when available or if using custom fonts utilize the `font-display` property
    - [CSS Font Stack](https://www.cssfontstack.com/)
    - [Font Display for the Masses](https://css-tricks.com/font-display-masses/)
3. Make proper use of *critical CSS*
    - [How to Use Critical CSS](https://alexwright.net/web-design-secrets/how-to-use-critical-css/)
    - Automatically generate CSS based on "above the fold": [criticalCSS](https://github.com/filamentgroup/criticalCSS)
4. Process all media (images / videos) through 3rd party tools
    - [Cloudinary](https://cloudinary.com/)
    - [Kraken.io](https://kraken.io/)
    - [Piio](https://piio.co/)
    - Sidenote: this blog uses the [jekyll-cloudinary](https://nhoizey.github.io/jekyll-cloudinary/) plugin to automatically process images
5. Use "just-in-time" preloading (highly recommended for improved UX)
    - [Instant Page](https://instant.page/)
6. Avoid using heavy tech-stacks whenever possible
    - Unless it is a critical use-case, users should not have to process or download extra resources
    - This also includes remove ads, pop-ups, 3rd party sign-up prompts, cookie notifications, over-the-top element animations, and all other **garbage**. This impacts *UX* performance, which is just as crucial as website loading speed

## No need to be extreme

These quick "guidelines" are just a solid jumping-off point when tackling new projects or re-working current websites. There isn't some agreed upon *golden standard* when it comes to web performance, but I find these rules work as a great place to start. Hopefully it can help others as well.

* footnotes will be placed here. This line is necessary
{:footnotes}

