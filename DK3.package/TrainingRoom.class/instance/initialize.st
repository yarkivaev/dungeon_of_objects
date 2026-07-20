as yet unclassified
initialize
	super initialize.
	
	type := 'Training'.
	size := 3.
	price := 3000.
	time := 120.
	hp := 200.
	
	morph := (Sprite new setForm: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Training.png' x: 300 y: 300 width: size * 16 height: size * 16).
	
	maxCreatures := 2.
	
	trainingTime := 40.
	free := true.