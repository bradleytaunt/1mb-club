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

## How to Submit

1. Do a [Debugbear Website Scan](https://www.debugbear.com/test/website-speed) of your website
2. Once complete, check the "Bytes Total" stat in the "Network" card to make sure the **uncompressed** size of your site is less than 1MB
3. If your site satisfies this requirement, add it to the existing `_data/sites.yml` file (following the same format as other members) and [open a PR](https://codeberg.org/btxx/1mb-club) or [submit a patch via email](https://lists.sr.ht/~bt/1mb-club-devel) (if that's your jam)
4. I will then review your patch and merge it into master. Once merged, your site will be added to the list.

> **Note:** Don't worry about where you place your content inside the existing `_data/sites.yml` file. The order will be automatically reformatted once it is approved and merged into `master`.

### Help With Submitting Email Patches

If you have never submitted a patch with git email, take a look at this very helpful guide: [git-send-email.io](https://git-send-email.io/)

Otherwise, feel free to simply [open a PR on Codeberg](https://codeberg.org/btxx/1mb-club).

The format of your newly added web page should be as follows:

```yaml
- domain: your-cool-domain.com
  size: 244.9
```

If your website also supports direct `HTTP` access, feel free to also include the following parameter:

```yaml
http: true
```

## Reporting Bugs or Broken Links

If you come across any bugs or incorrect/dead web page listings on this site, feel free to [open a ticket](https://codeberg.org/btxx/1mb-club/issues). Please **do not** use this as a means to submit websites! They will be ignored and closed!

Thank you.
