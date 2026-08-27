extends CharacterBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animated_sprite_2d_2: AnimatedSprite2D = $AnimatedSprite2D2
@onready var animated_sprite_2d_3: AnimatedSprite2D = $AnimatedSprite2D3


const JUMP_VELOCITY = -250

func _ready() -> void:
	if Global.secilen_kus == "sari":
		animated_sprite_2d.show()       # Sarı kuşu görünür yap
		animated_sprite_2d.play("idle") # Sarının animasyonunu oynat
		animated_sprite_2d_2.hide()     # Kırmızı kuşu GİZL
		animated_sprite_2d_3.hide()
		
	elif Global.secilen_kus == "Kırmızı":
		animated_sprite_2d_2.show()       # Kırmızı kuşu görünür yap
		animated_sprite_2d_2.play("idle") # Kırmızının animasyonunu oynat
		animated_sprite_2d.hide()
		animated_sprite_2d_3.hide()
	
	elif Global.secilen_kus == "Mavi":
		animated_sprite_2d_3.show()
		animated_sprite_2d_3.play("idle")
		animated_sprite_2d.hide()
		animated_sprite_2d_2.hide()
		



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") :
		velocity.y = JUMP_VELOCITY
	
	position.y=clamp(position.y,-370,+100)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.


	move_and_slide()
