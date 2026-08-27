extends Area2D

@onready var timer: Timer = $Timer

@onready var pipe_timer: Timer = $"../PipeTimer"

@onready var parallax_2d: Parallax2D = $"../Parallax2D"

@onready var player: CharacterBody2D = $"../Player"

@onready var pipe_scene: Area2D = $"../pipe_scene"

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D



func _on_body_entered(body: Node2D) -> void:
	
	player.set_physics_process(false)
	parallax_2d.autoscroll=Vector2(0,0)
	pipe_timer.stop()
	get_tree().call_group("Borular", "dur")
	audio_stream_player_2d.play()
	
	
	timer.start()
	
	

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
