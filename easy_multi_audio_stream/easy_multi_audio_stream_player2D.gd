@tool
class_name EasyMultiAudioStreamPlayer2D
extends AudioStreamPlayer2D

var stream_names := {}

func _ready():
	if not stream:
		stream = AudioStreamRandomizer.new()
		
	for i in range(stream.streams_count):
		var s = stream.get_stream(i)
		var file = s.resource_path.get_file()
		stream_names[file] = s
		stream_names[file.get_basename()] = s

func play(arg: Variant = 0.0, arg2: float = 0.0):
	if arg is String:
		var s := stream_names.get(arg)
		if s:
			self.stream = s
			super.play(arg2)
		else:
			push_error("Invalid audio name: " + arg)
		return
	super.play(arg)
