as yet unclassified
initialize
	super initialize.
	
	ObjectInterface addObject: self.
	
	x := 0.
	y := 0.
	width := 0.
	height := 0.
	currentZoom := 1.0.
	form := Form extent: 1@1 depth: 1.
	formPath := ''.
	morph := ImageMorph new.
	morph lock.