as yet unclassified
setFrames: framesCollection frameDuration: time x: posX y: posY width: aWidth height: aHeight
	frames := framesCollection.
	frameDuration := time.
	x := posX.
	y := posY.
	width := aWidth.
	height := aHeight.
	
	morph := Morph new.
	morph newForm: (Form fromFileNamed: (frames at: 1)).