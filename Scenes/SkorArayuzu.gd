extends CanvasLayer

@onready var h_box_container: HBoxContainer = $HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.skor = 0
	skoru_ciz()
	
func skoru_ciz() -> void :
	for eskiler in h_box_container.get_children() :
		eskiler.queue_free()
	var skor_yazısı = str(Global.skor)
	
	for rakam in skor_yazısı :
		var yeni_resim=TextureRect.new()
		yeni_resim.texture = load("res://Assets/flappy-bird-assets-master/sprites/"+rakam+".png")
		h_box_container.add_child(yeni_resim)
		
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
