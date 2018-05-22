What is css
  language for presentation of documents

how do you add CSS to a document
  link tag

Where is css applied to?
  html elements within the document

How is it applied?
  through css rules

What is a CSS rule?
  selector + declarations


# How to use CSS in a document

Documents on the web are structured through a markup language called HTML (Hypertext Markup Language).
HTML describes the structure of the document. HTML describes what is to be considered a heading, what is to be considered a paragraph, what is a table, what is a list and so on.

This is the basic, or semantic, structure of a document.

But a document also needs to be presented visually in a way that the document author intended. 
For example, headers need to be visually separated from paragraphs, so we know they are headers.
One way to make headers stand out is to make them bigger than the surrounding text and bolder.
Another way could be to make them colored in a different way.

Data in a list needs to be visually separate from the regular text, so we give item list a bullet or organize them sequentially with a number.

This visual presentation is handled by CSS.

CSS is a language that gives instructions to the browser on how to visually style and present a document.

## CSS is a styling language

The styles defined in the CSS file attached to a HTML document give rules on how to present the document. For example, we can specify that all headers of level H1 should be twice the size of the regular text and bolded.
We can also specify that headers of level 2 should be 1.5 size of the regular text and italicized and of a color of blue.
We can specify the font to be rendered for the entire document and its general size.

CSS styles a document through a series of rules that are contained in a file with the .css extension. This file will be linked to the HTML document, so a web browser, when it downloads an HTML document, can also find the location of the CSS file, download it and apply the rules contained in the file to the document.

## How do we add CSS to an HTML document?

The web browser needs to know where the CSS rules and definition are in order to use them to apply them to a document. We let the web browser know where these rules are by adding a link tag in the HTML document. The tag links to the CSS rules saved in a separate file, the CSS style sheet.

Here's how to insert the link tag:

```
<link rel="stylesheet" href="style.css">
```

We insert this tag in the `<head>` tag of the HTML document.

When the browser parses the HTML document, it will find this tag and download the CSS file and applies the rules into it to the document.

# How does the web browser apply the CSS rules to the document?

The web browser reads the the HTML document and creates an internal representation of its structure in memory. This representation is called DOM (Document Object Model).
The DOM is like a tree, with nodes that represent the HTML elements included in the document.

Here's an example of what a DOM structure may look like:

```
html
 |__ head
      |__ link

...

```

All parts of the HTML document are divided into elements by the web browser. These elements are then styled according to the rules specified in the CSS file.

# What are CSS rules?

CSS rules have two main parts, a selector and a series of declaration.
The selector is the HTML element to which the rule applies. The declarations are a combination of properties and values that will be applied to that HTML element.

Here's an example of a rule:

```
h1 {
  color: blue;
  font-size: 2em;
  margin-bottom: 1.4em;
}
```

The selector for this rule is `h1`, this means that the rule applies to all h1 elements.
Within the brackets, we see three lines. Each of this line is a declaration.
The declaration ahs a word, a colon, and nother word and it's terminated by a semicolon.
The first word is the property that we want to affect.

For example, in this declaration:

```
color: blue;
```

we tell the browser that the `color` property should have the value `blue`.
The color property is the color of the text and it should be blue.

In this other declaration:

```
font-weight: bold;
```

we define the font-weight property of the h1 as bold.

By reading these rules, the browser is able to find the element to which the rules apply, via the selectors, and to apply the rules, so it will make the header bold and colored blue.

The result is a styled document that will visually show its structure.


# What does CSS stand for?

The acronym CSS stands for Cascading Style Sheet. We know what style sheet means by now, but what does Cascading mean?

Cascading means that the style sheets applied to a html document, cascade through its children.

This takes us back to the DOM structure of the document.

Take a look at the following HTML snippet. This is an unordered list:

```
<ul>
	<li>First item in the list</li>
	<li>second item</li>
	<li>last item</li>
</ul>
```

The DOM representation of this list will look something like this:

```
ul
  - li
      - First item in the list
  - li
      - second item
  - li
      - last item
```

![Image of DOM](https://s3.amazonaws.com/com.maryandferrari.images/blog/dom1.png)

![Image of DOM](https://s3.amazonaws.com/com.maryandferrari.images/blog/DSCN0012.jpg)

![Image of DOM](https://s3.amazonaws.com/com.maryandferrari.images/blog/DSCN0013.jpg)

We can imagine this structure as having a parent/child relationship.
The <ul> element is the parent element. It has 3 children, the <li> elements.
Each <li> element also has one child, the text inside of it.
So, the child of the first <li> element is the text "First item in the list" and so on.

When we style an element with CSS, the rule will apply to the children of the element we style.
This is what 'cascading' means. It's like water cascading down.

So, if we style the <ul> element with an italic font, like this:

```
ul {
  font-style: italic;
}
```

all its children will inherit this style and will also have an italic font style.

# Summary

In summary: CSS is a language that is used to style html documents so they are more visually appealing.
The way CSS is used is it's linked to an HTML document and the browser uses it to style that document.
The browser interprets the document into its own representation called DOM.
The DOM has a tree structure with nodes and branches.
Nodes are the html elements and branches represent their children.
The browser looks at the CSS file to determine which elements need to be styled. It does this by looking at the selectors in the CSS file. It then applies the rules specified by the selector.
Rules describe how a specific property in the html element needs to be styled, by using the property name and specifying the value to assign to this property.
