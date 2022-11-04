---
title: About makessg
author: JFG
description: A very small static site generator.
---

This is `makessg`, [a very small static site generator](https://github.com/joefg/makessg) built with `make` and `pandoc`.

Reject database-driven content-management systems, embrace small `Makefile`.

---

## How To Use

Consider this repo.

```
.
├── docs
├── config.mk
├── Makefile
└── src
    ├── index.md
    ├── static
    └── templates
        └── template.html
```

0. Install `make` and `pandoc`.
1. Copy the `Makefile` into the root of your repository.
2. Create a `config.mk`, which should contain the title of your site, along with the location of the `src`, `dst`, and `template` directories. For reference, this is the one used for this site.

```
SITENAME = "makessg"
SITELOC  = "http://joefg.github.io/makessg"

SRC = src
DST = docs
TEMPLATE = $(SRC)/templates/template.html
```

3. Add a page. Start with `index.md`.
4. Run `make`.

---

## Media

Add your media to `src/static`, then link to it using Markdown.

![Entropy will get us all in the end.](static/burnham.webp)

*Photo: Marshes near Burnham Norton, Norfolk.*

---

## Templates

The default template is in `src/templates/template.html`. It uses the [tufte](https://www.cssbed.com/tufte/) CSS pack, and if it's not to your taste, you can create your own templates by copying the default `template.html` and either adding your own CSS, or using CSS from [CSS Bed](https://www.cssbed.com/).

To extend the template, you can add `pandoc` templates to the HTML document. A list of available [template syntax is available here](https://pandoc.org/MANUAL.html#templates).
