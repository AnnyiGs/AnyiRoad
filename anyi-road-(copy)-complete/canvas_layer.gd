extends Control

@export var next_scene: String
var speed := 1.0

func _ready() -> void:
	# Empieza invisible
	$ColorRect.modulate.a = 0.0

func start(scene_path: String) -> void:
	next_scene = scene_path
	$ColorRect.modulate.a = 0.0
	fade_out()

func fade_out() -> void:
	var tween = create_tween()
	tween.tween_property($ColorRect, "modulate:a", 1.0, 0.5)
	tween.finished.connect(_on_fade_out_finished)

func _on_fade_out_finished() -> void:
	get_tree().change_scene_to_file(next_scene)
