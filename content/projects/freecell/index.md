---
color: yellow
date: 2025-05-03T14:24:44-04:00
draft: false
title: FreeCell
description: FreeCell in Casio BASIC and React.
cover: freecell-cards.png
showFullContent: false
createDate: 2019
sources: https://github.com/Jiogo18/FreeCell
website: https://jiogo18.github.io/FreeCell/
tags:
- 2019
- 2024
- 2025
- Game
- Casio
- React
- JavaScript
- Web
---

## Highlights

{{< project >}}

## Description

FreeCell is a solitaire card game featured in Windows since the 90s.
The rules are simple and most of the deals are solvable, even if it takes countless retry.

Technology used:
- Casio BASIC for the original version [FREECELL.G1M](https://github.com/Jiogo18/FreeCell/blob/main/CASIO/FREECELL.G1M.txt)
- Deno 2
- React 19
- Vite 6
- TypeScript

[Pixel Playing Cards by yaomon](https://yaomon.itch.io/playing-cards)

## Context

After creating a few common games on a Casio calculator
(Tic-tac-toe, Snake, 2x2 Tetris, Tap Taupe and Power 4),
I wanted to create a more complex game.

Since a Casio calculator's screen is only 128x64 binary pixels, displaying 52 cards is no easy task.
Each card has a binary representation: 2 pixels for the family and 4 pixels for the value.
Furthermore, to facilitate development with limited resources, the game state is read on the screen. As such, a pixel in the top right corner indicates if a card is present or not.

Binary representation doesn't make it easy to finish a game. However, if you have an hour, it's entirely possible.

Five years later, I adapted it in vanilla JavaScript to show it without requiring a calculator.
A year later, I remade it with React for a new feature: side-by-side comparison with real cards.

## Overview

| Casio Display | Card Display |
| :-----------: | :----------: |
{{<image
	src="freecell-casio-colored.png"
	alt="b"
	width=200
	position="center"
	style="image-rendering: pixelated;"
>}} | {{<image
	src="freecell-cards.png"
	alt="lumiere(#FF0000,exp(-abs(cos(x)-y)))"
	width=600
	position="center"
>}}
