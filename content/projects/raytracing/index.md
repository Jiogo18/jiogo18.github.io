---
color: "green"
date: "2025-02-09T22:50:08-05:00"
draft: false
title: RayTracing
description: A 3D engine powered by Ray Tracing on CPU
cover: 2021/2021-04-water/2021-04-06-water.webp
showFullContent: false
createDate: 2020
sources: https://github.com/Jiogo18/RayTracing
website:
tags:
- C++
- Qt
- 3D
- CMake
- Wingdi
- OpenCL
- 2020
- 2021
- 2023
---

## Highlights

{{< project >}}

## Description

A 3D engine written in C++ with the ambition to perform real-time ray tracing on CPU.

Capabilities:
- Transparency
- Glare
- Refraction dependent on the refractive index of the material
- Reflection
- Optimized trigonometry with Taylor polynomials
- Render cubes and half-cubes
- Render exclusively on the CPU
- Multi-threaded
- 100 fps in 150x100 px, 1 fps in 1920x1080 px

In order to simplify computations, the Ray Tracing part only uses one ray per pixel. This is configurable, but requires more compute power.

The textures are from Minecraft 1.15.

This project allowed me to render pictures I still use today.

## Context

When [Minecraft with RTX](https://www.nvidia.com/en-us/geforce/campaigns/minecraft-with-rtx/) (now Minecraft Bedrock Edition) was announced in 2020,
I felt it would be interesting to create a new engine with simple algorithms.

I decided to restrict myself to CPU in the first place to keep the project simple.

This was not the first 3D engine I made:
I started with a simple *sort each face by z-index, then draw the image with a certain matrix transformation* application.
Then, I wrote a BASIC Casio program to display simple shapes on a Graph-35+.

I chose Qt because of its familiarity and the ease with which it allows pixel-by-pixel painting without having to learn Windows-specific events.

Later, I moved the project to CMake and Wingdi in order to try the Windows way of drawing.
Then, I tried OpenCL to utilize the GPU for ray computing, but not actual rendering.
The Qt version is still more mature, though.

## Overview

### 2020

| {{<figure
	src="2020/rgb_L.webp"
	alt="3 cubes in an L shape with faces red, blue and green on the axis X, Y and Z. Logo of the application."
	caption="RGB test on XYZ axis."
	position="center"
>}} | {{<figure
	src="2020/2020-04-21.webp"
	alt="6 cubes with Minecraft textures: two types of wood, one stone, one transparent glass, one green tinted glass, one glowstone."
	position="center" >}} |
| - | - |

### 2021

| **`Mirrors`** | **`Infinite mirrors`** |
| :-------: | :----------------: |
{{<figure
	src="2021/2021-02-mirrors/2021-02-22-mirror2.webp"
	alt="A glowstone in yellow reflects itself in two mirrors. The mirrors are almost facing each other."
	caption="The glowstone is visible by reflection in the two mirrors, and directly."
	position="center"
	width=400rm
>}} | {{<figure
	src="2021/2021-05-inf-mirrors/2021-05-25-mirror2.webp"
	alt="An infinite mirror with stone above and below. The edge of the mirror are repeated almost indefinitely."
	caption="The infinite mirror is limited by the view distance and the walls above and below."
	position="center"
	width=347rm
>}}
| **`Real time refresh`** | **`Logo`** |
{{<figure
	src="2021/2021-03-03-refresh.webp"
	alt="The image is split in two. The right part is the old frame. The left part is the new frame. The camera moved, so the result of the ray tracing is visible by the line sweeping the window from left to right."
	caption="The threads are sweeping the window with new colors."
	position="center"
	width=184rm
>}} | {{<figure
	src="2021/logo-JL-3D.webp"
	alt="A J and L drawn in blocks. The blocks' faces are rendered in RGB and their complementary colors depending on the orientation of the face."
	caption="Logo I sometimes use."
	position="center"
	width=180rm
>}}
| **`Refraction`** | **`Water`** |
{{<figure
	src="2021/2021-03-25-refraction-equ-cartesiennes.webp"
	caption="View from inside a glass at index 1.5."
	width=600rm
>}} | {{<figure
	src="2021/2021-04-water/2021-04-06-water.webp"
	alt="A block of water is in the bottom right corner. It has the effect to add blue filter and diffraction on the objects behind it."
	caption="A block of water with a refractive <br>index of 1.33 illustrates diffraction."
	position="center"
	width=345rm
>}}
| **`Refraction`** | **`Water`** |
{{<video
	src="2021/2021-04-water/2021-04-06-glass.webm"
	caption="Showcase of camera entering glass. The glass acts as a lens. Inside it, the vision is even more deformed. Also, a piece of glowstone creates glare when the camera moves."
	width=400rm
	position="center"
>}} | {{<video
	src="2021/2021-04-water/2021-04-06-water.webm"
	caption="Showcase of camera entering water. The diffraction is changed when the camera moves around it. There is also a reflection of the water in a mirror next to it."
	width=400rm
	position="center"
>}}

### Noise viewer

A friend of mine asked to render 3D Perlin noise. The results are fascinating.

The value of the noise is represented by the color of the block of their transparency.

| **`16x16x16`** |
| :-: |
{{<video
	src="2021/2021-05-noise/16x16x16.webm"
	caption="3D Perlin noise in a 16x16x16 hologram.<br>The cube has a hole where the noise is weaker,<br>and there are white blocks where it is stronger."
	position="center"
>}}
| **`32x32x32`** |
{{<figure
	src="2021/2021-05-noise/32x32x32-combi-freq.webp"
	caption="A mass of blocks representing Perlin noise in 3 dimensions.<br>Values are forming clusters depending on the type of block."
	position="center"
>}}
{{<figure
	src="2021/2021-05-noise/32x32x32-combi-freq-stack.webp"
	caption="A purple mass of Perlin noise in 3 dimensions, looking like 2D Perlin noise."
	position="center"
>}}
| **`64x64x64`** |
{{<figure
	src="2021/2021-05-noise/64x64x64-80s.webp"
	caption="A detailed view of Perlin noise in 3 dimensions, looking like a cave network."
	position="center"
>}}

### Experiments

| {{<figure
	src="2021/fails/2021-03-16-loupe.webp"
	caption="Glass are acting like a weird lens because of a faulty refraction formula."
	width=400rm
	position="center"
>}} | {{<video
	src="2021/fails/2021-04-03-prism.webm"
	caption="Everything is a prism."
	width=400rm
	position="center"
>}} |
| :-: | :-: |
{{<video
	src="2021/fails/2021-03-25-leak.webm"
	caption="The glowstone slab doesn't compute and keep the previous color instead."
	width=400rm
	position="center"
>}} | {{<video
	src="2021/fails/2021-03-25-too-much-light.webm"
	caption="The light from the glowstone is not correctly stored, resulting in poor RGB rendering."
	width=400rm
	position="center"
>}}

### OpenCL

| {{<video
	src="2023/2023-opencl/2023-02-20-rgb.webm"
	caption="RGB space."
	width=400rm
	position="center"
>}} |
| :-: |
{{<video
	src="2023/2023-opencl/2023-02-21-cubes.webm"
	caption="4 cubes of different colors."
	width=400rm
	position="center"
>}}
