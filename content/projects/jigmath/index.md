---
color: yellow
date: 2025-01-23T00:26:05-05:00
draft: false
title: JigMath
description: A real-time equation parser and solver with syntax highlighting capabilities
showFullContent: false
createDate: january 2022
sources: https://github.com/Jiogo18/JigMath
website: https://jiogo18.github.io/JigMath/
tags:
- JavaScript
- Web
- Maths
- Robotek
- 2022
---

## Highlights

{{< project >}}

## Description

JigMath is a real-time equation parser and solver for the web with syntax highlighting capabilities.

Inputs are coordinates, output is a color.

Steps:
1. The user writes his mathematical expression in the textarea.
2. The input is parsed, mainly with regular expressions.
3. The same input is drawn above the textarea to add syntax highlighting and to underline any errors and warnings (unknown function or variable, bad symbol...).
4. The function is simplified when possible (`4*6*x` becomes `24*x`).
5. The function is called for each value of the predefined variables (e.g. `x` and `y`).

## Context

This tool was made for the [LED-Cube project of Robotek](https://github.com/Robotek-Orleans/Led-Cube).
And more specifically, to [create animations from a function with 4 dimensions](https://jiogo18.github.io/LED-Cube/WEB/animation/from_image/).

Creating animations with hundreds of 512-color frames is tedious.
With this equation parser, we were able to generate animations in seconds.

About half of the animations [here](https://jiogo18.github.io/LED-Cube/WEB/animation/open/) were generated using a formula.

## Overview

| Blurred sinusoid |
| :------------------: |
{{<image
	src="sin-blurred-equation.webp"
	alt="lumiere(#FF0000,exp(-abs(cos(x)-y)))"
	width=400
	position="center"
>}}
{{<image
	src="sin-blurred-2d.png"
	alt="b"
	width=400
	position="center"
>}}

| Color wheel |
| :------------------: |
{{<image
	src="chroma-equation.webp"
	alt="huerotate(#FF00000,angle_complexe(y,x))"
	width=400
	position="center"
>}}
{{<image
	src="chroma-2d.png"
	alt="A RGB color wheel on a rectangular pixelated canvas"
	width=400
	position="center"
>}}

| Color wheel on LED-Cube |
| :------------------: |
Credits to Robotek
{{<image
	src="chroma-3d.png"
	alt="A RGB color wheel on the LED-Cube viewer. Only the two front layers of the LED-Cube are colored."
	width=400
	position="center"
>}}
