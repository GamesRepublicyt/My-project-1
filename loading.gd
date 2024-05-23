extends Control

@onready var progressbar = $ProgressBar

var progress = []
var progress_status = 0

func _ready():
	ResourceLoader.load_threaded_request(Load.load_scene)
	
func _physics_process(delta):
	
	progress_status = ResourceLoader.load_threaded_get_status(Load.load_scene,progress)
	
	progressbar.value = int(progress[0] * 100)
	
	if progress_status == ResourceLoader.THREAD_LOAD_LOADED:
		var newscene = ResourceLoader.load_threaded_get(Load.load_scene)
		get_tree().change_scene_to_packed(newscene)















