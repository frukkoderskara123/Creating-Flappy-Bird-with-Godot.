extends Area2D

@export var speed: float = 150

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

@onready var audio_stream_player_2d_2: AudioStreamPlayer2D = $AudioStreamPlayer2D_2


@onready var timer: Timer = $Timer

func _process(delta: float) -> void:
	# Boruyu her karede sola doğru kaydır
	position.x -= speed * delta
	
	# Boru ekranın solundan tamamen çıktığında sahneden sil
	if position.x < -600:
		queue_free()


	


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")


func _on_body_entered(body: Node2D) -> void:
	
	if body.name == "Player" :
		body.set_physics_process(false)
		get_tree().call_group("Borular", "dur")
		get_parent().get_node("PipeTimer").stop()
		get_parent().get_node("Parallax2D").autoscroll = Vector2(0, 0)
		audio_stream_player_2d.play()
		
		
	timer.start()
	
func dur() -> void :
	set_process(false)
	


func _on_area_2d_body_entered2(body: Node2D) -> void:
	if body.name == "Player" :
		audio_stream_player_2d_2.play()
		Global.skor += 1
		print(Global.skor)
		get_parent().get_node("SkorArayuzu").skoru_ciz()
		
		
		
		
