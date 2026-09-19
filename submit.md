---
title: How to Submit
layout: page
permalink: "submit/"
---

## Review & Accepting Submissions

**All web pages submitted will be manually reviewed for honesty and quality assurance.**

1MB Club has the final say whether a web page is added to the official listing or not. Spam, low-quality pages, or shady SEO gimmicks will be ignored. If your web page is not accepted, please do not take it personally. Let's refrain from being rude to each other!

**The two rules for a web page to qualify as a member:**

<ol>
    <li>Total web page size (not <i>just</i> transferred data) must not exceed 1 megabyte</li>
    <li>The web page must contain a reasonable amount of content / usefulness in order to be added - no sites with a simple line of text, etc.</li>
</ol>

## LLMs &amp; AI Generated Content

Any websites suspected of being fully LLM-based or AI-generated will **not be permitted to join**. This isn't based off some "anti-AI stance" and shouldn't be misinterpreted as a form of virtue signaling. The rule mainly exists to *reduce the amount of low-effort submissions*. Thank you for understanding.

## How to Submit

![Firefox's network tab showing total website size](/public/images/submit-screenshot.png)

1. Check your website's *total* size (not transferred!) using Firefox's Network tab. 
  - Make sure you have `cache` disabled and ensure all resources have loaded. You might need to scroll the entire page if any assets are loaded in dynamically.
2. If your site satisfies this requirement, add it to the existing `_data/sites.yml` file (following the same format as other members) and [submit a patch via email](1mb-club@freelists.org). You can also subscribe to the official mailing list here: [freelists.org/list/1mb-club](https://www.freelists.org/list/1mb-club).
3. I will then review your patch and merge it into master. Once merged, your site will be added to the list.

> **Note:** Don't worry about where you place your content inside the existing `_data/sites.yml` file. The order will be automatically reformatted once it is approved and merged into `master`.

### Help With Submitting Email Patches

If you have never submitted a patch with git email, take a look at this very helpful guide: [git-send-email.io](https://git-send-email.io/)

The format of your newly added web page should be as follows (take note of the single decimal place!):

```yaml
- domain: your-cool-domain.com
  size: 244.9
```

If your website also supports direct `HTTP` access, feel free to also include the following parameter:

```yaml
http: true
```

## Reporting Bugs or Broken Links

If you come across any bugs or incorrect/dead web page listings on this site, feel free to [reach out on the official mailing list](https://www.freelists.org/list/1mb-club). Please **do not** use this as a means to send in websites, unless it is an email patch. They will be ignored and closed!

Thank you.
