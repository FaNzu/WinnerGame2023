extends Node

var Dialogue: int = 0
var rng = RandomNumberGenerator.new()
func DialogueAmount(high):
	rng.randomize()
	Dialogue = rng.randi_range(1, high)
	
var GoalsReached: int = 0
var LoopIteration: int = 0
var LoopEnded: bool = false
var Coin: int = 0

var Ciggarettes: bool = false
var HanneLeaves: bool = false
var BossPicture: bool = false
var BossPictureFirst: bool = true

var OleRequest: bool = false
var OlePensioned: bool = false
var OleFirst: bool = true
var OleLeaves: bool = false

var LeifFirst: bool = true
var LeifRequest: bool = false
var AironditionFixed: bool = false

var RalfSabotage: bool = true
var RalfFirst: bool = true
var RalfDiscovered: bool = false
var RalfDiscoveredUpdateQuest: bool = false
var CameraExists: bool = true
var Camera: bool = false
var RalfFotoed: bool = false
var RalfFotoedFirst: bool = false

var JanFirst: bool = true
var OleQuest: int = 0
var LeifQuest: int = 0
