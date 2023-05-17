extends Control
#--------------------------------------------------------------------------------------------------------------#

#--------------------------------------------------------------------------------------------------------------#
func _on_Start_released():
	get_tree().change_scene("res://Scene/World Scene/Test-World.tscn")
#--------------------------------------------------------------------------------------------------------------#

#--------------------------------------------------------------------------------------------------------------#
func _on_Exit_released():
	get_tree().quit()
#--------------------------------------------------------------------------------------------------------------#

#--------------------------------------------------------------------------------------------------------------#


func _on_TextureButton_pressed():
	var nodeSetting = get_node("Settings")
	if nodeSetting.is_visible():
		nodeSetting.hide()
	else:
		nodeSetting.show()
		
	var newPauseState = not get_tree().paused
	get_tree().paused = newPauseState
