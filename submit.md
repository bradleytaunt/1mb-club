---
title: How to Submit
layout: page
permalink: "submit/"
---

## Review & Accepting Submissions

**All websites submitted will be manually reviewed for honesty and quality assurance.**

1MB Club has the final say whether a website is added to the official listing or not. Spam, low-quality pages, or shady SEO gimmicks will be ignored. If your website is not accepted, please do not take it personally. Let's refrain from being rude to each other!

**The two rules for a web page to qualify as a member:**

<ol>
    <li>Total website size (not <i>just</i> transferred data) must not exceed 1 megabyte</li>
    <li>The website must contain a reasonable amount of content / usefulness in order to be added - no sites with a simple line of text, etc.</li>
</ol>

## How to Submit

> Note: All websites are manually tested through Firefox's network monitor for consistency.

I'm trying my best to make the site submission process as painless as possible. The goal is to avoid spam while trying not to exclude as many "non-techies" as possible.

There are currently two options to submit:

1. Patching via the [sourcehut git repo](https://git.sr.ht/~bt/1mb.club)
2. Submitting a ticket (see below)


### Option 1: Patching

Option #1 is the preferred preference. Your website will be reviewed much faster and editing any minor mistakes is a more seamless process.

The format of your newly added website should be as follows:

- Name the file as `yourdomain.com.md` (make note of the Markdown extension!)
- The inner content should be set like the format below (page size set to a single decimal place):

```
---
pageurl: yourdomain.com
size: 8.2
---
```

That said, I am fully aware that not everyone is familiar with `git` or submitting patches through email. That's understandable. I would still highly recommend learning more about using `git` through email:

[https://git-send-email.io/](https://git-send-email.io/)

If you would prefer to use a ticket-based system instead, then keep reading.

### Option 2: Static Patches (sourcehut)

Option #2 is less ideal but still okay. Your submission will take longer to review and any changes required might become more of a pain to fix.

[Submit a static patch &rarr;](https://lists.sr.ht/~bt/1mb.club). Simply mention the URL you wish to add in the email body and it will be manually reviewed.

Thank you.

## Bugs

If you come across any bugs or incorrect website listings on this website, please [open a ticket](https://todo.sr.ht/~bt/1mb.club).

