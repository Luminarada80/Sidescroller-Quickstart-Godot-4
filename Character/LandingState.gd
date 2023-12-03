extends State

@export var landing_animation_name : String = "landing"
@export var ground_state : State
@export var idle_animation_name : String = "idle"

func _on_animation_tree_animation_finished(anim_name):
	if(anim_name == landing_animation_name):
		playback.travel(idle_animation_name)
		next_state = ground_state
