extends Node2D


# Called when the node enters the scene tree for the first time.
# Hazırladığın Pipe.tscn dosyasını Inspector'dan buraya sürükleyip bırak
@export var pipe_scene: PackedScene

@onready var timer: Timer = $PipeTimer

func _ready() -> void:
	# Timer her bittiğinde bu fonksiyonu çağır
	timer.timeout.connect(_on_pipe_timer_timeout)

func _on_pipe_timer_timeout() -> void:
	if pipe_scene:
		# Borudan yeni bir kopya oluştur
		var new_pipe = pipe_scene.instantiate()
		
		# Borunun çıkacağı X konumu (ekranın sağ dışı)
		new_pipe.position.x = 800  # Ekran genişliğine göre ayarla
		
		# Yüksekliği rastgele belirle (ekran boyutuna göre aralığı değiştir)
		new_pipe.position.y = randf_range(-55, 120)
		
		# Sahneye ekle
		add_child(new_pipe)
