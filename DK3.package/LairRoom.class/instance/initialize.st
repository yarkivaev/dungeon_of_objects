as yet unclassified
initialize
	super initialize.
	
	type := 'Lair'.
	hp := 70.
	size := 1.
	price := 500.
	time := 30.
	
	morph := (Sprite new setForm: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Lair.png' x: 300 y: 300 width: size * 16 height: size * 16).
		
	maxCreatures := 1.
	
	
	