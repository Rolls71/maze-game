extends Node2D

var min_distance = 5
var max_distance = 20
var sprite = preload("res://dot.tscn")

var count = 100		
		
func _draw():
	var rng = RandomNumberGenerator.new()
	
	var x_up = rng.randi_range(min_distance, max_distance)
	var x_down = 0
	var y_up = rng.randi_range(min_distance, max_distance)
	var y_down = 0
	
	var x_vals = [x_down, x_up]
	var y_vals = [y_down, y_up]
	
	for c in range(count):
		x_up += rng.randi_range(min_distance, max_distance)
		#x_down -= rng.randi_range(min_distance, max_distance)
		y_up += rng.randi_range(min_distance, max_distance)
		#y_down -= rng.randi_range(min_distance, max_distance)
		
		x_vals.append(x_up)
		#x_vals.append(x_down)
		y_vals.append(y_up)
		#y_vals.append(y_down)
		
	for i in range(len(x_vals)-1):
		for j in range(len(x_vals)-1):
			match rng.randi()%3:
				0:
					draw_line(Vector2(x_vals[i], y_vals[j]), Vector2(x_vals[i+1], y_vals[j]), Color.GREEN, 1)
					draw_line(Vector2(x_vals[i], y_vals[j]), Vector2(x_vals[i], y_vals[j+1]), Color.GREEN, 1)
				1:
					draw_line(Vector2(x_vals[i], y_vals[j]), Vector2(x_vals[i], y_vals[j+1]), Color.GREEN, 1)
				2:
					draw_line(Vector2(x_vals[i], y_vals[j]), Vector2(x_vals[i+1], y_vals[j]), Color.GREEN, 1)
