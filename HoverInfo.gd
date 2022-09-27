extends Control

export (String, MULTILINE) var description = ""

var text = ["Are you ready to die?", "Are you still trying?", "So cute", "Why can't we be friends?", "I wish someday world be a safe place"]

func _on_HoverInfo_mouse_entered():
	var main = get_tree().current_scene
	var textbox = main.find_node("TextBox")
	if textbox != null:
		textbox.text = description

func _on_HoverInfo_mouse_exited():
	var main = get_tree().current_scene
	var textbox = main.find_node("TextBox")
	var text_index = rand_range(1, text.size())
	if textbox != null:
		textbox.text = text[text_index]
