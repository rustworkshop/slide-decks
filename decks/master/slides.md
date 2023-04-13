## Slides from markdown

This and the following slides are from

`rust-workshop.md`

as pointed to by

`rust-workshop.html`

```html [2]
<section
    data-markdown="rust-workshop.md"
    data-separator="^---$"
    data-separator-vertical="^--$"
    data-separator-notes="^\*\*Speaker Notes:\*\*$"
    data-charset="utf-8"></section>
```

👉 <https://revealjs.com/markdown/>

---

Press `S` on the keyboard to open the speaker notes.

**Speaker Notes:**

Write speaker notes here.

- Speaker notes can be formatted too
- <https://rustworkshop.co/>
- The "`Speaker Notes:`" heading is a magic string defined in the html in attribute `data-separator-notes`

---
<!-- .slide: data-auto-animate -->
## Showing code

Inline code: `BTreeMap<String, Remote>`

----
👇 More 👇

**Speaker Notes:**

Don't forget to use the down arrow or space bar on this slide to get to the sub-slide below.
--
<!-- .slide: data-auto-animate -->
## Showing code

Starting point, highlighted lines with `[3-4]` unique id for matching across slides in `data-id`.

```rust [3-4]
// Abstract away storage to allow
// testing via dependency injection
pub trait Storage {
}
```
<!-- .element: data-id="code" -->

--

<!-- .slide: data-auto-animate -->

## Showing code

Add code to same block with same id, then progressively highlight different lines with `[3,7|4|5-6]`

```rust [3,7|4|5-6]
// Abstract away storage to allow
// testing via dependency injection
pub trait Storage {
	fn exists(&self) -> bool;
	fn save(&self, state_toml: String);
	fn read(&self) -> String;
}
```
<!-- .element: data-id="code" -->

---

# Titles (H1)

Something **bold**

## H2 Title

Something *italic* __also bold__

### H3 Title

Something ~~strikeout~~

----

👇 More markup examples below 👇

**Speaker Notes:**

Slides separated by `---`, subslides by `--`, and you can still get a horizontal rule with `----`.

--

## Links

- Bare: https://rustworkshop.co
- Angles brackets: <https://rustworkshop.co>
- Display text: [rustworkshop.co](https://rustworkshop.co)
---

## Fade-in bullets

- Show second <!-- .element: class="fragment" data-fragment-index="2" -->
- Show first <!-- .element: class="fragment" data-fragment-index="1" -->

----

👇 Fading links in bullets 👇
--

## Fade link bullets

It's tricky to mark this up right, because the html comment applies to the generated html element before/around it, so you have to consider that a link is an element inside a bullet. It's a bit fragile.

- Code  <!-- .element: class="fragment" data-fragment-index="2" --> [github.com/rustworkshop](https://github.com/rustworkshop) <!-- .element: class="fragment" data-fragment-index="2" -->
- <https://rustworkshop.co/> <!-- .element: class="fragment" data-fragment-index="1" -->

**Speaker Notes:**

- Note that it is the html element that the comment refers to, so if you put a link in, that's a different element and it breaks apart the fade so you have to repeat the html comment.
- There also seems to be a bug around showing the first bullet with a link.

---

<!-- .slide: data-auto-animate -->
## Inter-slide auto-animation

From here

---

<!-- .slide: data-auto-animate -->
## Inter-slide auto-animation

From here

To here

----

And also with subslides 👇

--

<!-- .slide: data-auto-animate -->
## Inter-slide auto-animation

To here

Via here

From here

---

<!-- .slide: data-background="#532B34" -->

# Alternate background

1. [RevealJs Markdown Cheatsheet (DevOpsSchool.com)](https://www.devopsschool.com/blog/reveal-js-markdown-cheatsheet-complete-guide/)
2. The text magically switches to light when the background is detected as "dark".
