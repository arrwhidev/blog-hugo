+++
title = "Cellular Automata"
description = "A cellular automaton is a grid of cells that is constructed by a series of time based rules based on neighboring cells"
categories = [
    "Cellular Automata",
    "JavaScript",
    "Canvas"
]
date = "2017-04-15"
+++

*Currently listening to: Chrono Trigger OST*

## Intro

A cellular automaton is a grid of cells that is constructed by a series of time based rules based on neighboring cells.

Basically, the state of each cell is determined by the state of the surrounding cells.

Here's an example;

{{< importPartial "posts/cellular-automata/cellular-automata.html" >}}

Looks cool right?!

That is a real JavaScript/Canvas implementation of [Rule 150](http://atlas.wolfram.com/01/01/150/). The code can actually support any of the rules, [take a look](https://github.com/arrwhidev/cellular-automata/blob/master/wolfram.js) - it's pretty flexible! These rules do not change over time. Each cell is computed only once, based on an initial state, working left to right, top to bottom.

The initial state is the first row. In this example every cell is OFF except the middle cell, which is ON.

What about a random initial state?

<a onclick="w.toggleRandom()">Click me to randomize!</a>

## Rules

Each rule comprises of 4 nodes, three across the top, one in the bottom middle.

The bottom cell represents the state of the cell that the rule is describing.

The top row represent the absolute position and state of neighboring cells.

These are the states for Rule 150;

![](http://atlas.wolfram.com/01/01/150/01_01_4_150.gif)

Here's the first rule described;

  - if the cell directly above and to the left is ON
  - and the cell directly above is ON
  - and the cell directly above and to the right is ON
  - then the cell should be ON

And the second rule;

 - if the cell directly above and to the left is ON
 - and the cell directly above is ON
 - and the cell directly above and to the right is OFF
 - then the cell should be OFF

 A function to describe a rule may look something like;

 ```javascript
function rule150(grid, x, y) {
    if (grid[y-1][x-1] === true &&
        grid[y-1][x] === true &&
        grid[y-1][x+1] === false) {
        grid[y][x] = false;
        return;
    }
    // more rules...
}
```

That's it (at a real basic level).

## What's next?

As fascinating as static celluar automaton are, things that move are way cooler!

My next post will cover this. Specifically, Conway's Game of Life.

## Footnote

I discovered this topic by watching [this video](https://youtu.be/bc-fVdbjAwk) on the funfunfunction YouTube channel.

You should definitely subscribe because he produces great content!
