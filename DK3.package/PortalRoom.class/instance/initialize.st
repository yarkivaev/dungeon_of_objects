as yet unclassified
initialize
	super initialize.
	
	type := 'Portal'.
	price := 1000.
	time := 120.
	hp := 100.
	size := 2.
	delay := 90.
	timeCounter := 0.
	
	morph := (Animation new setFrames: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Portal' frameDuration: 0.1 x: 200 y: 200 width: size * 16 height: size * 16).
	

	