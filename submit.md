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

> Note: All web pages are manually tested through Firefox's network monitor for consistency. The **total** web page will be taken into account, not just the "transferred".

![Firefox network tab showing the full web page size of 1MB Club](/public/images/submit-screenshot.png)

### Sending Patches

The main project repo can be found [here](https://git.sr.ht/~bt/1mb-club).

[Submit a patch](https://lists.sr.ht/~bt/1mb-club-devel) and your web page will be reviewed for quality assurance. If you are not familiar with submitting patches through email, please take a look at: [git-send-email.io/](https://git-send-email.io/).

The format of your newly added web page should be as follows:

- Name the file as `yourdomain.com.md` (make note of the Markdown extension!)
- The inner content should be set like the format below (page size in kilobytes, set to a **single decimal place**):

```yaml
---
pageurl: yourdomain.com
size: 8.2
---
```

## Bugs

If you come across any bugs or incorrect web page listings on this site, please [submit a ticket](https://todo.sr.ht/~bt/1mb-club-bugs) for that as well! Please **do not** use tickets to submit websites! Thank you.
