extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn") # Replace with function body.


func _on_sarı_pressed() -> void:
	Global.secilen_kus = "sari"
	print("sarı butona basıldı")


func _on_kırmızı_pressed() -> void:
	Global.secilen_kus = "Kırmızı"


func _on_mavi_pressed() -> void:
	Global.secilen_kus ="Mavi"
