---
color: "orange"
date: 2025-01-24T01:35:27-05:00
draft: false
title: MiniTools
description: A Minecraft plugin with various tools
cover: mt-commands.png
showFullContent: false
createDate: august 2022
sources: https://github.com/Jiogo18/MiniTools-Plugin
website:
tags:
- Minecraft
- Plugin
- Java
- ObeProd
- Tool
- 2022
- 2023
---

## Highlights

{{< project >}}

## Description

A Minecraft (Spigot/Paper) plugin with various tools for ObeProd's events and to assist in plugin development.

This project offers tools such as:
- Shared inventory
- Customizable give command
  - Give custom items (display name, custom model data, enchantments)
  - Give effects
  - Execute commands
- Entity manipulations
  - Movement (speed, flight, gravity)
  - Visibility (hidden from specific players, vanish, nametag)
- Customizable aliases
- Execution of the above commands by any entity, thanks to Brigadier's `/execute`!

By default, commands are only available to admins.

## Context

MiniTools was made alongside [CamHead](../camhead/)'s development
in order to experiment with gravity, vanish, and hidden properties.

It was also a way to experiment with [CommandAPI](https://github.com/CommandAPI/CommandAPI), a powerful API for Brigadier.

Then, the project has been cleaned up and repurposed for use during ObeProd's FortBoyard events.

## Overview

| MiniTools Commands |
| :----------------: |
{{<image
	src="mt-commands.png"
	alt=""
	width=200
	position="center"
>}}
{{<image
	src="mt-execute-gravity.png"
	alt=""
	width=600
	position="center"
>}}

| MiniTools Menu | Player specific properties |
| :------------: | :------------------------: |
{{<image
	src="MiniTools-Menu.png"
	alt="An inventory with MiniTools actions: A chest for inventory, A player head for player menu, an end portal frame for global wraps, a door for personnal homes"
	width=400
	position="center"
>}} | {{<image
	src="MiniTools-Player-Menu.png"
	alt="An inventory with MiniTools actions. Each item corresponds to a specific property that can be toggled."
	width=400
	position="center"
>}}
