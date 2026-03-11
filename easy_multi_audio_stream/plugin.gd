@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_custom_type(
		"EasyMultiAudioStreamPlayer",
		"AudioStreamPlayer",
		preload("res://addons/easy_multi_audio_stream/easy_multi_audio_stream_player.gd"),
		preload("res://addons/easy_multi_audio_stream/easymultipleicon.png")
	)
	add_custom_type(
		"EasyMultiAudioStreamPlayer2D",
		"AudioStreamPlayer2D",
		preload("res://addons/easy_multi_audio_stream/easy_multi_audio_stream_player.gd"),
		preload("res://addons/easy_multi_audio_stream/easymultipleicon.png")
	)
	add_custom_type(
		"EasyMultiAudioStreamPlayer3D",
		"AudioStreamPlayer3D",
		preload("res://addons/easy_multi_audio_stream/easy_multi_audio_stream_player.gd"),
		preload("res://addons/easy_multi_audio_stream/easymultipleicon.png")
	)

func _exit_tree() -> void:
	remove_custom_type("EasyMultiAudioStreamPlayer")
