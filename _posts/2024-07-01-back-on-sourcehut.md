---
title: "Back on Sourcehut"
layout: post
summary: "The 1MB Club project source code is now back on sourcehut"
---

After roughly a year of hosting both the source code and public-facing website files on NearlyFreeSpeech.net (NFS), I've made the switch back to [sourcehut](https://sourcehut.org). This decision has nothing to do with NFS, since I still use them for my own personal website and a handful of other side projects. The main reason was to simplify the patch, build, and upload process whenever a new memeber gets added to the club. 

## Trying and Failing with GUIs

For a brief moment I ported the core source of 1MB Club over to a Forgejo instance but quickly reverted this. Even though the PR-based flow of submitting changes or additions has become common practice across software in general, I still prefer the simplicity of emailing patches through `git` and tracking updates through mailing lists. Both of these services work flawlessly on sourcehut - hence the switch. Having the ability to auto-publish on `git push` is really just an added bonus!

That's all I really have to say about this switch over. The club should be running identically as it was on NFS and most users probably wouldn't have noticed before reading this post! I've also updated the [submission page](/submit) with details on how to submit patches or report bugs using sourcehut.

Thanks for reading and Happy Canada Day! (if you celebrate it!)