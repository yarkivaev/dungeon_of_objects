as yet unclassified
initialize
	super initialize.
	
	type := 'Heart'.
	hp := 1000.
	size := 3.
	
	self image: (Form fromFileNamed: '/home/andrew/DungeonKeepers/dungeon_of_objects/sprites/Rooms/Heart.png').
	