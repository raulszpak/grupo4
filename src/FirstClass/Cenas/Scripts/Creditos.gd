extends Node2D

var hover = 0

func _ready(): #botando traduções
	if Global.lingua == "eng":
		$Dificuldade.text = "Difficulty"
		$ldfacil.text = "Easy"
		$lddificil.text = "Hard"
		$ldmedio.text = "Medium"
	
	if Global.lingua == "esp":
		$Dificuldade.text = "Dificultad"
		$ldmedio.text = "Normal"

#função de efeito sonoro
func som_hover():
	if hover == 0:
		$SomHover.play()



func _on_BotaoVoltar_pressed():
	get_tree().change_scene("res://Cenas/TelaGameOver.tscn")
