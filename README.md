# element-skeleton

<link rel="stylesheet" href="element-skeleton.min.css"/>

`element-skeleton` serves the same purpose as a loading spinner, only with more 
customization. The purpose of this library is to provide a simple, pulsating style 
to any empty DOM element - indicating that content is loading. Once content is
populated to that element, the skeleton will go away.

<hr>

```html
<h3 element-skeleton>Will not show a skeleton</h3>
<h3 element-skeleton></h3>
```
<h3 element-skeleton>Will not show a skeleton</h3>
<h3 element-skeleton></h3>
<hr>

This library is intended to be extremely light-weight, and so there are only a 
few basic classes provided to give a few general shapes you might need to 
serve as a styling base. 

<br><br>


# Installing

A regular `<link>` stylesheet will work for most applications.

```html
<link rel="stylesheet" href="/path/to/element-skeleton.min.css"/>

<!-- Or if you want the full blown formatting for some reason... -->
<link rel="stylesheet" href="/path/to/element-skeleton.css"/>
```

If you need to include `element-skeleton` in a Web Component, Polymer Element, 
or template, use the following. (Note the `.html` instead of `.css` in the filename)

```html
<link rel="import" href="/path/to/element-skeleton.html">
...
<dom-module id="your-cool-web-component">
  <template>
    <style include="element-skeleton"></style>
...
```

<br><br>



# Out-of-the-box Classes

Use the following classes in combination with your own CSS to size and shape 
things to you need.

<hr>

```html
<div element-skeleton></div> <!-- default -->
<div element-skeleton class="box"></div>
<div element-skeleton class="circle"></div>
<div element-skeleton class="vertical-line"></div>
```
<div element-skeleton></div><br/>
<div element-skeleton class="box"></div><br/>
<div element-skeleton class="circle"></div><br/>
<div element-skeleton class="vertical-line"></div>
<hr>
<br><br>

# Use DOM Elements to size things

`element-skeleton` uses `1em` for the height size, this way it matches whatever
element you put it on.

<hr>

```html
<h1 element-skeleton></h1>
<h2 element-skeleton></h2>
<h3 element-skeleton></h3>
<h4 element-skeleton></h4>
<h5 element-skeleton></h5>
<h6 element-skeleton></h6>
<p element-skeleton></p>
```
<h1 element-skeleton></h1>
<h2 element-skeleton></h2>
<h3 element-skeleton></h3>
<h4 element-skeleton></h4>
<h5 element-skeleton></h5>
<h6 element-skeleton></h6>
<p element-skeleton></p>
<hr>






<br><br>

# Changing Colors

Color can be changed by changing the background like in the example. Unfortunately changing 
the color often discards the `background-size` property, so you have to restate
it. By default we reccomend `background-size: 300% 300%;`.

<hr>

```html
<style>
  *[element-skeleton]:empty.red {
    background: linear-gradient(130deg, red, white);
    background-size: 300% 300%;
  }
</style>
<h3 element-skeleton class="red"></h3>
```
<style>
  *[element-skeleton]:empty.red {
    background: linear-gradient(130deg, red, white);
    background-size: 300% 300%;
  }
</style>
<h3 element-skeleton class="red"></h3>
<hr>