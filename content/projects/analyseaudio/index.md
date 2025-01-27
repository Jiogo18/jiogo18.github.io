---
color: purple
date: 2025-01-26T23:21:58-05:00
draft: false
title: AnalyseAudio
description: AnalyseAudio is a realtime spectrogram viewer made in two weeks and written in C# with the framework WinUI 3.
cover: spectrogram-small.webp
showFullContent: false
createDate: june 2022
sources: https://github.com/Jiogo18/AnalyseAudio
website:
tags:
- CSharp
- WinUI
- Audio
- 2022
---

## Highlights

{{< project >}}

## Description

AnalyseAudio is a realtime spectrogram viewer written in C# with the recent framework for Windows, WinUI 3.

The core package used to draw the spectrogram is [Spectrogram by Scott W Harden](https://github.com/swharden/Spectrogram).
AnalyseAudio is simply an interface to create a bridge from an audio source and to configure a SpectrogramGenerator.
The project would have been different without this package.

The application is in four parts:
- Capture: Select a source type (Microphone, Speaker, WASAPI), a source, a sample rate and a number of bits per sample. Button to start and stop the generator.
- Spectrogram: View the spectrogram and configure it with FFT and display settings
- Piano: Do music with sin/triangle/square/sawtooth waves and white/pink noises.
- Console: See logs of the application (used for development)

Comparison with Audacity:
| Feature              | AnalyseAudio                      | Audacity                                  |
| -------------------- | --------------------------------- | ----------------------------------------- |
| Realtime             | Yes (about 100 ms of delay)       | Render every 5 seconds                    |
| Spectrogram anchor   | Fixed on the right, or rolling    | Jump to the record cursor                 |
| Keep previous values | No, memory usage is constant      | Yes, requires more memory over time       |
| FFT config changes   | Clear the spectrogram             | Spectrogram updated with previous samples |
| Audio Sources        | Live only (In/Out device, WASAPI) | Devices, streams, files, ...              |
| Channels             | Only 1 channel supported          | One spectrogram per channel               |
| Other benefits       | Independent window, lightway      | More tools and configurations             |

The application is translated in English and French.

## Context

AnalyseAudio was a project of 4CI02, Projet scientifique, made in two weeks.

The project had to be C++ or C#.
I chose C# to take advantage of the easy configuration of audio devices, especially with WASAPI.
I also chose C# because of WinUI 3, the latest and most interesting Microsoft framework at the time of the project.

## Overview

| 1. Select a capture device (Microphone, Speaker, WASAPI) and start the generator |
| -------------------------------------------------------------------------------- |
{{<image
	src="capture.webp"
	alt="Capture page - Two combobox to select the device type and the device, three spinbox to configure the sample rate, channels number and bits per sample. A button to start the generator."
	width=800
	position="center"
>}}

| 2. Configure the spectrogram |
| ---------------------------- |
{{<image
	src="spectrogram-fractions-jv.webp"
	alt="Spectrogram page - The spectrogram of a song. A scale on the right displays the frequencies. Current colormap is Viridis. Song used: Fractions by Juniper Vale, I the Ai Remix"
	width=800
	position="center"
>}}

| 3. Try different notes and wave types and watch the result with the standalone spectrogram |
| ------------------------------------------------------------------------------------------ |
{{<image
	src="piano-sawtooth.webp"
	alt="Piano page - The spectrogram is visible in the uper-left corner as a standalone window. The spectrogram shows that the notes from C 261.63	Hz to C 523.25 Hz (do to do) where played with the wave type Sawtooth. The note do at 523.25 Hz is still pressed. Colormap is Turbo."
	width=800
	position="center"
>}}
