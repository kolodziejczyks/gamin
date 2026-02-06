extends Node

@export var settlers: Array[Settler] = []

func _ready() -> void:
	for settler in get_tree().get_nodes_in_group("settlers"):
		_register_settler(settler)
	
func _register_settler(settler: Settler) -> void:
	settlers.append(settler)
	settler.tree_exited.connect(_on_settler_died.bindv([settler]))

func _on_settler_died(settler: Settler) -> void:
	settlers.erase(settler)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var counter = get_node("SettlerCounter")
	counter.text = String.num(self.settlers.size())
