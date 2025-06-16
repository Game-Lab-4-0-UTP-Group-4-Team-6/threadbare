extends Node2D

@onready var bubble = $Character/DialogueBubble
@onready var alarm_player = $AlarmPlayer
@onready var alarm_timer = $AlarmTimer

var lines = [

	"¿Qué sucedió?",
	"¿Dónde estoy?",
	" "
]

var current_line = 0

func _ready():
	show_next_line()
	# Cada 2.5 segundos se cambia la línea (4 líneas en 10 segundos)
	await get_tree().create_timer(2.5).timeout
	show_next_line()
	await get_tree().create_timer(2.5).timeout
	show_next_line()
	await get_tree().create_timer(2.5).timeout
	show_next_line()

func show_next_line():
	if current_line < lines.size():
		bubble.text = lines[current_line]
		current_line += 1
