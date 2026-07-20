as yet unclassified
initialize
	super initialize.
	
	type := 'Treasury'.
	price := 1500.
	time := 60.
	hp := 150.
	size := 2.
	
	morph := (Sprite new setForm: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Treasury.png' x: 300 y: 300 width: size * 16 height: size * 16).