instance creaction
open

	| window gameMorph |
	
	window := SystemWindow new.
	
	window setLabel: 'Game'.
	

	gameMorph := self new.
	
	window addMorph: gameMorph frame: (0@0 extent: 1@1).
		
	window extent: 800 @ 600.
	
	window openInWorld.
	^ window
