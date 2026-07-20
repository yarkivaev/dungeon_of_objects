as yet unclassified
initialize
	super initialize.
	
	type := 'Incubator'.
	hp := 100.
	size := 2.
	time := 90.
	price := 1000.
	
	morph := (Animation new setFrames: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Incubator' frameDuration: 0.1 x: 200 y: 200 width: size * 16 height: size * 16).
	
	checkDelay := 15.
	foodPrice := 25.
	gold := 50.
	timeCounter := 0.
	foodPerPayday := 15.
	
	