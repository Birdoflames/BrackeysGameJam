extends KinematicBody2D

const FRICTION = 500
const ACCELERATION = 500
const MAX_SPEED = 80 
const ROLL_SPEED =125


enum{
	MOVE,
	ROLL,
	ATTACK
}

var state = MOVE
var velocity = Vector2.ZERO
var roll_vector = Vector2.DOWN

onready var animation_player = $AnimationPlayer
onready var animation_tree = $AnimationTree
onready var animation_state = animation_tree.get("parameters/playback")
onready var collision_hitbox = $HitboxPivot/SwordHitbox/CollisionShape2D
onready var sword_hitbox = $HitboxPivot/SwordHitbox

func _ready():
	sword_hitbox.knockback_vector = roll_vector
	animation_tree.active = true
	collision_hitbox.set_deferred("disabled", true)
func _process(delta):
	match state:
		MOVE:
			move_state(delta)
		
		ROLL:
			roll_state(delta)
		
		ATTACK:
			attack_state(delta)

		
func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		roll_vector = input_vector
		sword_hitbox.knockback_vector = input_vector
		animation_tree.set("parameters/Idle/blend_position", input_vector)
		animation_tree.set("parameters/Run/blend_position", input_vector)
		animation_tree.set("parameters/Attack/blend_position", input_vector)
		animation_tree.set("parameters/Roll/blend_position", input_vector)
		animation_state.travel("Run")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animation_state.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	move()
		
	if Input.is_action_just_pressed("attack"):
		state = ATTACK
		
	if Input.is_action_just_pressed("roll"):
		state = ROLL
func roll_state(delta):
	velocity = roll_vector * ROLL_SPEED
	animation_state.travel("Roll")
	move()
		
	
func attack_state(_delta):
	animation_state.travel("Attack")
	velocity = Vector2.ZERO
	
func move():
	velocity = move_and_slide(velocity)
	
func roll_animation_finished():
	state = MOVE
	#velocity = Vector2.ZERO
func attack_anim_finished():
	state = MOVE
