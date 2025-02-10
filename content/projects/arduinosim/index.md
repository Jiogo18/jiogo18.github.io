---
color: red
date: "2025-01-22T00:31:54-05:00"
draft: false
title: Arduino Sim
description: An Arduino simulator for a line following robot with 1 to 3 sensors.
cover: cover.webp
showFullContent: false
createDate: june 2021
sources: https://github.com/Jiogo18/ArduinoSim
website:
tags:
- C++
- Qt
- Arduino
- 2021
---

## Highlights

{{< project >}}

## Description

An Arduino simulator for a line following robot.
The simulator can be configured to work with 1 to 3 sensors (and more).

Just paste your cpp algorithm (with init and loop methods), it should work as is.

## Context

Based on a robot made for 2CI03 `Techniques et projets de réalisation`.

This simulator allowed us to test our own line follower algorithm without acess to the robot or the board.

## Overview

| **`One sensor`** | **`Two sensors`** |
| :--------------: | :---------------: |
{{<image
	src="one-sensor.png"
	alt="A Robot, represented by an Arduino card with 1 sensor, arrived at the end of a curved line."
	title="Robot with 1 sensor at the finish line"
	width=400
	position="center"
>}} | {{<image
	src="two-sensors.png"
	alt="A Robot, represented by an Arduino card with 2 sensors, is halfway on a curved line, with the starting area on the left and the finish line on the right."
	title="Robot with 2 sensors halfway on the line"
	width=400
	position="center"
>}}

| **`One sensor`** |
| :--------------: |
{{<video
	src="1-sensor.mp4"
	alt="A Robot, represented by an Arduino card with 1 sensor. The starting area is on the left and the finish line is on the right."
	title="Robot with 1 sensor"
	position="center"
	width=758
>}}
| **`Two sensors`** |
{{<video
	src="2-sensors.mp4"
	alt="A Robot, represented by an Arduino card with 2 sensors. The starting area is on the left and the finish line is on the right."
	title="Robot with 2 sensors"
	position="center"
	width=758
>}}
| **`Three sensors`** |
{{<video
	src="3-sensors.mp4"
	alt="A Robot, represented by an Arduino card with 3 sensors. The starting area is on the left and the finish line is on the right."
	title="Robot with 3 sensors"
	position="center"
	width=758
>}}