---
title: "Convert Files to HTML with macOS Automator Quick Actions"
layout: post
summary: "Setting up macOS Automator scripts to convert files to HTML"
---

Since a few people have reached out and thanked me for my previous post [Batch Converting Images to webp with macOS Automator](/blog/batch-webp-conversion/), I thought I would continue to share more of my own custom Automator Quick Actions. Today's post will cover the ability to convert *any* text-based document into pure HTML.

I know - there are over 6 billion conversion apps that do this very same thing. But our way of doing it is *cooler*. Our conversion tool:

- Will run directly inside macOS Finder (right-click actions FTW)
- Can batch convert multiple files at once
- Can convert mixed files types at the same time

And it can do all of this for free on your existing macOS system. No apps required. So, enough chit-chat, let's get started!

## The Dependencies

Unfortunately, setting things up isn't as simple as clicking a single `Install` button and calling it a day. But don't start to panic! I assure you everything we'll be doing is actually quite easy to breeze through - *trust me*.

Our main requirements will consistent of the following:

- Homebrew
- Pandoc
- Ability to open Terminal

## Installing Homebrew

Homebrew is a simple package manager for macOS. The beauty of having Homebrew is the flexibility in the future for installing other custom packages. Overall it's just a nice piece of software to have on your machine.

If you have already installed Homebrew in the past, ignore this step and continue down the page. If not, simply open your Terminal and run:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Let that finish and you're done! Also feel free to read more about Homebrew on the [official website](https://brew.sh). Knowledge is power!

## Installing Pandoc

The package that is going to be doing all the heavy-lifting for us is [pandoc](https://pandoc.org). Because we have Homebrew on our machine now, installing this package is as simple as opening our Terminal again and running:

```bash
brew install pandoc
```

Wait for everything to finish and you're done!

## Our Custom Automator Quick Action

Next you'll want to open the macOS Automator app and create a new "Quick Action" when given the prompt to do so.

<figure>
    <img src="/public/images/new-automator.webp" alt="Toggle prompt for new automation in macOS Automator">
    <figcaption>After opening Automator, select "Quick Action" from the menu.</figcaption>
</figure>

Now do the following (reference the image further below to make sure your parameters match):

1. Set "Workflow receives current" to <strong>documents</strong> in <strong>any application</strong>
2. In the search bar type in "Run Shell Script"
3. Drag-and-drop the "Run Shell Script" from the left pane into the right pane
4. Set the "Shell" parameter to <strong>/bin/bash</strong>
5. Set "Pass input" as <strong>as arguments</strong>

Once all that is done, simply paste the following in the open text field within the "Run Shell Script" item:

```bash
for f in "$@"
do
/opt/homebrew/bin/pandoc -o "${f%.*}.html" "$f"
done
```

If you've done everything correctly it should look something like this:

<figure>
    <img src="/public/images/new-automator-2.webp" alt="Automator quick action details for converting to HTML">
    <figcaption>This is what your finished Automator quick action should look like.</figcaption>
</figure>

Save this new Quick Action (Name is something like "Convert to HTML" to keep things simple). That's it! Amazing, right?

## Time to Convert

Now it is finally time to see our Quick Action is *action*! Navigate to any document file in a Finder window and follow along.

1. First, right-click on the file you wish to convert. ([Figure 1](#fig-1))
2. In the pop-up container, scroll down and hover over `Quick Actions`.
3. A secondary pop-out will appear. Look for the action `Convert File to HTML` and click it. ([Figure 2](#fig-2))

<figure id="fig-1">
    <img src="/public/images/macos-convert-1.webp" alt="A markdown file in macOS Finder">
    <figcaption><strong>Figure 1:</strong> Finding and right-clicking on your desired file.</figcaption>
</figure>

<figure id="fig-2">
    <img src="/public/images/macos-convert-2.webp" alt="Convert to HTML action selection">
    <figcaption><strong>Figure 2:</strong> From the "Quick Actions" menu, select "Convert to HTML".</figcaption>
</figure>

If everything was set up properly (and depending on the size of the file) you should see your converted HTML file show up right next to your existing document. Time to celebrate!

Don't forget - you can also *batch* convert multiple files and multiple file *types* at once. The possibilities are endless!

<figure>
    <img src="/public/images/macos-convert-3.webp" alt="Finder window showing a Markdown file and an HTML file">
    <figcaption>Our converted document is now available in HTML. Absolutely glorious.</figcaption>
</figure>

## No Limits

Although this article has mainly focused on converting documents to HTML, `pandoc` is so powerful you could do any number of conversions. Re-using these steps above, you have the ability to make as many different conversion quick actions as your heart desires!

Have fun converting!
