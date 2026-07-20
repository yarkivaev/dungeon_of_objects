as yet unclassified
initialize
	super initialize.
	
	type := 'Pit'.
	price := 5000.
	size := 3.
	time := 210.
	hp := 250.
	
	morph := (Sprite new setForm: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/CombatPit.png' x: 300 y: 300 width: size * 16 height: size * 16).
	
	maxCreatures := 2.