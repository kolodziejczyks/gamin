class_name Settler
extends Node2D

@export var nickname = 'cipek'

signal settler_ready(settler: Settler)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("settlers")
	emit_signal("settler_ready", self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
