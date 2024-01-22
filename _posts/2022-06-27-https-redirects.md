---
title: "Consider Disabling HTTPS Auto Redirects"
layout: post
summary: "Depending on your use case, not every website needs to enable HTTPS auto redirects"
---

If you run your own website or blog, odds are that you have HTTPS auto redirects enabled by default. While not a bad thing from a security standpoint, in many cases it might be overkill and limiting to those with restricted access to updated software (in this case - browsers). In these instances I would strongly suggest disabling those redirects.

## HTTPS is (Mostly) Overrated

Don't bust out the torches and pitchforks just yet. Websites and applications storing data, collecting user information or handling payments should **most definitely** use only HTTPS to serve all traffic. No one is arguing for a less secure web when it comes to sensitive data. 

Everyone still levelheaded? Good.

My main issue with HTTPS redirects comes from it's overuse for simple content consumption (blogs, research papers, video essays etc). Websites that do not collect any user data or process any sensitive information. Applications that do not process payments or collect credit card details. Purely static, non-dynamic websites that only serve up text and media.

"But what about sites like [https://doesmysiteneedhttps.com](https://doesmysiteneedhttps.com/)?" While this website makes a few valid points, it still relies heavily on "fear tactics" that honestly don't apply for the vast majority of users. It's overkill.

I won't re-hash the counter-points brought up by others, but feel free to read through the discussion [on Hacker News](https://news.ycombinator.com/item?id=30150749).

## Worse Performance

Let's use my own personal blog as an example to compare both HTTPS and HTTP versions based on performance:

| Site Version | Transferred Data | Seconds to Load |
|--------------|------------------|-----------------|
| HTTPS        | 3.8 kB           | 1.16            |
| HTTP         | 2.9 kB           | 0.62            |


By using HTTPS my website **increases it's overhead by almost 100%**. It should be mentioned that my personal website is also plain text based and tiny. Imagine the impact of a blog article or research paper with significantly more content. I understand that security is important - but so is performance. (And again, no user data is collected or payments processed on my personal blog).

"What about SEO?" I hear some of you ask. I'm probably not the best person to answer this since I **don't give a shit about optimizing for search engines**. You shouldn't either. This is part of the reason why search results have become worthless over the past few years. Just make good, accessible content.

Speaking of accessibility...

## Human Accessible

Another core issue I have with forced HTTPS is lack of accessibility. A great deal of the world doesn't have access to the latest or most up-to-date technologies. Some are stuck with decade old hardware running long forgotten software. You instantly exclude those users from accessing your content with no real gain. Users with supported software can still visit your website or application through HTTPS. The responsibility is placed on the users running the outdated software - not you.

Let's take an example of the Powerbook G4, which was released in 2002. The OSX version of that device is limited to 10.5.8 and is not compatible with the modern TLS version used on most websites. Now I understand that this device is 20 years old but what happened to sustainable technology? A great deal of people pushing so hard for "HTTPS Everywhere!" are often times the same people advocating for a reduction in e-waste and rant about environmental issues.

So why force users to toss away perfectly viable devices in favor of more expensive (did I mention some users don't have the luxury of upgrading?), modern machines? Why are we suddenly excluding demographics? Let users take on the risk if they so desire. 

Again, *you* shouldn't be making these decisions for them.

## Disable the Redirects (But Keep HTTPS)

It's important to remember I'm not advocating for disabling HTTPS *completely*. I'm simply suggesting you disable your website from *automatically* forwarding all HTTP requests to HTTPS. There is a pretty big difference there.

**Helpful Tips**:

- If users are nervous of links set in standard `http://` format, they can add `s` themselves or better yet, use a browser extension like [HTTPS Everywhere](https://addons.mozilla.org/en-CA/firefox/addon/https-everywhere/) (highly recommend)
- Be sure to use relative URL structures in most of your web documents. Hard-setting HTTPS links will also make things more difficult and break things for unsupported users.
- Avoid outsourcing 3rd party assets (fonts, imagery, scripts). Hosting all these yourself gives you the ability to serve everything via HTTP and HTTPS easily.
- (Should be obvious) Keep all stored data, login portals, payment processing behind HTTPS-only. The security risks in those instances outweigh the ability to support those on older hardware/software.

## Practice What You Preach

You can freely view this website on both HTTPS and HTTP. All websites added will also be tested against this. Those that support both will be given a small badge beside their listed website. This addition will be rolled slowly over time - so please have patience if your website already supports it!

---

That's about all I have to say about HTTPS redirects for now. I'm sure this post will piss off quite a few people but that's fine. People have separate preferences when it comes to the web. My personal opinion is that we all jumped aboard the "secure everything" train a little too hastily. By doing so, your website indirectly excludes a great deal of internet users.

Just something to think about.