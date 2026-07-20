as yet unclassified
initialize
	super initialize.
	
	ObjectInterface addObject: self.
	
	x := 0.
	y := 0.
	width := 0.
	height := 0.
	form := Form extent: 1@1 depth: 1.
	morph := ImageMorph new.