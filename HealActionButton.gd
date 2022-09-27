extends "res://ActionButton.gd"

func _on_pressed():
	var playerStats = BattleUnits.PlayerStats
	
	if playerStats != null and playerStats.mp >= 8 and playerStats.hp != playerStats.max_hp:
		playerStats.hp += 5
		playerStats.mp -= 8
		playerStats.ap -= 1
