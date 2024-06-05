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

I'm trying my best to make the site submission process as painless as possible. The goal is to avoid spam while trying not to exclude as many "non-techies" as possible.

There are currently two options to submit:

1. [Open a PR](https://git.disroot.org/bt/1mb-club/pulls)
2. [Submit a ticket](https://git.disroot.org/bt/1mb-club/issues)

### Option 1: Pull Requests

Option #1 is the preferred preference. Your web page will be reviewed much faster and editing any minor mistakes is a more seamless process.

The format of your newly added web page should be as follows:

- Name the file as `yourdomain.com.md` (make note of the Markdown extension!)
- The inner content should be set like the format below (page size set to a single decimal place):

```
---
pageurl: yourdomain.com
size: 8.2
---
```

That said, I am fully aware that not everyone is familiar with `git` or submitting patches through pull requests. That's understandable. I would still highly recommend learning more about using a git workflow!

If you would prefer to use a ticket-based system instead, then keep reading.

### Option 2: Submit a Ticket

Option #2 is less ideal but still okay. Your submission will take longer to review and any changes required might become more of a pain to fix.

[Submit a ticket &rarr;](https://git.disroot.org/bt/1mb-club/issues). Simply mention the URL you wish to add in the email body and it will be manually reviewed.

Thank you.

## Bugs

If you come across any bugs or incorrect web page listings on this site, please submit a ticket for that as well!

