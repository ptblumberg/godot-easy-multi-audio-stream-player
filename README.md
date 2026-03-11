# Godot Easy Multi Audio Stream Player

Adds new EasyMultiAudioStreamPlayer nodes that allow you to call a specific audio file with .play("Filename"). Defaults to AudioStreamRandomizer type for easy loading of assets. Using a float parameter will start the audio playing at that time, and no parameters will default to the AudioStream type default behavior.
Ideal for characters that need to produce a variety of sounds depending on their in-game state, such as jumping, idle, hurt, etc..

## Installation
Drag the easy_multi_audio_stream folder into your Godot plugins folder, then enable in Project Settings.

### Example Syntax:
EasyMultiAudioStreamPlayer.play("AudioFileName")
