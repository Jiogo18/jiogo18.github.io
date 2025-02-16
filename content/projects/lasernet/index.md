---
color: "red"
date: 2025-02-16T12:00:00-05:00
draft: false
title: LaserNet
description: Communication between two computers using lasers.
cover: raspberrypi4-box-alpha.webp
showFullContent: false
createDate: 2019
sources: https://github.com/Octanne/LaserNet
website: https://files.octanne.eu/files/web/ISN%20LaserNet/
tags:
- C++
- Raspberry Pi
- Web
- 2019
- 2020
---

## Highlights

{{< project >}}

## Description

Learn more on Octanne's [LaserNet](https://files.octanne.eu/files/web/ISN%20LaserNet/) website.

LaserNet is a C++ and web project using a pair of Raspberry Pi, lasers and sensors in order to transmit data between two computers.

This was my first project in pair, and I am proud of what we accomplished.
I took charge of the synchronization and communications of the lasers, while my colleague was setting up a C++ [WebServer](https://github.com/Octanne/WebServer).
We made a web interface to control the state of the Raspberry, and to send messages and commands to control them.

The "Net" part of the project was about transferring internet packets.
We were able to read http packets, however, sending them to act as a seamless bridge is another challenge.
At the end, we simplified the project to only send messages through the Raspberry Pi.

As a result, we were able to establish a communication between the two Raspberry Pi.
The maximum stable transfer rate was a hundred octets|bytes per second.

| Hardware                                                | Price    |
| ------------------------------------------------------- | -------- |
| 2x Raspberry Pi 4 B 2GB                                 | 100.73 € |
| 4x photosensitive sensors (binary with a potentiometer) | 3.34 €   |
| 4x KY-018 photoresistor module (analog)                 | 1.28 €   |
| 4x KY-008 laser transmitter module (650nm 5mW 5V)       | 1.48 €   |
| Total                                                   | 106.83 € |

In parallel, I developed a tool to detect plausible synchronization issues with stream reading.
I present you [SimLine](https://files.octanne.eu/files/web/SimLine/) ([Sources](https://files.octanne.eu/?folder=web%2FSimLine)),
a DNA-sequence alignment inspired tool to compare long strings of data.
Unlike diff tools such as git, this comparison tool works with values on a single line.

## Context

For our ISN (Informatique et Science du Numérique, now equivalent to Numérique et Sciences Informatiques) project,
we asked ourselves of the feasibility of the communication between two computers using lasers.
The idea is to position two Raspberry Pi with a laser and a sensor each, in order to send and receive data.

## Overview

| **`Raspberry Pi Box`** | **`Sensor and laser support`** |
| :--------------------: | :----------------------------: |
{{<figure
	src="raspberrypi4-box-alpha.webp"
	alt="The Raspberry Pi Box with 3 protections for the IO adapters in the front."
	width=1000fr
>}} | {{<figure
	src="laser-sensor-support.webp"
	alt="KY-008 and KY-018 gray plate in Fusion360."
	width=1000fr
>}}
{{<figure
	src="raspberrypi4-box-overview.webp"
	alt="The Raspberry Pi Box in an exploded vue in order to see every element."
	width=1000fr
>}} | {{<figure
	src="laser-sensor-dimension.webp"
	alt="KY-008 and KY-018 with measurements."
	width=1000fr
>}}

| **`Dashboard and console`** |
| :-------------------------: |
...
| **`Stress test received vs sent`** |
{{<figure
	src="stress-test-abc-31-03-20.webp"
	alt="Two block of texts. Right is the data sent (alphabet repeated several times). Left is the received data, starting with the same values, then showing some corruptions due to offset in read operations."
>}}
| **`Errors detected by SimLine`** |
{{<figure
	src="simline-binary-packet.webp"
	alt="Two binary lines with some values red and other green. Green means a different value was registered. Red means a value is missing and a shift occurred."
>}}
